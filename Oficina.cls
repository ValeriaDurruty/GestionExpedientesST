"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Oficina
	instanceVariableNames: 'nombre expedientes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Oficina guid: (GUID fromString: '{F4D70888-7ABE-4CD6-8E8B-20D4812C9862}')!
Oficina comment: ''!
!Oficina categoriesForClass!Unclassified! !
!Oficina methodsFor!

agregarExpediente:unExpediente
"Agrega un expediente a la oficina"
expedientes add:unExpediente.!

eliminarExpediente: unExpediente
"Elimina un expediente de la oficina"
expedientes remove:unExpediente ifAbsent:[^nil].!

esVacio
"Retorna true si la colección está vacía, false en caso contrario"
^expedientes isEmpty.!

existe:unExpediente
"Retorna true si el expediente unExpediente existe, false en caso contrario"
^expedientes includes:unExpediente.!

iniOficinaNom:unNom
"Inicializa una instancia de oficina"
nombre:=unNom.
expedientes:=OrderedCollection new.!

modNom: otroNom
"Modifica el nombre de la oficina"
nombre := otroNom.!

recuperarExpediente: pos
"Retorna el expediente de la posición pos de la oficina"
^expedientes at:pos.!

tamanio
"Retorna el total de expedientes de la oficina"
^expedientes size.!

verNom
"Retorna el nombre de la oficina"
^nombre.!

verTodos
"Retorna toda la colección de expedientes de la oficina"
^expedientes.! !
!Oficina categoriesFor: #agregarExpediente:!public! !
!Oficina categoriesFor: #eliminarExpediente:!public! !
!Oficina categoriesFor: #esVacio!public! !
!Oficina categoriesFor: #existe:!public! !
!Oficina categoriesFor: #iniOficinaNom:!public! !
!Oficina categoriesFor: #modNom:!public! !
!Oficina categoriesFor: #recuperarExpediente:!public! !
!Oficina categoriesFor: #tamanio!public! !
!Oficina categoriesFor: #verNom!public! !
!Oficina categoriesFor: #verTodos!public! !

!Oficina class methodsFor!

crearOficinaNom:unNom
"Retorna una instancia de oficina inicializada"
^(self new) iniOficinaNom:unNom.! !
!Oficina class categoriesFor: #crearOficinaNom:!public! !

