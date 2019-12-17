# PROYECTO FINAL DE ADMINISTRACIÓN Y DISEÑO DE BASES DE DATOS
## Proyecto de implementación de una base de datos para el supuesto de Librería Epopeya.

### Integrantes   

> Sergio Delgado López (alu0100893601@ull.edu.es)

> Eduardo Pérez Hernández (alu0100991659@ull.edu.es)

> Sergio Moreno Martín (alu0100710298@ull.edu.es)

### 1. Definición de requisitos del sistema de base de datos

> Enlace al documento: []  

<div style="text-align: justify">
La empresa Epopeya se dedica a la venta de libros de toda índole, desde los manuscritos más clásicos hasta lo último en vanguardia. Es una empresa con una gran trayectoria dentro del sector, y en los últimos tiempos se ha decidido informatizarse, para así poder dar un mejor servicio a sus clientes, así como para llevar una gestión más eficientes de sus librerías y recursos.

Siendo como es una gran empresa con un gran número de librerías en su flota es importante, en primer lugar, tener almacenadas las diferentes librerías de las que dispone la empresa debiendo quedar almacenadas el código identificativo de la librería así como su nombre, localización y teléfono.

El capital humano es de suma importancia para esta empresa por lo que también se desea almacenar los empleados de los que dispone cada una de las librerías de la empresa debiendo recoger su DNI, nombre completo, datos de contacto y su cargo dentro de la librería.

Del mismo modo, se desea almacenar la información relevante del contrato de cada trabajador, en el que se especifica un código identificativo del contrato, DNI y nombre completo del trabajador, su sueldo, el tipo de contrato pudiendo ser éste temporal o indefinido, debiendo indicarse la fecha de inicio del mismo y la de finalización en caso de que sea temporal.
 
Por supuesto, el eje central de toda empresa de éste sector son los libros, y por lo tanto se debe almacenar, minuciosamente, toda la información correspondiente a los mismos, de cara a ofrecer el mejor servicio posible. Para ello será necesario recoger el código identificativo de cada libro, su código ISBN, su nombre completo, su edición, la categoría a la que pertenece (al menos una), su fecha de lanzamiento, su precio y su autor. También se desea saber el stock que hay de cada libro en cada librería.

Dado que la empresa tiene en su haber un gran cantidad de libros en su catálogo, es importante dividir a los mismos en categorías siguiendo el clásico modelo de temáticas (terror, fantasía, etc). Por lo tanto se desea también almacenar las diferentes categorías en las que se agrupan los libros, para ello se especificará el nombre de cada categoría, así como la cantidad de libros pertenecientes a la misma. Hay que tener en cuenta que un libro puede pertenecer a más de un género.

Se sabe que para el público interesado en los libros es importante conocer las últimas novedades que han sido publicadas. Estos libros estarán en primera línea del escaparate de las tienda y la página web, y por tanto se deberá recoger el código del libro, el día en que se puso en novedades y la cantidad de tiempo que debe permanecer en la misma.

Por último, la empresa quiere implementar un sistema de puntos para clientes VIP, donde distinguirlos de los clientes normales, en el cual premiar a aquellos clientes con una alta fidelización en la empresa. Para distinguir a los clientes normales de los VIP se va a usar una tarjeta de socio con la que poder realizar compras tanto online como en las tiendas, dichas tarjetas serán distintas para los usuarios estándar y los VIP. De manera genérica se desea almacenar de ambos tipos sus datos personales (DNI, Nombre completo, correo electrónico y fecha de nacimiento). Los usuarios VIP tendran una tarjeta VIP con su identificador, la fecha de caducidad y la cantidad de puntos acumulados), debe tenerse en cuenta que el cliente puede canjear y aumentar su puntos en cualquier librería perteneciente a la empresa.. Los clientes normales en cambio tendrán una tarjeta normal con un identificador y una fecha de caducidad igual a la VIP, pero en este caso no tendrán puntos, simplemente les servirá para identificarse como clientes. 

Partiendo de todas estas especificaciones se pide obtener un diagrama ER para la BBDD de Epopeya y posteriormente realizar una implementación, teniendo en cuenta todas las restricciones comentadas, y asegurando la coherencia de la información a gestionar.
</div>

