package com.ultimogol.nucleo.dominio;

import java.lang.String;

privileged aspect Prueba_Roo_JavaBean {
    
    public String Prueba.getValor1() {
        return this.valor1;
    }
    
    public void Prueba.setValor1(String valor1) {
        this.valor1 = valor1;
    }
    
}
