//
//  main.swift
//  4l_SidorenkoLyoshka
//
//  Created by Алексей on 06.04.2022.
//

import Foundation

// MARK: - TypeCar and power

enum ZapuskDvig : String {
    case zaveden = "Двигатель запущен"
    case nezaveden = "Двигатель не запущен"
}

enum OpenWindow : String {
    case openWindows = "Окна открыты"
    case closedWindows = "Окна закрыты"
}

// MARK: - Класс Сar

class Car {
    
    var speedLimit : Int
    var color : String
    var marka : String
    var categoryPrav : String
    var godVipuska : Int
    
    init() {
        
        self.speedLimit = 250
        self.color = "Green"
        self.marka = "Volvo"
        self.categoryPrav = "B"
        self.godVipuska = 2013
        
    }
    
    init(speedLimit: Int, color: String, marka: String, categoryPrav: String, godVipuska: Int) {
        
        self.speedLimit = speedLimit
        self.color = color
        self.marka = marka
        self.categoryPrav = categoryPrav
        self.godVipuska = godVipuska
        
    }
    
    func printCar() {
        
        print(marka, color, speedLimit, categoryPrav, godVipuska)
    }
}
    
var carsOne = Car()

carsOne.printCar()

print(ZapuskDvig.zaveden.rawValue)

print(OpenWindow.openWindows.rawValue)

print("--------------------")


// MARK: - Класс SportCar

print("SportCar")

final class SportCar: Car {
    
    var sportPaket : String
    
    init(sportPaket: String) {
        
        self.sportPaket = sportPaket
        super.init(speedLimit: 340, color: "Yellow", marka: "Mazerratti", categoryPrav: "B", godVipuska: 2020)
    }
    
    func printSportCar() {
        
        print(marka, color, speedLimit, categoryPrav, godVipuska, sportPaket)
    }
}

var sportCar = SportCar(sportPaket: "SportPaket-Установлен")

sportCar.printSportCar()

print(ZapuskDvig.nezaveden.rawValue)

print(OpenWindow.openWindows.rawValue)

print("--------------------")


// MARK: - Класс TrunkCar

print("TrunkCar")

final class TrunkCar: Car {
    
    var pricep : String
    
    init(pricep : String) {
        
        self.pricep = pricep
        super.init(speedLimit: 213, color: "White", marka: "MAN", categoryPrav: "CE", godVipuska: 2019)
    }
    
    func printTrunkCar() {
        
        print(marka, color, speedLimit, categoryPrav, godVipuska, pricep)
    }
    
}
    
var trunkCar = TrunkCar(pricep: "Прицеп-установлен")

trunkCar.printTrunkCar()

print(ZapuskDvig.zaveden.rawValue)

print(OpenWindow.closedWindows.rawValue)

print("--------------------")
