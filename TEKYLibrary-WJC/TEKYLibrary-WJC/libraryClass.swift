//
//  libraryClass.swift
//  TEKYLibrary-WJC
//
//  Created by Will Carty on 10/11/16.
//  Copyright © 2016 Will Carty. All rights reserved.
//

import Foundation
class libraryTK {
    private var done: Bool = false;
    private var currentInput:String = "q";
    private var io = IO()
    var bookSelection = [
        0001:"The Mythical Man-Month by Frederick P, Brooks Jr.",
        0002:"Don't Make Me Think by Steve Krug",
        0003:"Coders at Work by Peter Seibel",
        0004:"The Pragmatic Programmer by Andrew Hunt and David Thomas",
        0005:"Clean Code by Robert C. Martin",
        0006:"Programming Pearls by Jon Bentley",
        0007:"Creacking the Coding Interview by Gayle LaskMann McDowell",
        0008:"Soft Skills by John Sonmez"
    ]
    
       func go(){
        while !done {
            welcomeMenu()
            
        }
    }
    
    func welcomeMenu()-> String{
        io.writeOutput("____________________________")
        io.writeOutput("Welcome To The TEKY Library.")
        io.writeOutput("----------------------------")
        io.writeOutput("This library contains books on programming languages and technology")
        io.writeOutput("Please feel free to browse our selection of technology books")
        io.writeOutput("1. Selection list")
        io.writeOutput("2. Check out a book")
        io.writeOutput("3.Check in a book")
        io.writeOutput("4.Help")
        io.writeOutput("5.Exit Library Program")
        currentInput = io.getInput()
        if currentInput == "1" {
            listSelections()
            
        }else if currentInput == "2" {
            bookList()
            bookCheckout()
        }else if currentInput == "3"{
            bookList()
            bookCheckin()
        }else if currentInput == "4"{
            helpMenu()
        }else if currentInput == "5"{
            exitProgram()
        }else {
            print("Please enter a selection between 1 and 5")
        }
        
        return currentInput
    }
    func listSelections() {
        
        let sortedKeys = bookSelection.keys.sorted()
        
        for key in sortedKeys {
            print("Catalog Number: \(key) Title and Author: \(bookSelection[key] ?? "no title available")")
        }
        io.writeOutput("Please type 1 checkout a book , type 2 to check in a book, type 3 to return to the welcome screen")
        currentInput = io.getInput()
        if currentInput == "1"{
            bookCheckout()
        }else if currentInput == "2"{
            bookCheckin()
        
        }else if currentInput == "3"{
            welcomeMenu()
        
        }
    }
    
    func bookCheckout(){
        let currentDate = Calendar.current
        let dueDate = currentDate.date(byAdding: .day, value: 7, to:Date())
        io.writeOutput("Please enter the number for the title that you would like to check out and hit return")
        currentInput = io.getInput()
            if currentInput == "1"{
            bookSelection[0001] = "Checked out! (The Mythical Man-Month by Frederick P, Brooks Jr.)"
                print("Checked out! You book 'The Mythical Man-Month by Frederick P, Brooks Jr.' is due back: \(dueDate!)")
                io.writeOutput("Please press 1 to return to main menu")
                currentInput = io.getInput()
                if currentInput == "1"{
                    welcomeMenu()
                }
            }else if currentInput == "2"{
            bookSelection[0002] = "Checked out! (Don't Make Me Think by Steve Krug)"
                print("Checked out! You book 'Don't Make Me Think by Steve Krug' is due back: \(dueDate!)")
                io.writeOutput("Please press 1 to return to main menu")
                currentInput = io.getInput()
                if currentInput == "1"{
                    welcomeMenu()
                    }
             }else if currentInput == "3"{
            bookSelection[0003] = "Checked out! (Coders at Work by Peter Seibel)"
                print("Checked out! You book 'Coders at Work by Peter Seibel' is due back: \(dueDate!)")
                io.writeOutput("Please press 1 to return to main menu")
                currentInput = io.getInput()
                if currentInput == "1"{
                    welcomeMenu()
                    }
        }else if currentInput == "4"{
            bookSelection[0004] = "Checked out! (The Pragmatic Programmer by Andrew Hunt and David Thomas)"
                print("Checked out! You book 'The Pragmatic Programmer by Andrew Hunt and David Thomas' is due back: \(dueDate!)")
                io.writeOutput("Please press 1 to return to main menu")
                currentInput = io.getInput()
                if currentInput == "1"{
                    welcomeMenu()
                    }
        }else if currentInput == "5"{
            bookSelection[0005] = "Checked out! (Clean Code by Robert C. Martin)"
                print("Checked out! You book 'Clean Code by Robert C. Martin' is due back: \(dueDate!)")
                io.writeOutput("Please press 1 to return to main menu")
                currentInput = io.getInput()
                if currentInput == "1"{
                    welcomeMenu()
                    }
        }else if currentInput == "6"{
            bookSelection[0006] = "Checked out! (Programming Pearls by Jon Bentley)"
                print("Checked out! You book 'Programming Pearls by Jon Bentley' is due back: \(dueDate!)")
                io.writeOutput("Please press 1 to return to main menu")
                currentInput = io.getInput()
                if currentInput == "1"{
                    welcomeMenu()
                    }
        }else if currentInput == "7"{
            bookSelection[0007] = "Checked out! (Creacking the Coding Interview by Gayle LaskMann McDowell)"
                print("Checked out! You book Cracking the Coding Interview by Gayle LaskMann McDowell is due back: \(dueDate!)")
                io.writeOutput("Please press 1 to return to main menu")
                currentInput = io.getInput()
                if currentInput == "1"{
                    welcomeMenu()
                }
        }else if currentInput == "8"{
            bookSelection[0008] = "Checked out! (Soft Skills by John Sonmez)"
                print("Checked out! You book 'Soft Skills by John Sonmez' is due back: \(dueDate!)")
                io.writeOutput("Please press 1 to return to main menu")
                currentInput = io.getInput()
                if currentInput == "1"{
                    welcomeMenu()


        }else{
            print("You have no selected a vaild option please enther the catalog number of the book you wish to check out.")
        }
        
            
    
    
    
    
    
    }
                    }
    func bookCheckin(){
      
        io.writeOutput("Please enter the number for the title that you would like to check in and hit return")
        currentInput = io.getInput()
        if currentInput == "1"{
            bookSelection[0001] = "The Mythical Man-Month by Frederick P, Brooks Jr."
            bookList()
        }else if currentInput == "2"{
            bookSelection[0002] = "Don't Make Me Think by Steve Krug"
            bookList()
        }else if currentInput == "3"{
            bookSelection[0003] = "Coders at Work by Peter Seibel"
            bookList()
            
        }else if currentInput == "4"{
            bookSelection[0004] = "The Pragmatic Programmer by Andrew Hunt and David Thomas"
            bookList()
            
        }else if currentInput == "5"{
            bookSelection[0005] = "Clean Code by Robert C. Martin"
            bookList()
            
        }else if currentInput == "6"{
            bookSelection[0006] = "Programming Pearls by Jon Bentley"
            bookList()
            
        }else if currentInput == "7"{
            bookSelection[0007] = "Creacking the Coding Interview by Gayle LaskMann McDowell"
            bookList()
            
        }else if currentInput == "8"{
            bookSelection[0008] = "Soft Skills by John Sonmez"
            bookList()
            
        }else{
            print("You have no selected a vaild option please enther the catalog number of the book you wish to check out.")
        bookList()
        }

    }
    func bookList(){
        let sortedKeys = bookSelection.keys.sorted()
        
        for key in sortedKeys {
            print("Catalog Number: \(key) Title and Author: \(bookSelection[key] ?? "no title available")")
                    }

    }
    func helpMenu(){
        io.writeOutput("Welcome to the help menu. To use this program follow the prompts at each step. If there is a technical issue with the program not running please contact the developer at https://github.com/willcarty")
        io.writeOutput("Please type 1 to return to the welcome menu")
        currentInput = io.getInput()
        if currentInput == "1"{
            welcomeMenu()
    }
    }
    func exitProgram(){
        done = true
    }

    }
    


































