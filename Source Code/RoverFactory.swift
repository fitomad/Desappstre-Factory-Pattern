import Foundation

public class RoverFactory
{
    /**
        Construimos un nuevo Rover para que explore un entorno
        determinado
    */
    public static func makeRover(for explore: Exploration) -> Rover
    {
        switch explore
        {
            case .aerial:
                return AirRover(named: "Curiosity")
            case .terrestrial:
                return LandRover(named: "Spirit")
            case .nautical:
                return SeaRover(named: "ExoMars")
        }
    }
}
