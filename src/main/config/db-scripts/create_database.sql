-- Este script sirve para inicializar la base de datos. Sólo crea la base de datos, el usuario
-- y establece los permisos para ese usuario. Los datos de inicialización son los siguientes:
-- 
-- database: ultimogol
-- username: ultimogol
-- password: ultimogol
--
-- La base de datos creada queda vacía, ya que deberá ser inicializada por la aplicación al 
-- ejecutarse (esto debe estar configurado en el archivo persistence.xml).
--
-- Es importante resaltar que este script deberá ser usado sólo con propósito de desarrollo.

-- Elimina la base de datos actual si esta existe

drop database if exists ultimogol;

-- Crea la base de datos

create database ultimogol;

-- Elimina el usuario ultimogol si este existe


grant usage on ultimogol.* to 'ultimogol';
revoke all privileges, grant option from 'ultimogol';
drop user 'ultimogol';

-- Crea el usuario ultimogol y le asigna todos los permisos sobre la base de datos

grant all privileges on ultimogol.* to 'ultimogol'@'localhost' identified by 'ultimogol';
