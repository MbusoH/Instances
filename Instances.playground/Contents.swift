import UIKit

var greeting = "Hello, playground"

class Car: CustomStringConvertible {
    
    var description: String {
        return "\(model)"
    }
    
    var fuelLeveL: Int = 0
    let feulDrop: Int = 1
    var make: String = ""
    var model: String = ""
    var  topup: Double = 0.0
    var mileage: Double = 0.0
    
    
    init(carModel: String, carMake: String, carFuel: Int, carMileage: Double, fillUp: Double) {
        make = carMake
        model = carModel
        fuelLeveL = carFuel
        mileage = carMileage
        topup = fillUp
    }
    
    
    func start() {
        
        if fuelLeveL <= 0 {
            print("Gas tank is empty")
            return
        }
        
        else{
            fuelLeveL -= feulDrop
            
            if fuelLeveL < 5 {
                print("Low fuel")
            }
            
            if topup > 0 {
                fuelLeveL += Int(topup.rounded(.toNearestOrAwayFromZero))
                print("Topped up fuel with \(topup) new level is \(fuelLeveL)")
            }
            
            if mileage > 0 {
                mileage *= 10
                
                let milesTraveled = Int(mileage.rounded(.toNearestOrAwayFromZero))
                for mile in 0...milesTraveled {
                    print(mile)
                    if mile >= 100 && (mile % 100 == 0){
                        print("Car due for service at \(mile)")
                    }
                }
            }
        }
        
    }
}

var M6 = Car(carModel: "M6", carMake: "BMW", carFuel: 15, carMileage: 20, fillUp: 5)
var CyberTruck = Car(carModel: "Utility Car", carMake: "Tesla", carFuel: 0, carMileage: 100, fillUp: 0)


M6.start()
CyberTruck.start()

var fleet = [M6,CyberTruck]

