package com.ultimogol.nucleo.dominio;

import javax.persistence.Entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import javax.validation.constraints.Size;

/**
 * Esta es una clase de prueba que sólo sirve para comenzar el proyecto y verificar que las cosas
 * funcionan correctamente.
 * 
 * @author diego
 *
 */
@Entity
@RooJavaBean
@RooToString
@RooEntity
public class Prueba {

    @Size(max = 10)
    private String valor1;
    
    public Prueba findByValor1(String valor1) {
    	return null;
    }
}
