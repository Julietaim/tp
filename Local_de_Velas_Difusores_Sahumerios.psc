Algoritmo Local_de_Velas_Difusores_Sahumerios
	Definir  productos, productoSeleccionado, op, aromas, dias, diaElegido, hora, horaElegida Como Caracter
	Definir cantidadAromas, cantProductos, cantidadSolicitada, opElegida, opAroma Como Entero
	
	Dimension productos[3]
	Dimension aromas[6]
	Dimension cantAromas[200]
	Dimension cantProductos[200]
	Dimension dias[3] 
	Dimension horas[2] 
	
	productos[1]= "Velas";
	productos[2]= "Difusores";
	productos[3]= "Sahumerios";
	aromas[1]= "Canela";
	aromas[2]= "Coco";
	aromas[3]= "Chocolate";
	aromas[4]= "Jazmin";
	aromas[5]= "Vainilla";
	aromas[6]= "Gardenia";
	dias[1]= "Lunes"
	dias[2]= "Miercoles"
	dias[3]= "Viernes"
	horas[1]= "Mañana"
	horas[2]= "Tarde"
	
	Escribir "***************************************************************"
	Escribir " Bienvenido a nuestro local de Velas, Difusores y Sahumerios"          
	Escribir " A continuacion podras realizar tu pedido"
	Escribir "****************************************************************"
	
	Escribir " Quieres comenzar con tu Pedido?(si/no)"
	Leer Op
	si Minusculas(Op) == "si" entonces 
		productosSeleccionado=1
		cantidadSolicitada=1
		Repetir
			Escribir " Cual es el producto que desea?"
			Leer productos[productosSeleccionado]
			productosSeleccionado= productosSeleccionado + 1
			
			Escribir "Que cantidad quiere comprar del producto?"
			Leer cantProductos[cantidadSolicitada]
			cantidadSolicitada= cantidadSolicitada + 1
			
			Escribir "Quiere adquirir algun otro producto?(si/no)"
			Leer Op
		Hasta Que Minusculas(Op) =="no"
		
		Escribir " Lista de Productos ingresados"
		Para productosSeleccionado= 1 hasta 2
			Escribir productos[productosSeleccionado]
		FinPara
		
		Escribir "Las Cantidades de Productos "
		Para cantidadSolicitada = 1 Hasta 2
			Escribir cantProductos[cantidadSolicitada] 
		FinPara
		
		Escribir"************************************************"
		Escribir"************************************************"
		
		Repetir
			Escribir "Estos son los Aromas que tenemos "
			Escribir " 1. Canela"
			Escribir " 2. Coco"
			Escribir " 3. Chocolate"
			Escribir " 4. Jazmin"
			Escribir " 5. Vainilla"
			Escribir " 6. Gardenia"
			Escribir " Indiquenos que Aromas quiere llevar(1-6),segun el orden de producto pedido "
			Leer opAroma
			
			si (opAroma <= 6) Entonces
				Escribir " Que cantidad quiere de este aroma?"
				Leer cantidadAroma
			sino 
				si opAroma >6 o opAroma == 0
					Escribir " La opcion es incorrecta"
				FinSi
			FinSi
			
			Escribir "quiere adquirir otro Aroma?(si/ no)"
			Leer Op
		Hasta Que 	Minusculas(Op) == "no"
		
		Escribir "*******************************************"
		Escribir"********************************************"
		
		Escribir "Como desea recibir la compra?"
		Escribir "1. En el Local"
		Escribir "2. Con Envio"
		Leer opElegida
		
		Si opElegida=1 Entonces
			Escribir " Puede acercarse de Lunes a Viernes de 09:00 hs a 18:00 hs."
		SiNo
			Si opElegida=2 Entonces
				Escribir " Indiquenos que dia prefiere recibirlo?"
				Escribir "Lunes "
				Escribir "Miércoles "
				Escribir "Viernes "
				Leer diaELegido
				
				Escribir " Indiquenos en que horario prefiere recibirlo?"
				Escribir "Mañana (10:00 AM - 12:00 PM)"
				Escribir "Tarde (2:00 PM - 4:00 PM)"
				Leer horaElegida
				Escribir "El envio esta solicitado para el dia:", diaELegido, " en la franja horaria de la:", horaElegida
				Escribir " Envio sujeto a previo abono de la compra "
				
				Escribir "*************************************************************************************************"
				Escribir " Por favor ingrese e-mail, donde enviar la informacion del total de su pedido y medios de pago."
				Leer email
				Escribir "*************************************************************************************************"
			FinSi
		FinSi
		
	FinSi
	Escribir "Muchas Gracias por ingresar a la pagina del local"	
	
FinAlgoritmo

