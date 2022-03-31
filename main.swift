//
//  main.swift
//  2l_SidorenkoLyoshka
//
//  Created by Алексей on 31.03.2022.
//

import Foundation

/// 1. функция для определения четного или нечетного числа

let myNumber = 68

func number() {
    if myNumber % 2 == 0 {
        print("Четное число")
    } else {
        print("Нечетное число")
    }
}

number()

print("-------------")


/// 2. Функция для деления без остатка на 3

let myNextNumber = 10

func numberNext() {
    if myNextNumber % 3 == 0 {
        print("Число делится без остатка на 3")
    } else {
        print("Число не делится без остатка на 3")
    }
}

numberNext()


print("-------------")

/// 3. Создать возрастающий массив из 100 чисел

//var myArray = [Int]()
//
//var chislo = -1
//
//for _ in 0 ... 100 {
//    chislo += 1
//    myArray.append(chislo)
//    print(myArray)
//}
//
//print("-------------")

/// 4. Удалить из массива все четные числа

var myArray = [Int]()

var chislo = -1

for _ in 0 ... 100 {
    chislo += 1
    myArray.append(chislo)
}

let neChetnie = myArray.filter { $0 % 2 != 0 }

print(neChetnie)

print("-------------")

let neDelimieNaTri = neChetnie.filter { $0 % 3 != 0 }

print(neDelimieNaTri)

print("-------------")
