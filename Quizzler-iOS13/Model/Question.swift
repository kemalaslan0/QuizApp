//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Kemal Aslan on 29.01.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
import UIKit
struct Question {
    let text: String
    let answers: [String]
    let rightAnswer : String
    let questionImages: UIImage
    init(q: String, a: [String], correctAnswer: String, qImages: UIImage) {
        text = q
        answers = a
        rightAnswer = correctAnswer
        questionImages = qImages
    }
}
