//
//  loop-statements.swift
//  swift2js
//
//  Created by Carlos hernandez gomez on 25/06/14 - @k4rliky.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

func executeTest(total:Int,index: Int) -> Int {
    
    while total > index {
        index++;
        index++;
        index++;
        index--;
        break;
    }
    
    while true {
        if index > 6 {
            break;
        }else{
            index++;
        }
    }

    return index;
}

executeTest(10,0);