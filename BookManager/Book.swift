//
//  Book.swift
//  BookManager
//
//  Created by Taewon Lee on 10/30/19.
//  Copyright © 2019 Taewon Lee. All rights reserved.
//

import Foundation

struct Book {
    var name: String?
    var genre: String?
    var author: String?
    
    func bookprint(){
        print("Name: \(name!)")
        print("Gnere: \(genre!)")
        print("Author: \(author!)")
        print("------------------------------")
    }
}
