//
//  WordsModul.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 12.01.2023.
//

import Foundation

struct Words: Identifiable {
    let title: String
    let theme: [String : String]
    let id: Int
   
    
    static func getWords() -> [Words] {
        [
            Words(title: "family", theme: Themes().family, id: 0),
            Words(title: "days of the weee", theme: Themes().daysOfTheWeek, id: 1)
        ]
    }
}

struct Themes {
    let family = [
                "Father": "Отец",
                "Mother": "Мать",
                "Son": "Сын",
                "Daughter": "Дочь"
                 ]
    let daysOfTheWeek = [
                "Monday": "Понедельник",
                "Tuesday": "Вторник",
                "Wednesday": "Среда",
                "Thursday": "Четверг",
                "Friday": "Пятница",
                "Saturday": "Суббота",
                "Sunday": "Воскресенье"
                        ]
}

struct Texts: Identifiable {
    
    let title: String
    let mainText: mainTextEnum
    let id: Int
    
    init(title: String, mainText: mainTextEnum, id: Int) {
        self.title = title
        self.mainText = mainText
        self.id = id
    }
    
    static func getTexts() -> [Texts] {
        [Texts(title: "Armando",mainText: .armando, id: 0),
         Texts(title: "MyHobbie",mainText: .hobbie, id: 1)]
    }
    enum mainTextEnum: String {
        case armando = """
        Hello, I want to tell you about my best friend. His name is Armando, he lives in Milan. He goes to school, and he speaks Spanish. He likes to play football. Armando is a very nice boy, he always helps me with homework. After school, we play football together. Armando likes to play football, and watch films. He has a family. He has parents and sister Monica. Monica is a very good girl. She works in a hospital. She is a nurse. Armando wants to be a doctor.)
        """
        case hobbie = """
        Hi, my name is John and I like to read books. It is my hobby. I like to read detectives, my favourite(любимый) book is Sherlock Holmes by A.С.Doyle. I think that(что) Sherlock Holmes is a very smart(умный) man. Sherlock has a friend who helps him. His name is Dr. John Watson.
        They are a good team. They live in London in Baker-Street. Sherlock has an older brother, his name is Mycroft Holmes and he is also very smart. I want to learn English, because I want to read books in English.
        Every week I go to library(библиотека) and take(взять) one new book.
        Sometimes I go to bookshop and buy new books.
        """
    }
    
}

