//
//  main.swift
//  bookShelf
//
//  Created by Aleksey Kurepin on 18.11.2020.
//

import Foundation

// Переменные и константы
var currentBookName: String
currentBookName = "Бойцовский клуб"
currentBookName = "Смерть на Ниле"

// Константы
let fightClubBookName: String
fightClubBookName = "Бойцовский клуб"

// Структуры
struct Book {
    let name: String
    let author: String
    let pagesCount: Int
    var isRead: Bool
}

let fightClub: Book = Book(name: "Бойцовский клуб", author: "Чак Паланик", pagesCount: 500, isRead: true)
let deathOnNile = Book(name: "Смерть на Ниле", author: "Агата Кристи", pagesCount: 350, isRead: true)
let finansist = Book(name: "Финансист", author: "Теодор Драйзер", pagesCount: 1000, isRead: false)

let bookShelf: [Book] = [fightClub, deathOnNile, finansist]

// Функции
//print(bookShelf)

func printBook(book: Book) {
    print("\(book.name) от автора \(book.author)")
    
    if book.isRead {
        print("Прочитано мной. Все \(book.pagesCount) страниц")
    } else {
        print("Не прочитана")
    }
}

func printBooksOnShelf() {
    for book in bookShelf {
        printBook(book: book)
    }
}

printBooksOnShelf()

// Классы
class Library {
    let books: [Book] = [fightClub, deathOnNile, finansist]
    
    func getBook(by name: String) -> Book? {
        return books.filter { $0.name == name }.first
    }
}

let library = Library()
let bookFromLibrary = library.getBook(by: "Бойцовский клуб")

print("\nПоиск книги в библиотеке\n")

if let existingBook = bookFromLibrary {
    printBook(book: existingBook)
} else {
    print("Книги нет")
}
