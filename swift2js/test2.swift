func mortimer(let yehaaa javi:String,karliky:Int) -> Dictionary<String,Int > {
    
    var index = karliky, values = ["Maldini", "Nesta", "Cannavaro", javi];
    index++
    index+=1
    index--
    --index
    let test;
    test = index + 1 * (1 - (index++ * 4))
    
    if index > 2 {
        return [:]
    }
    else if index == 1 {
        return ["Higuita":80, "Buffon":90, "Chilavert":80]
    }
    
    var counter = 0;
    while counter < 10 {
        counter++;
    }
    
    return index < 0 ? [:] : ["Puskas":95, "Romario":95, "Torres":10]
}

mortimer(yehaaa:"trololo", 2);