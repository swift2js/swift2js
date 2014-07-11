//Type inference for arrays
var colors = ["blue", "red", "green"];
colors += "black";
var custom = "gray";
colors += gray;
colors += ["white", "yellow"];
//Type inference from scoped symbols
var other:[String]?;
other = ["orange", "purple"];
let test = other;
colors += test;
//Type inference for tuples.
var tuple:(karliky:String, javi:Int, mortimer:(String[], freezer:Int[]));
let (a,b,c) = tuple;
let (e,f) = c;

