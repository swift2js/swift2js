//
//  main.swift
//  swiftjs
//
//  Created by Imanol Fernandez @MortimerGoro on 14/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation;

func test1(){
    var team = ["Javi", "Mortimer", "Karliky", "Gorka", "Carlos", "Pablo"]
    
    
    sort(team) {  $0 > $1 }
    var index:Int = 0;
    
    for name in team {
        index++;
        println("Team member \(index): \(name) charcont \(name.utf16count)" );
    }
    
    println("Total members:" + String(index), "aaa");
}
