function parseRuleList(list) {

	var result = [];
	for (var i = 0; i < list.length; ++i) {

		var value = {optional:false, literal:false};
		var node = list[i];
		if (node.className === "optional") {
			node = node.childNodes[0];
			value.optional = true;
		}

		if (node.className === "syntactic-cat") {
			value.literal = false;
			value.title = node.childNodes[0].innerText;
		}
		else if (node.className === "literal") {
			value.literal = true;
			value.title = node.innerText;
		}
		else {
			continue;
		}

		result.push(value);

	}
	return result;
}


function parseSyntaxRule(def) {
	var rule = {};
	rule.left = def.querySelector(".syntax-def-name").innerText;
	rule.alternatives = [];


	var alts = def.querySelectorAll(".alternative");

	if (alts && alts.length > 0) {
		for (var i = 0; i < alts.length; ++i) {
			rule.alternatives.push(parseRuleList(alts[i].childNodes))
		}
	}
	else {

		var children = def.childNodes;
		for (var i = 0; i< children.length; ++i) {
			if (children[i].className === "arrow") {
				children = Array.prototype.slice.call(children, i + 1);
				break;
			}
		}
		rule.alternatives.push(parseRuleList(children));
	}

	return rule;

}

function parseSyntaxGroups(defs) {

	var result = [];

	for (var i = 0; i< defs.length; ++i) {

		var group = defs[i];
		var parsedGroup = {};
		parsedGroup.title = group.querySelector(".syntax-defs-name").innerText;
		parsedGroup.rules = [];

		var rules = group.querySelectorAll(".syntax-def");
		if (!rules || rules.length === 0) {
			continue;
		}

		for (var j = 0; j < rules.length; ++j) {
			parsedGroup.rules.push(parseSyntaxRule(rules[j]));
		}


		result.push(parsedGroup);
	}
	return result;
}

function parseSections() {

	//find the grammar article
	var chapter = document.querySelector(".chapter");

	//find all sections
	var sections = chapter.getElementsByTagName("section");

	var parsedSections = [];

	for (var i = 0; i < sections.length; ++i) {

		var section = sections[i];
		var defs = section.querySelectorAll(".syntax-defs");

		if (!defs || defs.length === 0 ) {
			continue;
		}

		var parsedSection = {};
		parsedSection.title = section.querySelector(".section-name").innerText;
		parsedSection.groups = parseSyntaxGroups(defs);
		parsedSections.push(parsedSection);
	}

	return parsedSections;
}


var expandedOptionals = {};
var nonterminals = [];

function addNonTerminal(value) {
	if (nonterminals.indexOf(value) < 0) {
		nonterminals.push(value);
	}
}

function ruleToBison(rule) {
	var code = "";
	code+= rule.left + ": ";
	addNonTerminal(rule.left);
	var optionalTokensToExpand = [];

	for (var i = 0; i < rule.alternatives.length; ++i) {

		if (i > 0) {
			code+= "\n|";
		}

		var tokens = rule.alternatives[i];
		for (var j = 0; j < tokens.length; ++j) {
			var token = tokens[j];
			code+= " ";
			var title = token.title;
			if (token.optional) {
				title+="-opt";
				optionalTokensToExpand.push(token);
			}
			else if (token.literal) {
				title = "\"" + title + "\"";
			}

			code+= title;
		}

		code+= "\t\t { printf(\"" + rule.left + "(" + i + ")" +  "\\n\"); }";

	}

	//Expand optional tokens once
	for (var j = 0; j < optionalTokensToExpand.length; ++j) {
		var token = optionalTokensToExpand[j];
		if (!expandedOptionals[token.title]) {
			code+= "\n" + token.title + "-opt: ";
			addNonTerminal(token.title + "-opt");
			var title = token.title;
			if (token.literal) {
				title = "\"" + title + "\"";
			}
			code+=  " | " + title;
			code+= "\t\t { printf(\"" + token.title + "-opt" +  "\\n\"); }";

			expandedOptionals[token.title] = token;
		}
	}


	return code;
}

function toBison(sections) {
	var code = "";

	for (var i = 0; i < sections.length; ++i) {
		var section = sections[i];

		code+= "\n/******* " + section.title.toUpperCase() + " *******/\n\n";

		var groups = section.groups;
		for (var j = 0; j < groups.length; ++j) {
			var group = groups[j];

			code+= "\n// " + group.title + "\n\n";

			var rules = group.rules;
			for (var z = 0;  z < rules.length; ++z) {
				var rule = rules[z];
				code+= ruleToBison(rule) + "\n";
			}
		}
	}

	//types for non terminals

	var typesDeclaration = "";
	for (var i = 0; i < nonterminals.length; ++i) {
		typesDeclaration+= "%type <node> " + nonterminals[i] + "\n";
	}

	code = typesDeclaration + code;


	//replace some token names
	code = code.split(String.fromCharCode(173)).join(""); //annoying character...
	code = code.split(";-opt").join("semicolon-opt");
	code = code.split("...-opt").join("tripledot-opt");
	code = code.split("#-opt").join("hash-opt");
	code = code.split("?-opt").join("question-opt");
	code = code.split(",-opt").join("comma-opt");
	code = code.split("-").join("_"); //bison doesn't support - for grammar rules

	return code;
}

var sections = parseSections();
var code = toBison(sections);
console.log(sections);
console.log(code);


