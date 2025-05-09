|of  resp op exp nro tit tram dia mes anio fec col condfec today cond cant i|

resp:= false.

[resp == false] whileTrue: [
of:=Oficina crearOficinaNom: (Prompter prompt: 'Bienvenido. Ingrese nombre de la oficina a crear.').
resp:=MessageBox confirm: 'Oficina ', (of verNom), ' creada correctamente. el nombre es correcto?'].

op:=0.
[op == 0] whileTrue: [
MessageBox notify: 'Oficina ', (of verNom), ' - Menú principal
1. Agregar expediente
2. Modificar datos de expediente por número
3. Eliminar expediente
4. Listado de expedientes
5. Salir'.
op:=(Prompter prompt: 'Ingrese la opción deseada') asNumber.

(op == 1) ifTrue: [
resp:=true.
[resp == true] whileTrue: [
nro:= (Prompter prompt: 'Ingrese el número del expediente') asNumber.
tit:= Prompter prompt: 'Ingrese titular del expediente "Nombre Apellido"'.
tram:= Prompter prompt: 'Ingrese trámite del expediente'.
condfec:=true.
[condfec == true] whileTrue: [
dia:= (Prompter prompt: 'Ingrese la fecha de inicio del expediente. Ingrese día (1-31)') asNumber.
[dia<1 | (dia>31)] whileTrue: [
dia:= (Prompter prompt: 'Día incorrecto. Ingrese día nuevamente (1-31)') asNumber.].
mes:= (Prompter prompt: 'Ingrese mes (1-12)') asNumber.
[mes<1 | (mes>12)] whileTrue: [
mes:= (Prompter prompt: 'Mes incorrecto. Ingrese mes nuevamente (1-12)') asNumber.].
anio:= (Prompter prompt: 'Ingrese año (YYYY)') asNumber.
fec:= Date newDay: dia monthIndex: mes year: anio.
today:= Date today.
(fec <= today) ifTrue: [condfec:= false.] ifFalse: [MessageBox notify: 'Fecha inválida. Ingrese fecha nuevamente '.].].
exp:= Expediente crearExpedienteNum: nro tit: tit tram: tram fech: fec.
of agregarExpediente: exp.
MessageBox notify: 'Expediente N° ', (nro)printString, '
Titular:  ', (tit)printString,'
Trámite: ', (tram)printString,'
Fecha de inicio: ', (fec)printString,'
cargado de manera exitosa'.
resp:=MessageBox confirm: 'Desea cargar un nuevo expediente?'].
op:=0.].

(op == 2) ifTrue: [
resp:=true.
[resp == true] whileTrue: [
nro:= (Prompter prompt: 'Ingrese el número del expediente a modificar') asNumber.
col:= of verTodos.
cond:=true.
exp:= col detect:[:exp | (exp verNumero = nro)] ifNone:[cond:=false. MessageBox notify: 'Expediente inexistente.'. resp:=MessageBox confirm: 'Desea modificar otro expediente?' ].
[cond == true] whileTrue: [MessageBox notify: 'Opción del dato que desea modificar:
1. número
2. titular
3. trámite
4. fecha
5. Salir'.
op:=(Prompter prompt: 'Ingrese la opción deseada') asNumber.
(op == 1) ifTrue: [nro:= (Prompter prompt: 'Ingrese el nuevo número del expediente.') asNumber.
exp modiNumero: nro.
MessageBox notify: 'Expediente modificado exitosamente.'.
cond:=false.
resp:=MessageBox confirm: 'Desea modificar un nuevo expediente?'.].
(op == 2) ifTrue: [tit:= Prompter prompt: 'Ingrese el nuevo titular del expediente.'.
exp modiTitular: tit.
MessageBox notify: 'Expediente modificado exitosamente.'.
cond:=false.
resp:=MessageBox confirm: 'Desea modificar un nuevo expediente?'.].
(op == 3) ifTrue: [tram:= Prompter prompt: 'Ingrese el nuevo trámite del expediente.'.
exp modiTramite: tram.
MessageBox notify: 'Expediente modificado exitosamente.'.
cond:=false.
resp:=MessageBox confirm: 'Desea modificar un nuevo expediente?'.].
(op == 4) ifTrue: [condfec:=true.
[condfec == true] whileTrue: [
dia:= (Prompter prompt: 'Ingrese la fecha de inicio del expediente. Ingrese día (1-31)') asNumber.
[dia<1 | (dia>31)] whileTrue: [
dia:= (Prompter prompt: 'Día incorrecto. Ingrese día nuevamente (1-31)') asNumber.].
mes:= (Prompter prompt: 'Ingrese mes (1-12)') asNumber.
[mes<1 | (mes>12)] whileTrue: [
mes:= (Prompter prompt: 'Mes incorrecto. Ingrese mes nuevamente (1-12)') asNumber.].
anio:= (Prompter prompt: 'Ingrese año (YYYY)') asNumber.
fec:= Date newDay: dia monthIndex: mes year: anio.
today:= Date today.
(fec <= today) ifTrue: [condfec:= false.] ifFalse: [MessageBox notify: 'Fecha inválida. Ingrese fecha nuevamente '.].].
exp modiFecha: fec.
MessageBox notify: 'Expediente modificado exitosamente.'.
cond:=false.
resp:=MessageBox confirm: 'Desea modificar un nuevo expediente?'.].
op == 0 | (op >5) ifTrue: [MessageBox notify: 'Opción inexistente. Intente de nuevo.'.].
(op == 5) ifTrue: [cond:=false. resp:=false.].].].
op:=0.].

(op == 3) ifTrue: [
resp:=true.
[resp == true] whileTrue: [MessageBox notify: 'Eliminar expedientes:
1. Por número
2. Generados por Sofía Coppola
3. Salir'.
op:=(Prompter prompt: 'Ingrese la opción deseada')asNumber.
(op == 1) ifTrue: [nro:= (Prompter prompt: 'Ingrese el número del expediente a eliminar')asNumber.
cond:=false.
cant:= of tamanio.
i:= 1.
[i<= cant] whileTrue: [
exp:= of recuperarExpediente: i.
(exp verNumero == nro) ifTrue: [MessageBox notify: 'Expediente N° ', (nro)printString, ' eliminado exitosamente.'. of eliminarExpediente: exp. cant:=cant-1. cond:=true.] ifFalse: [i:=i+1].].
(cond == false) ifTrue: [MessageBox notify: 'Expediente inexistente.'].
resp:=MessageBox confirm: 'Desea eliminar un nuevo expediente?'.].
(op == 2) ifTrue: [
cond:=false.
cant:= of tamanio.
i:= 1.
[i<= cant] whileTrue: [
exp:= of recuperarExpediente: i.
(exp verTitular = 'Sofía Coppola') ifTrue: [MessageBox notify: 'Expediente N° ', (exp verNumero)printString, ' eliminado exitosamente.'. of eliminarExpediente: exp. cant:=cant-1. cond:=true.] ifFalse: [i:=i+1].].
(cond == false) ifTrue: [MessageBox notify: 'No hay expedientes con el nombre de titular Sofía Coppola.'].
resp:=MessageBox confirm: 'Desea eliminar un nuevo expediente?'.].
op == 0 | (op >3) ifTrue: [ MessageBox notify: 'Opción inexistente.'.].
(op == 3) ifTrue: [resp:= false. op:=0.].].
op:=0.].

(op == 4) ifTrue: [(of tamanio == 0) ifTrue: [MessageBox notify: 'No hay expedientes para mostrar.'] ifFalse: [
MessageBox notify: 'Listado de expedientes de la oficina'.
1 to: (of tamanio) do: [:i | exp:= of recuperarExpediente: i.
MessageBox notify: 'Expediente N° ', (exp verNumero)printString, '
Titular:  ', (exp verTitular)printString,'
Trámite: ', (exp verTramite)printString,'
Fecha de inicio: ', (exp verFecha)printString.
(i == (of tamanio)) ifTrue: [MessageBox notify:  'No hay más expedientes para mostrar'].].].
op:=0.].

(op >5) ifTrue: [ MessageBox notify: 'Opción inexistente. Por favor intente de nuevo'. op:=0.].].