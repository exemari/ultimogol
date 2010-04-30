DB Sripts
=========

En esta carpeta van todos los scripts vinculados a la base de datos, siendo estos los más
importantes.

- create_database.sql: inicializa la base de datos
- changes_to_deploy: esta carpeta contiene los scripts que tienen que ser ejecutados antes de
	desplegar la aplicación.
- deployed_changes: son los scripts que ya fueron ejecutados y están funcionando en live

Los scripts de cambios deben tener el siguiente formato:

YYYY-MM-DD-XX_pivotaltracker#_descripcion.sql

La fecha que se coloca debe ser la fecha del día que el script se termina por completo, y la
parte XX indica el orden en ese día si hay más de un script. El número de Pivotal Tracker sirve
para identificar la tarea.