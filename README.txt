ultimogol.com
=============

Este documento contiene información general acerca del desarrollo de ultimogol.com.

Software utilizado
==================

Java JDK 1.6
Maven 2.x
MySQL 5.0
Spring Suite Tool 2.3.2 (incluye Spring Roo)
Git con GitHub

Todos son Open Source y se pueden descargar desde Internet. Para la administración de Git se 
recomienda SmartGit, que también se puede descargar de Internet.

PivotalTracker
==============

Todas las tareas deben estar registradas en PivotalTracker. Cada iteración dura 2 semanas.

URL: www.pivotaltracker.com
Proyecto: ultimogol.com

Configuración de Git con GitHub
===============================

URL: www.github.com
Proyecto: ultimogol

Luego hay que configurar Git para que se pueda usar con el proyecto.

En Linux hay que instalar los paquetes para Git (git-core en Ubuntu) y hacer lo siguiente:

git config --global user.name "Nombe Apellido"
git config --global user.email email@email.com

Para Windows seguir las siguientes instrucciones:

http://github.com/guides/using-git-and-github-for-the-windows-for-newbies

Después es necesario configurar la cave pública de SSH. Ver los siguientes links dependiendo del
sistema operativo:

http://help.github.com/linux-key-setup/
http://help.github.com/msysgit-key-setup/

Una vez que ya está configurada la clave pública ya podemos acceder al repositorio, pero primero
lo mejor es configurar SmartGit (en caso de usar SmartGit).

1. Iniciar SmartGit
2. Seleccionar utilizar SSH del sistema
3. En la sección de github.com colocar el nombre de usuario y el API token. Esta información se
	puede encontrar en la sección de Account settings en GitHub.
4. Seleccionar clonar un proyecto existente
5. Hacer click en Select from GitHub y elegir el proyecto ultimogol.com. Presionar Next.
6. Elegir en qué directorio se colocará el código fuente y terminar con la importación.

Configuración de la base de datos
=================================

La base de datos utilizada es MySQL 5.0. Una vez instalada, ejecutar el script create_database.sql 
que se encuentra en /src/main/config/db-script:

mysql -u root < create_database.sql

Si el usuario root tiene password, utilizar el siguiente comando:

mysql -u root -p < create_database.sql

Esto crea la base de datos y el usuario para acceder:

database: ultimogol
username: ultimogol
password: ultimogol

Las tablas y datos se crearán cuando se ejecute la aplicación.

Configuración de Spring Suite Tool
==================================

1. Importar proyecto

Una vez que ya se ha descargado el proyecto con Git, se debe importar en Eclipse:

- File -> Import...
- Seleccionar Existing Maven Project y presionar Next
- Seleccionar la carpeta en la que se bajó el proyecto desde GitHub y marcar el archivo pom.xml
- Presionar Next y finalizar con la importación

2. Configuración

Las siguientes cosas se deberían ajustar en Eclipse antes de empezar a desarrollar:

- Poner un margen de 100 caracteres. General -> Editors -> Text Editors -> Show print margin
- Deshabilitar el diccionario y corrección de errores. General -> Editors -> Text Editors -> 
	Spelling -> Enable spell checking
	
Indicaciones generales de desarrollo
====================================

Algunas pautas que se deben seguir se enumeran a continuación:

- Seguir las convenciones de Java de Sun (http://java.sun.com/docs/codeconv/)

Links con documentación:

- Spring Roo (http://static.springsource.org/spring-roo/reference/html/index.html)
- Spring Framework (http://static.springsource.org/spring/docs/3.0.x/spring-framework-reference/html/)
- Spring Security (http://static.springsource.org/spring-security/site/docs/3.0.x/reference/springsecurity.html)
- JPA (http://java.sun.com/javaee/5/docs/api/javax/persistence/package-summary.html)
- Hibernate EntityManager (http://docs.jboss.org/hibernate/stable/entitymanager/reference/en/html/)
- Hibernate Annotations (http://docs.jboss.org/hibernate/stable/annotations/reference/en/html/)
- Hibernate Core (http://docs.jboss.org/hibernate/stable/core/reference/en/html/)
- Apache Tiles (http://tiles.apache.org/framework/index.html)
- MySQL Reference Documentation (http://dev.mysql.com/doc/refman/5.1/en/index.html)
- Dojo Toolkit (http://www.dojotoolkit.org/documentation/)
- Pro Git (http://progit.org/book/)