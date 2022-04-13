//
//  main.swift
//  6l_SidorenkoLyoshka
//
//  Created by Алексей on 13.04.2022.
//

import Foundation

//MARK: - Queue
struct Queue<T> {
    
    var items = [T]()
    //Добавить
    mutating func add(item: T) {
        items.append(item)
    }
    //Опросить
    mutating func poll() -> T {
        return items.removeFirst()
    }
    //просмотреть
    func peek() -> T? {
        return items.first
    }
}

// Очередь интов
var intQueue = Queue<Int>()
intQueue.add(item: 1)
intQueue.add(item: 4)
intQueue.add(item: 8)
intQueue.add(item: 12)
intQueue.add(item: 16)

// верхний
var top = intQueue.peek()!
var first = intQueue.poll()
var second = intQueue.poll()
var third = intQueue.poll()
var fourth = intQueue.poll()
var fifth = intQueue.poll()

print("top is \(top)")
print("first is \(first)")
print("second is \(second)")
print("third is \(third)")
print("forth is \(fourth)")
print("fifth is \(fifth)")

print("-------------")

//MARK: - Функции высшего порядка
let numbers = [first, top, second, third, fourth, fifth]

var numb = numbers.map{ $0 * 10 }

print(numb)

print("-------------")

let evens = [first, top, second, third, fourth, fifth]
let even = evens.filter{ $0.isMultiple(of: 2) }

print(even)

print("-------------")

//MARK: - Subscript
struct Friends {
    
    var myFriendOne = "Maria"
    var myFriendTwo = "Svet"
    var myFriendThree = "Gosha"
    var myFriendFour = "Misha"
    
    subscript(index: Int) -> String {
        get {
            switch index {
            case 0:
                return myFriendOne
            case 1:
                return myFriendTwo
            case 2:
                return myFriendThree
            case 3:
                return myFriendFour
            default:
                return "nil"
            }
        }
    }
}

let friends = Friends()

print(friends[2])

print(friends[123])

print("-------------")
