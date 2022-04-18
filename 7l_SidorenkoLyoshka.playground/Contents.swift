import Foundation
import Security


//MARK: - if let
final class Car {
    private var car = ["hyunday": 900000,
                       "KIA": 870000,
                       "VolksWagen": 950000,
                       "Skoda": 990000]
    
    func price(stamp: String) -> Int? {
        return car[stamp]
    }
}

var car = Car()

if let price = car.price(stamp: "Skoda1") {
    print("Цена на данный автомобиль будет составлять \(price)")
} else {
    print("У нас нет такой машины")
}

print("-------------")

//MARK: - throws- функции
/// Отказ, ошибка
enum RejectionError: Error {
    case errorModelName
    case errorQuantity
    case errorMoneyDeposite
    
}
/// Католог авто
struct Catalog {
    
    var price: Int
    var quantity: Int
    var color: String
    var horsePower: Int
    var model: AutomobileModel
}
///Автомобиль
struct AutomobileModel {
    
    let name: String
}

final class HyundaiSalon {
    
    private var automobile = ["Creta": Catalog(price: 1500000, quantity: 3, color: "White", horsePower: 150, model: AutomobileModel(name: "Creta")),
                           "Solaris": Catalog(price: 1100000, quantity: 2, color: "White", horsePower: 123, model: AutomobileModel(name: "Solaris")),
                           "Tucson": Catalog(price: 3200000, quantity: 4, color: "Grey", horsePower: 250, model: AutomobileModel(name: "Tucson")),
                           "Elantra": Catalog(price: 2500000, quantity: 0, color: "Black", horsePower: 199, model: AutomobileModel(name: "Elantra"))
    ]
    /// Денег внесено в салон
    public var moneyDeposite = 0
    
    func salon(catalogName name: String) throws -> AutomobileModel {
        
        guard let car = automobile[name] else { throw RejectionError.errorModelName }
        guard car.quantity > 0 else { throw RejectionError.errorQuantity }
        guard car.price < moneyDeposite else { throw RejectionError.errorMoneyDeposite }
        
        var newCar = car
        newCar.quantity -= 1
        automobile[name] = newCar
        print("Машину \(name) продали")
        
        return newCar.model
    }
}

let myNewAutomobile = HyundaiSalon()

myNewAutomobile.moneyDeposite = 3000000

do {
    let model = try myNewAutomobile.salon(catalogName: "Creta")
    print(model.name)
} catch {
    print(error)
}
