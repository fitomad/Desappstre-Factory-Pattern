import Foundation
import CoreLocation

public struct AirRover
{
    ///
    public var altitude: Double
    
    ///
    public private(set) var name: String
    ///
    public private(set) var batteryLevel: Int
    ///
    public private(set) var speed: Double

    /**

    */
    public func takeLanding() -> Void
    {
        print("En tierra")
    }

    /**
        Altura mínima a la que debe volar el Rover para no chocar con ningún
        accidente geográfico.
    */
    private func checkMinimunAltitude(from origin: CLLocation, to destination: CLLocation) -> Double
    {
        // Parece que vamos a sobrevolar el Monte Olimpo
        return 22_500.0
    }

}

extension AirRover: Rover
{
    /**
    
    */
    public init(named name: String)
    {
        self.name = name
        self.batteryLevel = 100
        self.speed = 0.0
        self.altitude = 0.0
    }
    
    public func move(to position: CLLocation) -> Bool
    {
        // Siempre podemos movernos ;-)
        return true
    }
    
    public func stop() -> Void
    {
        self.takeLanding()
    }
    
    public func hibernate() -> Void
    {
        self.takeLanding()
        self.stop()
        
    }

    public func startExperiment() -> Void
    {
        print("Aspirando polvo en suspensión de las capas alta de la atmósfera")   
    }
}