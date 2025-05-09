# GestionExpedientesST

## Descripción

Este repositorio contiene una aplicación desarrollada en Smalltalk para la gestión de expedientes en una oficina. La aplicación permite realizar las operaciones básicas de administración de expedientes, como agregar, modificar, eliminar y listar.

Este proyecto fue realizado como Trabajo Práctico Final para la materia Paradigmas de Programación.

##   Información Adicional

* Año de desarrollo: 2021

## Contenido del Repositorio

* `app.st`:  Archivo principal de la aplicación en Smalltalk. Contiene el menú interactivo y la lógica de la aplicación.
* `Expediente.cls`: Definición e implementación de la clase `Expediente`, que representa la estructura de cada expediente (número, titular, trámite, fecha).
* `Oficina.cls`: Definición e implementación de la clase `Oficina`, que gestiona la colección de expedientes.
* `Especificacion expediente.txt`: Especificación detallada de la clase `Expediente`.
* `Especificacion oficina.txt`: Especificación detallada de la clase `Oficina`.
* `Clases.pdf`: Diagrama de clases que muestra las relaciones entre las clases `Expediente` y `Oficina`.

## Clases

### `Expediente`

La clase `Expediente` representa un expediente individual y contiene la siguiente información:

* `numero`:  Número de identificación del expediente (entero).
* `titular`: Nombre del titular del expediente (cadena).
* `tramite`:  Trámite asociado al expediente (cadena).
* `fecha`:  Fecha de presentación del expediente (fecha).

**Métodos de Instancia:**

* `iniExpedienteNum: unNum tit: unTit tram: unTram fech: unaFech`: Inicializa una instancia de `Expediente` con los datos proporcionados.
* `modiFecha: otraFech`: Modifica la fecha del expediente.
* `modiNumero: otroNum`: Modifica el número del expediente.
* `modiTitular: otroTit`: Modifica el titular del expediente.
* `modiTramite: otroTram`: Modifica el trámite del expediente.
* `verFecha`: Retorna la fecha del expediente.
* `verNumero`: Retorna el número del expediente.
* `verTitular`: Retorna el titular del expediente.
* `verTramite`: Retorna el trámite del expediente.

**Métodos de Clase:**

* `crearExpedienteNum: unNum tit: unTit tram: unTram fech: unaFech`: Crea y retorna una instancia de `Expediente` inicializada con los datos proporcionados.

### `Oficina`

La clase `Oficina` gestiona una colección de objetos `Expediente` y tiene la siguiente información:

* `nombre`: Nombre de la oficina (cadena).
* `expedientes`: Colección de objetos `Expediente`.

**Métodos de Instancia:**

* `iniOficinaNom: unNom`: Inicializa una instancia de `Oficina` con el nombre proporcionado.
* `verNom`: Retorna el nombre de la oficina.
* `modNom: otroNom`: Modifica el nombre de la oficina.
* `agregarExpediente: unExpediente`: Agrega un expediente a la colección de la oficina.
* `eliminarExpediente: unExpediente`: Elimina un expediente de la colección de la oficina.
* `esVacio`: Retorna `true` si la colección de expedientes está vacía, `false` en caso contrario.
* `existe: unExpediente`: Retorna `true` si un expediente existe en la colección, `false` en caso contrario.
* `verTodos`: Retorna la colección completa de expedientes de la oficina.
* `recuperarExpediente: pos`: Retorna el expediente en la posición `pos` de la colección.
* `tamanio`: Retorna la cantidad total de expedientes en la oficina.

**Métodos de Clase:**

* `crearOficinaNom: unNom`: Crea y retorna una instancia de `Oficina` inicializada con el nombre proporcionado.

## Funcionalidades de la Aplicación

La aplicación presenta un menú que permite al usuario interactuar con el sistema de gestión de expedientes. Las funcionalidades implementadas son:

* Agregar un nuevo expediente.
* Modificar los datos de un expediente existente (número, titular, trámite, fecha).
* Eliminar un expediente por su número.
* Listar todos los expedientes almacenados.
* Eliminar los expedientes generados por "Sofía Coppola".

## Cómo Ejecutar

1.  Asegúrate de tener instalado un entorno de Smalltalk (por ejemplo, Dolphin Smalltalk).
2.  Carga los archivos `.cls` (clases) y `.st` (aplicación principal) en el entorno de Smalltalk.
3.  Ejecuta el archivo `app.st` para iniciar la aplicación.
4.  Sigue las instrucciones del menú para interactuar con el sistema.

## Autor

Valeria E. Durruty
