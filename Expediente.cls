"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Expediente
	instanceVariableNames: 'numero titular tramite fecha'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Expediente guid: (GUID fromString: '{C9EAE604-286B-49D9-9DD7-1258AE6F33AD}')!
Expediente comment: ''!
!Expediente categoriesForClass!Kernel-Objects! !
!Expediente methodsFor!

iniExpedienteNum: unNum tit: unTit tram: unTram fech: unaFech
"Inicializa una instancia de Expediente con sus datos."
numero := unNum.
titular := unTit.
tramite := unTram.
fecha := unaFech.!

modiFecha:otraFech
"Modifica la fecha de un expediente."
fecha:=otraFech.!

modiNumero:otroNum
"Modifica el número de un expediente."
numero:=otroNum.!

modiTitular:otroTit
"Modifica el titular de un expediente."
titular:=otroTit.!

modiTramite:otroTram
"Modifica el trámite de un expediente."
tramite:=otroTram.!

verFecha
"Retorna la fecha de un expediente."
^fecha.!

verNumero
"Retorna el número de un expediente."
^numero.!

verTitular
"Retorna el titular de un expediente."
^titular.!

verTramite
"Retorna el trámite de un expediente."
^tramite.! !
!Expediente categoriesFor: #iniExpedienteNum:tit:tram:fech:!public! !
!Expediente categoriesFor: #modiFecha:!public! !
!Expediente categoriesFor: #modiNumero:!public! !
!Expediente categoriesFor: #modiTitular:!public! !
!Expediente categoriesFor: #modiTramite:!public! !
!Expediente categoriesFor: #verFecha!public! !
!Expediente categoriesFor: #verNumero!public! !
!Expediente categoriesFor: #verTitular!public! !
!Expediente categoriesFor: #verTramite!public! !

!Expediente class methodsFor!

crearExpedienteNum:unNum tit:unTit tram:unTram fech:unaFech
"Retorna una instancia de Expediente y la inicializa con sus datos."
^(self new) iniExpedienteNum: unNum tit: unTit tram: unTram fech: unaFech.! !
!Expediente class categoriesFor: #crearExpedienteNum:tit:tram:fech:!public! !

