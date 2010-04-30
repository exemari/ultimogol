package com.ultimogol.admin.web.pruebas.controladores;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ultimogol.nucleo.dominio.Prueba;

@RooWebScaffold(path = "prueba", automaticallyMaintainView = true, formBackingObject = Prueba.class)
@RequestMapping("/prueba/**")
@Controller
public class PruebaController {
}
