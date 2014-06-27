//initialization from tuple
let (javi, mortimer, karliky) = (1,2,3);
//literal tuple
let obj = ("aaa","bbb", "ccc");
//literal named tuple
let obj2 = (a:"aaa", b:"bbb", c:"ccc")
//tuple access
println(obj2.1);
println(obj2.a);
//initialization from expression tuple
let (obj3,obj4,obj5) = obj;

if let (a,b,c) = (true,true,true) {
    println("literal tuple inside if");
}

if let (d,e,f) = obj2 {
    println("expression tuple inside if");
}