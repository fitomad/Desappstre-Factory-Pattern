import Foundation
import CoreLocation

public struct SeaRover
{
    ///
    public var deep: Double
    
    ///
    public private(set) var name: String
    ///
    public private(set) var batteryLevel: Int
    ///
    public private(set) var speed: Double

    /**

    */
    public func surface() -> Void
    {
        print("Emergiendo...")
    }
}

extension SeaRover: Rover
{
    /**
    
    */
    public init(named name: String)
    {
        self.name = name
        self.batteryLevel = 100
        self.speed = 0.0
        
        self.deep = 0.0
    }
    
    public func move(to position: CLLocation) -> Bool
    {
        // Siempre podemos movernos ;-)
        return true
    }
    
    public func stop() -> Void
    {
        print("Detengan máquinas")
    }
    
    public func hibernate() -> Void
    {
        self.surface()
        self.stop()
        
    }

    public func startExperiment() -> Void
    {
        print("Llenando tanques con agua marciana...")   
    }
}