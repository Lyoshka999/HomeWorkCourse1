//
//  main.swift
//  3l_SidorenkoLyoshka
//
//  Created by Алексей on 04.04.2022.
//

import Foundation

// MARK: - SportCar

struct SportCar {
    
    var color : String
    var maxSpeed : Int
    var marka : String
    var radiusKolesa : Int
    var godVipuska : Int
    var valumeBag : Int
    
    init(color: String, maxSpeed: Int, marka: String, radiusKolesa: Int, godVipuska: Int, valumeBag: Int) {
        
        self.color = color
        self.maxSpeed = maxSpeed
        self.marka = marka
        self.radiusKolesa = radiusKolesa
        self.godVipuska = godVipuska
        self.valumeBag = valumeBag
    }
}

enum ZapuskDvig : String {
    case zaveden = "Двигатель запущен"
    case nezaveden = "Двигатель не запущен"
}

enum OpenWindow : String {
    case openWindows = "Окна открыты"
    case closedWindows = "Окна закрыты"
}

enum MeshkiVBagazhnike : String {
    case oneBags = "Один мешок лежит в багажнике"
    case twoBags = "Два мешка лежит в багажнике"
    case treeBags = "Три мешка лежит в багажнике"
}

var sportCar = SportCar(color: "Blue", maxSpeed: 387, marka: "Aston Martin", radiusKolesa: 23, godVipuska: 2022, valumeBag: 4000)

print(sportCar)

print(ZapuskDvig.zaveden.rawValue)

print(OpenWindow.closedWindows.rawValue)

print(MeshkiVBagazhnike.twoBags.rawValue)

print("---------------")

var sportCarTwo = sportCar

sportCarTwo.godVipuska = 2017

sportCarTwo.marka = "Ford"

sportCarTwo.maxSpeed = 379

sportCarTwo.valumeBag = 3890

sportCarTwo.radiusKolesa = 19

sportCarTwo.color = "Yellow"

print(sportCarTwo)

print("---------------")

// MARK: - TrunkCar

struct TrunkCar {

    var maxGruzV : Int
    var maxSpeed : Int
    var color : String
    var marka : String
    var godVipuska : Int
    var valumeKuzova : Int
    
    init(maxGruzV: Int, maxSpeed: Int, valumeKuzova: Int, marka: String, color: String, godVipuska: Int) {
        
        self.maxGruzV = maxGruzV
        self.maxSpeed = maxSpeed
        self.valumeKuzova = valumeKuzova
        self.marka = marka
        self.color = color
        self.godVipuska = godVipuska
    }
}

enum Dvigatel : String {
    case zaveden = "Двигатель запущен"
    case nezaveden = "Двигатель не запущен"
}

enum Window : String {
    case openWindows = "Окна открыты"
    case closedWindows = "Окна закрыты"
}

enum Kuzov : String {
    case sandsTwoTonn = "Две тонны песка находится в кузове трака"
    case sandsTreeTonn = "Три тонны песка находится в кузове трака"
    case sandsFourTonn = "Четыре тонны песка находится в кузове трака"
}

var trunkTrack = TrunkCar(maxGruzV: 15000, maxSpeed: 210, valumeKuzova: 12000, marka: "Volvo", color: "Green", godVipuska: 2014)

print(trunkTrack)

print(Dvigatel.nezaveden.rawValue)

print(Window.openWindows.rawValue)

print(Kuzov.sandsFourTonn.rawValue)

print("---------------")

var trunkTrackTwo = trunkTrack

trunkTrackTwo.marka = "Mercedes"

trunkTrackTwo.maxSpeed = 198

trunkTrackTwo.godVipuska = 2016

trunkTrackTwo.color = "Black"

trunkTrackTwo.maxGruzV = 14300

trunkTrackTwo.valumeKuzova = 11700

print(trunkTrackTwo)

print(Kuzov.sandsTwoTonn.rawValue)

print(Dvigatel.zaveden.rawValue)

print(Window.openWindows.rawValue)

print("---------------")

