import Foundation
import CoreLocation

public protocol Rover
{
    /// Nombre del Rover
    var name: String { get }
    /// Estado de la batería
    var batteryLevel: Int { get }
    /// Velocidad actual
    var speed: Double { get }

	/**
		Los construimos con un nombre único
	*/
    init(named name: String)

	/// Orden de movimiento a unas determinadas coordenadas
    func move(to position: CLLocation) -> Bool
	/// El Rover debe deterse
    func stop() -> Void
	/// Llega el invierno
    func hibernate() -> Void
	/// Empieza a realizar los experimientos
    func startExperiment() -> Void
}