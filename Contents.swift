//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    var cadenaVelocidad : String = ""
    var valorActual : Int = 0
    init(){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        self.valorActual = self.velocidad.rawValue
        switch self.velocidad{
            case .Apagado:
                self.velocidad = Velocidades.VelocidadBaja
                cadenaVelocidad = "Apagado"
            case .VelocidadBaja:
                self.velocidad = Velocidades.VelocidadMedia
                cadenaVelocidad = "Velocidad Baja"
            case .VelocidadMedia:
                self.velocidad = Velocidades.VelocidadAlta
                cadenaVelocidad = "Velocidad Media"
            case .VelocidadAlta:
                self.velocidad = Velocidades.VelocidadMedia
                cadenaVelocidad = "Velocidad Alta"
        }
        return (self.valorActual, self.cadenaVelocidad)
    }
}

var automovil = Auto();
for index in 1...20{
    var nuevaVelocidad = automovil.cambioDeVelocidad()
    print("\(nuevaVelocidad.actual), \(nuevaVelocidad.velocidadEnCadena)")
}




