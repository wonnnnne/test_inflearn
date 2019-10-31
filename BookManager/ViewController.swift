//
//  ViewController.swift
//  BookManager
//
//  Created by Taewon Lee on 10/30/19.
//  Copyright © 2019 Taewon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBookManager = BookManager()
    
    @IBOutlet weak var outPutTextView: UITextView!
    
    @IBOutlet weak var titleOfBook: UITextField!
    
    @IBOutlet weak var authorOfBook: UITextField!
    
    @IBOutlet weak var genreOfBook: UITextField!
    
    @IBOutlet var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "햄릿", genre: "비극", author: "세익스피어")
        let book2 = Book(name: "누구", genre: "전쟁", author: "헤밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실", author: "톨스토이")

        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)


//        if let searchResult = myBookManager.searchBook(name: "햄릿"){
//            print("\(searchResult) 를 찾았습니다")
//        }else{
//            print("찾으시는 책이 없습니다")
//        }
        
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func showAllBooksAction(_ sender: Any) {
        outPutTextView.text = myBookManager.showAllBooks()
    }
    
    @IBAction func registerBook(_ sender: Any) {
        var bookTemp = Book()
        bookTemp.name = titleOfBook.text!
        bookTemp.author = authorOfBook.text!
        bookTemp.genre = genreOfBook.text!
        
        myBookManager.registerBook(bookObject: bookTemp)
        outPutTextView.text = "\"\(bookTemp.name!)\" has been registered"
        countLabel.text = "\(myBookManager.countBooks())"

        
    }
    
    
    @IBAction func searchBook(_ sender: Any) {
        let resultBook = myBookManager.searchBook(name: titleOfBook.text!)
        if resultBook != nil{
            outPutTextView.text = resultBook
        }else{
            outPutTextView.text = "There is no book that you search"
        }
    }
    

    @IBAction func removeBook(_ sender: Any) {
        
        myBookManager.removeBook(name: titleOfBook.text!)
        outPutTextView.text = "\"\(titleOfBook.text!)\"has been deleted"
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
}

