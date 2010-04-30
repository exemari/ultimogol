package com.ultimogol.nucleo.dominio;

import java.lang.String;

privileged aspect Prueba_Roo_ToString {
    
    public String Prueba.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Valor1: ").append(getValor1());
        return sb.toString();
    }
    
}
