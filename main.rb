def clear
  system('cls')
  system('clear')
end

def imprimir_estado (personaje1, personaje2)clear
	clear
	print "=========================================\n"
	print " \t\t" + personaje1.clase.nombre + "\t" + personaje2.nombre + "\n"
	print " Fuerza:\t   " + personaje1.clase.fuerza.to_s + "\t\t   " + personaje2.fuerza.to_s + "\n"
	print " Destreza:\t   " + personaje1.clase.destreza.to_s + "\t\t   " + personaje2.destreza.to_s + "\n"
	print " Inteligencia:\t   " + personaje1.clase.inteligencia.to_s + "\t\t   " + personaje2.inteligencia.to_s + "\n"
	print " Armadura:\t   " + personaje1.clase.armadura.to_s + "\t\t   " + personaje2.armadura.to_s + "\n"
	print " Energía:\t   " + personaje1.clase.energia.to_s + "\t\t   " + personaje2.energia.to_s + "\n"
	print " Mana:\t\t   " + personaje1.clase.mana.to_s + "\t\t   " + personaje2.mana.to_s + "\n"
	print " Salud:\t\t   " + personaje1.clase.salud.to_s + "\t\t   " + personaje2.salud.to_s + "\n"
	print "\n"
	print "=========================================\n"
end

class Habilidad
	attr_accessor 	:nombre, :tipo, :danio, :modificador, :energia
end


class Clase
	attr_accessor 	:nombre, :fuerza, :destreza,:inteligencia,:armadura, :mana, :energia, :salud, :habilidades
end

class Explorador < Clase

	def initialize()

		self.nombre = "Explorador"
		self.fuerza = 3
		self.destreza = 4
		self.inteligencia = 2
		self.armadura = 6
		self.mana = 0
		self.energia = 5
		self.salud = 6
		self.habilidades = []
	end

	def disparo_lejano ()

	end

	def golpe_de_cobra ()

	end

end

class Enemigo < Clase


end

class Goblin < Enemigo
	def initialize()
		self.nombre = "Goblin"
		self.fuerza = 2
		self.destreza = 3
		self.inteligencia = 1
		self.armadura = 4
		self.mana = 0
		self.energia = 2
		self.salud = 3
	end
end


class Jugador
	attr_accessor :nombre, :clase

end



$jugador = Jugador.new
clear

print "Galdor:- Hola forastero bienvenido soy Galdor, no me conoces pero tendrás\nque confiar en mí si quieres recuperar el legado que te corresponde por\nderecho, ¿cómo te llamas? "
$jugador.nombre = gets.chomp

clear
print "Galdor:- Muy bien " + $jugador.nombre + " Ahora elijamos una clase \n"
print "\n=================\n"
print "1) Explorador\n"
print "2) Guerrero\n"
print "3) Mago\n"
print "=================\n"

clase_elegida = gets.to_i

$error = true

case clase_elegida
when 1
  $jugador.clase = Explorador.new
when 2
  $jugador.clase = Guerrero.new
when 3
  $jugador.clase = Mago.new
else
	$error = true
  puts "Ingresaste un valor erroneo"
end

clear

print "Galdor:- Buena elección, El " + $jugador.clase.nombre + " es una clase muy fuerte.\n"

print "Galdor:- Ahora vamos a hacer un enfrentamiento de prueba contra un Goblin,\nuna de las tantas criaturas que te puedes encontrar... "
print "..."
gets

$enemigo = Goblin.new
$bandera = true

imprimir_estado($jugador, $enemigo)
if $jugador.clase.destreza >= $enemigo.destreza
	print "Galdor:- Comienzas tú, pues tu destreza es mejor a la del " + $enemigo.nombre
else
	print "Galdor:- Comienzas el + " + $enemigo.nombre + " tiene una destreza superior a ti."
end
print "..."
gets


while $bandera do
	imprimir_estado($jugador, $enemigo)
	
	print "=========================================\n"
	print " 0) Salir\n"
	print " 1) Usar Habilidad\n"
	print " 2) Huír\n"
	print "=========================================\n"
	$opc = gets.to_i


	case $opc
	when 0
	  $bandera = false
	when 1 #Habilidades
		imprimir_estado($jugador, $enemigo)
		$jugador.clase.habilidades.each |habilidad| do 
		
		end
		print "=========================================\n"
	when 2
	
	when " "
		"Debes ingresar alguna opcion"
	else
	  "Ingresaste #{x} -- I no tengo idea que quiere decir"
	end

end


