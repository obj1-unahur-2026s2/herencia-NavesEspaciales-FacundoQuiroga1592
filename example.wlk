class NaveMadre { 

 var velocidad 

 var dirección

 var combustible



method prepararViaje() {

 combustible = 30000

 velocidad = 5000

}

method cargarCombustible(combus) {

 combustible += combus

}

method descargarCombustible(combus) {

 combustible -= combus

}

 method acelerar(cuanto) {

 velocidad += cuanto.min(100000).max(0)

 }

 method desacelerar(cuanto) {

 velocidad -=cuanto

 }

 method irHaciaElSolme() {

 dirección = 10

 }

method escaparDelSol() {

 dirección = -10

}

method ponerseParaleloAlSol() {

 dirección = 0

}

method acercarseUnPocoAlSol() {

 dirección += 1.min(10)

}

method alejarseUnPocoDelSol() {

 dirección -= 1.max(-10)

}



}



class NavesBaliza inherits NaveMadre {

 var color // es un strings



 method cambiarColorDeBaliza(colorNuevo){

 color = colorNuevo

 }

 override method prepararViaje() {

 super()

 self.cambiarColorDeBaliza("verde")

 self.ponerseParaleloAlSol()

 }

 

}

class NavesDePasajeros inherits NaveMadre {

 const pasajero 

 var comida

 var bebida



 override method prepararViaje() {

 super()

 self.cargarComida(4*pasajero)

 self.cargarBebida(6*pasajero)

 self.acercarseUnPocoAlSol()

 }

 method cargarComida(cargaALimentos) {

 comida += cargaALimentos

 }

 method descargarComida(cantidad) {

 comida -= cantidad

 }

 method cargarBebida(cargaBebidas) {

 bebida += cargaBebidas

 }

 method descargarBebida(cantidad) {

 bebida -= cantidad

 }



}

class NavesDeCombate inherits NaveMadre {

const msj = []

 var visibilidad 

 var equipamiento



 override method prepararViaje() {

 super()

 self.ponerseVisible()

 self.replegarMisiles()

 self.acelerar(15000)

 self.emitirMensaje("Saliendo en misión")

 }

 method ponerseVisible() {

 visibilidad = true

 }

 method ponerseInvisible() {

 visibilidad = false

 } 

 method estaInvisible() {

 return visibilidad

 }

 method desplegarMisiles() {

 equipamiento = true

 }

 method replegarMisiles() {

 equipamiento = false

 }

 method misilesDesplegados() {

 return equipamiento 

 }

 method emitirMensaje(mensaje) {

 



 msj.add(mensaje)

 

 }

 method emitioMensaje(mensaje) {

 return msj.any(mensaje)

 }

 method mensajesEmitidos() {

 return msj.size()

 }

 method primerMensajeEmitido() {

 return msj.first()

 }

 method ultimoMensajeEmitido() {

 return msj.last()

 }

 method esEscueta() = msj.all({ m => m.size() <= 30 })

 

}



class NaveHospita inherits NavesDePasajeros {

 

}