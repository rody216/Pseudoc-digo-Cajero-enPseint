Algoritmo cajero
	saldo <- 200000
	contador <- 1
	Mientras contador<=3 Hacer
		Escribir 'escribe tu número de identificación'
		Leer cedula
		Escribir 'escribe la Contraseña'
		Leer contraseña
		Si cedula == "123654789" y contraseña=='abc' Entonces
			contador <- 4
			respuesta <- 0
			Mientras respuesta<>4 Hacer
				Escribir '==========================='
				Escribir 'Bienvendio Rodolfo Alvarez'
				Escribir '==========================='
				Escribir '1: = Consultar Saldo'
				Escribir '2: = Consignar Saldo'
				Escribir '3: = Retirar Saldo'
				Escribir '4: = Salir'
				Leer respuesta
				Segun respuesta  Hacer
					1:
						Escribir '===================================='
						Escribir 'Tu saldo actual es: $',saldo
						Escribir '===================================='
					2:
						Escribir 'Ingresa la cantidad a depositar'
						Leer deposito
						saldo <- saldo+deposito
						Escribir '===================================='
						Escribir 'La cantidad consignada es de: $',deposito
						Escribir 'Tu nuevo saldo es: $',saldo
						Escribir '===================================='
					3:
						Escribir 'Ingresa la cantidad a retirar'
						Leer retiro
						Si retiro>saldo Entonces
							Escribir '===================================='
							Escribir 'No tiene fondos suficientes'
							Escribir 'Tu saldo actual es: $',saldo
							Escribir '===================================='
						SiNo
							saldo <- saldo-retiro
							Escribir '===================================='
							Escribir 'La cantidad retirada fue de: $',retiro
							Escribir 'Tu nuevo saldo es: $',saldo
							Escribir '===================================='
						FinSi
					4:
						Escribir 'Fue un placer servierte, vuelve pronto.'
						
				FinSegun
			FinMientras
		SiNo
			contador <- contador+1
			Si contador==4 Entonces
				Escribir 'Excediste la cantidad de intentos, Adios.'
			SiNo
				Escribir 'Usuario o Contraseña Incorrecta'
			FinSi
		FinSi
	FinMientras
FinAlgoritmo
