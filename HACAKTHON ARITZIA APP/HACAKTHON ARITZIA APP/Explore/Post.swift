//
//  Post.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-14.
//

import Foundation

struct Post: Identifiable {
    
    let id = UUID()
    let keyWords: String
    let image: String
    
    
}

let postsList = [
    Post(keyWords: "the melina™ pant", image: "melina1"),
    Post(keyWords: "sculpt knit squareneck cropped tank", image: "sculpt1"),
    Post(keyWords: "the melina™ pant", image: "melina2"),
    Post(keyWords: "sculpt knit Squareneck Cropped Tank", image: "sculpt2"),
    Post(keyWords: "divinity 7' romper", image: "divinity5"),
    Post(keyWords: "Divinity 7' Romper", image: "divinity6"),
    Post(keyWords: "The Melina™ Pant", image: "melina3"),
    Post(keyWords: "Divinity 7' Romper", image: "divinity7"),
    Post(keyWords: "Divinity 7' Romper", image: "divinity8"),
    Post(keyWords: "The Melina™ Pant", image: "melina5"),
    Post(keyWords: "Divinity 7' Romper", image: "divinity9"),
    Post(keyWords: "Divinity 7' Romper", image: "divinity1"),
    Post(keyWords: "Divinity 7' Romper", image: "divinity2"),
    Post(keyWords: "Divinity 7' Romper", image: "divinity3"),
    Post(keyWords: "Divinity 7' Romper", image: "divinity4"),
    Post(keyWords: "The Melina™ Pant", image: "melina4"),
    Post(keyWords: "Sculpt Knit Squareneck Cropped Tank", image: "sculpt3")]

