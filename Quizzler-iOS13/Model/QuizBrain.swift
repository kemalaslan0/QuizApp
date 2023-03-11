//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Kemal Aslan on 29.01.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
import UIKit
struct QuizBrain {
    let quiz = [ Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin", qImages: UIImage(named: "bilgi1.png")!),
                 Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100", qImages: UIImage(named: "bilgi2.png")!),
                 Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time", qImages: UIImage(named: "bilgi1.png")!),
                 Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau", qImages: UIImage(named: "bilgi3.png")!),
                 Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch", qImages: UIImage(named: "bilgi1.png")!),
                 Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós", qImages: UIImage(named: "bilgi2.png")!),
                 Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange", qImages: UIImage(named: "bilgi1.png")!),
                 Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum", qImages: UIImage(named: "bilgi2.png")!),
                 Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla", qImages: UIImage(named: "bilgi1.png")!),
                 Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia", qImages: UIImage(named: "bilgi2.png")!)


    ]
    func getImages()-> UIImage{
        return quiz[soru].questionImages
    }
    var soru = 0
    var score = 0
    mutating func checkAnswer (_ userAnswer: String) -> Bool {
        if userAnswer == quiz[soru].rightAnswer{
            score = 1 + score
            return true
        }else{
            return false
        }
    }
    func getAnswer() -> [String] {
        return quiz[soru].answers
    }
    func getProgress() -> Float {
     //   var progressBarCounter = Float(soru+1) / Float(quiz.count)
        return Float(soru+1) / Float(quiz.count)
    }
    func getQuestionText() -> String {
        //let acQuestion = quiz[soru].text
        return quiz[soru].text
    }
   mutating func nextQuestion() {
        if soru + 1 < quiz.count {
            soru += 1
            
        } else {
            soru = 0
            score = 0
        }
    }
    func getScore() -> Int {
        return score
        }
        
    }

