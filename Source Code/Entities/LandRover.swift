import Foundation
import CoreLocation

public struct LandRover
{
    ///
    public private(set) var name: String
    ///
    public private(set) var batteryLevel: Int
    ///
    public private(set) var speed: Double

    /**
        Comprueba la máxima pendiente que encontraremos
        en el trayecto del Rover
    */
    private func checkTerrainAngle(from position: CLLocation, to destination: CLLocation) -> Double
    {
        // Parece que vamos a subir al Monte Olimpo
        return 26.0
    }
}

extension LandRover: Rover
{
    /**
    
    */
    public init(named name: String)
    {
        self.name = name
        self.batteryLevel = 100
        self.speed = 0.0
    }
    
    public func move(to position: CLLocation) -> Bool
    {
        // Siempre podemos movernos ;-)
        return true
    }
    
    public func stop() -> Void
    {
        print("Freno de mano activado")
    }
    
    public func hibernate() -> Void
    {
        self.stop()
    }

    public func startExperiment() -> Void
    {
        print("Excavando para recoger muestras...")   
    }
}