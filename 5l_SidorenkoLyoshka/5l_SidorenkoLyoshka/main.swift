//
//  main.swift
//  5l_SidorenkoLyoshka
//
//  Created by Алексей on 08.04.2022.
//

import Foundation

//MARK: - Начало протокола
protocol CarProtocol {
    
    var dvigatel: String { get set }
    
    var window: String { get set }
    
    var speedLimit: Int { get set }
    
    var color: String { get set }
    
    var marka: String { get set }
    
    var categoryPrav: String { get set }
    
    var godVipuska: Int { get set }
    
}

//MARK: - SportCar
final class SportCar: CarProtocol {
    
    var dvigatel: String
    
    var speedLimit: Int
    
    var color: String
    
    var marka: String
    
    var categoryPrav: String
    
    var godVipuska: Int
    
    var window: String
    
    init() {
        
        self.speedLimit = 250
        self.color = "Green"
        self.marka = "Volvo"
        self.categoryPrav = "B"
        self.godVipuska = 2013
        self.window = "Окна открыты"
        self.dvigatel = "Двигатель запущен"
        
    }
    
    init(speedLimit: Int, color: String, marka: String, categoryPrav: String, godVipuska: Int, window: String, dvigatel: String) {
        
        self.speedLimit = speedLimit
        self.color = color
        self.marka = marka
        self.categoryPrav = categoryPrav
        self.godVipuska = godVipuska
        self.window = window
        self.dvigatel = dvigatel
        
    }
    
    func printSportCar() {
        
        print(marka, color, speedLimit, categoryPrav, godVipuska, window, dvigatel)
    }
}
    
var sportCar = SportCar(speedLimit: 234, color: "Blue", marka: "KIA", categoryPrav: "B", godVipuska: 2013, window: "Окна открыты", dvigatel: "Двигатель запущен")
    
sportCar.printSportCar()

print("-------------------")
    
//MARK: - Расширение класса SportCar

extension SportCar {
    
    func openWindows() {
        print("Не май месяц, закрой окна")
    }
}

sportCar.openWindows()

print("-------------------")

//MARK: - TrunkCar

final class TrunkCar : CarProtocol {
    
    var dvigatel: String
    
    var speedLimit: Int
    
    var color: String
    
    var marka: String
    
    var categoryPrav: String
    
    var godVipuska: Int
    
    var window: String
    
    init() {
        
        self.speedLimit = 198
        self.color = "Yellow"
        self.marka = "MAN"
        self.categoryPrav = "CE"
        self.godVipuska = 2010
        self.window = "Окна закрыты"
        self.dvigatel = "Двигатель запущен"
        
    }

    init(speedLimit: Int, color: String, marka: String, categoryPrav: String, godVipuska: Int, window: String, dvigatel: String) {
        
        self.speedLimit = speedLimit
        self.color = color
        self.marka = marka
        self.categoryPrav = categoryPrav
        self.godVipuska = godVipuska
        self.window = window
        self.dvigatel = dvigatel
        
    }
    
    func printTrunkCar() {
        
        print(marka, color, speedLimit, categoryPrav, godVipuska, window, dvigatel)
    }
}

var trunkCar = TrunkCar(speedLimit: 190, color: "White", marka: "Mercedes", categoryPrav: "CE", godVipuska: 2014, window: "Окна закрыты", dvigatel: "Двигатель запущен")

trunkCar.printTrunkCar()

print("-------------------")

//MARK: - Расширение протокола Car

extension CarProtocol {
    // запуск двигателя
    func engineOn() {
        
        print("Двигатель запущен")
    }
    
    func engineOff() {
        
        print("Двигатель заглушен")
    }
}

trunkCar.engineOff()

print("-------------------")
