|of  resp op exp nro tit tram dia mes anio fec col condfec today cond cant i|

resp:= false.

[resp == false] whileTrue: [
of:=Oficina crearOficinaNom: (Prompter prompt: 'Bienvenido. Ingrese nombre de la oficina a crear.').
resp:=MessageBox confirm: 'Oficina ', (of verNom), ' creada correctamente. el nombre es correcto?'].

op:=0.
[op == 0] whileTrue: [
MessageBox notify: 'Oficina ', (of verNom), ' - Men� principal
1. Agregar expediente
2. Modificar datos de expediente por n�mero
3. Eliminar expediente
4. Listado de expedientes
5. Salir'.
op:=(Prompter prompt: 'Ingrese la opci�n deseada') asNumber.

(op == 1) ifTrue: [
resp:=true.
[resp == true] whileTrue: [
nro:= (Prompter prompt: 'Ingrese el n�mero del expediente') asNumber.
tit:= Prompter prompt: 'Ingrese titular del expediente "Nombre Apellido"'.
tram:= Prompter prompt: 'Ingrese tr�mite del expediente'.
condfec:=true.
[condfec == true] whileTrue: [
dia:= (Prompter prompt: 'Ingrese la fecha de inicio del expediente. Ingrese d�a (1-31)') asNumber.
[dia<1 | (dia>31)] whileTrue: [
dia:= (Prompter prompt: 'D�a incorrecto. Ingrese d�a nuevamente (1-31)') asNumber.].
mes:= (Prompter prompt: 'Ingrese mes (1-12)') asNumber.
[mes<1 | (mes>12)] whileTrue: [
mes:= (Prompter prompt: 'Mes incorrecto. Ingrese mes nuevamente (1-12)') asNumber.].
anio:= (Prompter prompt: 'Ingrese a�o (YYYY)') asNumber.
fec:= Date newDay: dia monthIndex: mes year: anio.
today:= Date today.
(fec <= today) ifTrue: [condfec:= false.] ifFalse: [MessageBox notify: 'Fecha inv�lida. Ingrese fecha nuevamente '.].].
exp:= Expediente crearExpedienteNum: nro tit: tit tram: tram fech: fec.
of agregarExpediente: exp.
MessageBox notify: 'Expediente N� ', (nro)printString, '
Titular:  ', (tit)printString,'
Tr�mite: ', (tram)printString,'
Fecha de inicio: ', (fec)printString,'
cargado de manera exitosa'.
resp:=MessageBox confirm: 'Desea cargar un nuevo expediente?'].
op:=0.].

(op == 2) ifTrue: [
resp:=true.
[resp == true] whileTrue: [
nro:= (Prompter prompt: 'Ingrese el n�mero del expediente a modificar') asNumber.
col:= of verTodos.
cond:=true.
exp:= col detect:[:exp | (exp verNumero = nro)] ifNone:[cond:=false. MessageBox notify: 'Expediente inexistente.'. resp:=MessageBox confirm: 'Desea modificar otro expediente?' ].
[cond == true] whileTrue: [MessageBox notify: 'Opci�n del dato que desea modificar:
1. n�mero
2. titular
3. tr�mite
4. fecha
5. Salir'.
op:=(Prompter prompt: 'Ingrese la opci�n deseada') asNumber.
(op == 1) ifTrue: [nro:= (Prompter prompt: 'Ingrese el nuevo n�mero del expediente.') asNumber.
exp modiNumero: nro.
MessageBox notify: 'Expediente modificado exitosamente.'.
cond:=false.
resp:=MessageBox confirm: 'Desea modificar un nuevo expediente?'.].
(op == 2) ifTrue: [tit:= Prompter prompt: 'Ingrese el nuevo titular del expediente.'.
exp modiTitular: tit.
MessageBox notify: 'Expediente modificado exitosamente.'.
cond:=false.
resp:=MessageBox confirm: 'Desea modificar un nuevo expediente?'.].
(op == 3) ifTrue: [tram:= Prompter prompt: 'Ingrese el nuevo tr�mite del expediente.'.
exp modiTramite: tram.
MessageBox notify: 'Expediente modificado exitosamente.'.
cond:=false.
resp:=MessageBox confirm: 'Desea modificar un nuevo expediente?'.].
(op == 4) ifTrue: [condfec:=true.
[condfec == true] whileTrue: [
dia:= (Prompter prompt: 'Ingrese la fecha de inicio del expediente. Ingrese d�a (1-31)') asNumber.
[dia<1 | (dia>31)] whileTrue: [
dia:= (Prompter prompt: 'D�a incorrecto. Ingrese d�a nuevamente (1-31)') asNumber.].
mes:= (Prompter prompt: 'Ingrese mes (1-12)') asNumber.
[mes<1 | (mes>12)] whileTrue: [
mes:= (Prompter prompt: 'Mes incorrecto. Ingrese mes nuevamente (1-12)') asNumber.].
anio:= (Prompter prompt: 'Ingrese a�o (YYYY)') asNumber.
fec:= Date newDay: dia monthIndex: mes year: anio.
today:= Date today.
(fec <= today) ifTrue: [condfec:= false.] ifFalse: [MessageBox notify: 'Fecha inv�lida. Ingrese fecha nuevamente '.].].
exp modiFecha: fec.
MessageBox notify: 'Expediente modificado exitosamente.'.
cond:=false.
resp:=MessageBox confirm: 'Desea modificar un nuevo expediente?'.].
op == 0 | (op >5) ifTrue: [MessageBox notify: 'Opci�n inexistente. Intente de nuevo.'.].
(op == 5) ifTrue: [cond:=false. resp:=false.].].].
op:=0.].

(op == 3) ifTrue: [
resp:=true.
[resp == true] whileTrue: [MessageBox notify: 'Eliminar expedientes:
1. Por n�mero
2. Generados por Sof�a Coppola
3. Salir'.
op:=(Prompter prompt: 'Ingrese la opci�n deseada')asNumber.
(op == 1) ifTrue: [nro:= (Prompter prompt: 'Ingrese el n�mero del expediente a eliminar')asNumber.
cond:=false.
cant:= of tamanio.
i:= 1.
[i<= cant] whileTrue: [
exp:= of recuperarExpediente: i.
(exp verNumero == nro) ifTrue: [MessageBox notify: 'Expediente N� ', (nro)printString, ' eliminado exitosamente.'. of eliminarExpediente: exp. cant:=cant-1. cond:=true.] ifFalse: [i:=i+1].].
(cond == false) ifTrue: [MessageBox notify: 'Expediente inexistente.'].
resp:=MessageBox confirm: 'Desea eliminar un nuevo expediente?'.].
(op == 2) ifTrue: [
cond:=false.
cant:= of tamanio.
i:= 1.
[i<= cant] whileTrue: [
exp:= of recuperarExpediente: i.
(exp verTitular = 'Sof�a Coppola') ifTrue: [MessageBox notify: 'Expediente N� ', (exp verNumero)printString, ' eliminado exitosamente.'. of eliminarExpediente: exp. cant:=cant-1. cond:=true.] ifFalse: [i:=i+1].].
(cond == false) ifTrue: [MessageBox notify: 'No hay expedientes con el nombre de titular Sof�a Coppola.'].
resp:=MessageBox confirm: 'Desea eliminar un nuevo expediente?'.].
op == 0 | (op >3) ifTrue: [ MessageBox notify: 'Opci�n inexistente.'.].
(op == 3) ifTrue: [resp:= false. op:=0.].].
op:=0.].

(op == 4) ifTrue: [(of tamanio == 0) ifTrue: [MessageBox notify: 'No hay expedientes para mostrar.'] ifFalse: [
MessageBox notify: 'Listado de expedientes de la oficina'.
1 to: (of tamanio) do: [:i | exp:= of recuperarExpediente: i.
MessageBox notify: 'Expediente N� ', (exp verNumero)printString, '
Titular:  ', (exp verTitular)printString,'
Tr�mite: ', (exp verTramite)printString,'
Fecha de inicio: ', (exp verFecha)printString.
(i == (of tamanio)) ifTrue: [MessageBox notify:  'No hay m�s expedientes para mostrar'].].].
op:=0.].

(op >5) ifTrue: [ MessageBox notify: 'Opci�n inexistente. Por favor intente de nuevo'. op:=0.].].