//
//  Topic.swift
//  Polls_App
//
//  Created by Nancy Yoder on 10/4/22.
//

import Foundation

public class Topic {
    public var id: Int = 0
    public var name: String = ""
    public var status: Bool = false
    public var isClick: Bool = false

    
    init(id: Int, name: String, status: Bool, isClick: Bool) {
        self.id = id
        self.name = name
        self.status = status
        self.isClick = isClick
    }
    
    public func like() {
        status = true
        isClick = true
        print("in func: like")
        print(status, isClick)
    }
    
    public func dislike() {
        isClick = true
        status = false
        print(status, isClick)
    }
}

var cats = Topic(id: 0, name: "cats", status: false, isClick: false)
var birds = Topic(id: 1, name: "birds", status: false, isClick: false)
var dogs = Topic(id: 2, name: "dogs", status: false, isClick: false)
var mice = Topic(id: 3, name: "mice", status: false, isClick: false)
var moose = Topic(id: 4, name: "moose", status: false, isClick: false)
var goose = Topic(id: 5, name: "goose", status: false, isClick: false)
