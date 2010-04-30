package com.ultimogol.admin.web.pruebas.controladores;

import com.ultimogol.nucleo.dominio.Prueba;
import java.lang.Long;
import java.lang.String;
import javax.validation.Valid;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect PruebaController_Roo_Controller {
    
    @RequestMapping(value = "/prueba", method = RequestMethod.POST)
    public String PruebaController.create(@Valid Prueba prueba, BindingResult result, ModelMap modelMap) {
        if (prueba == null) throw new IllegalArgumentException("A prueba is required");
        if (result.hasErrors()) {
            modelMap.addAttribute("prueba", prueba);
            return "prueba/create";
        }
        prueba.persist();
        return "redirect:/prueba/" + prueba.getId();
    }
    
    @RequestMapping(value = "/prueba/form", method = RequestMethod.GET)
    public String PruebaController.createForm(ModelMap modelMap) {
        modelMap.addAttribute("prueba", new Prueba());
        return "prueba/create";
    }
    
    @RequestMapping(value = "/prueba/{id}", method = RequestMethod.GET)
    public String PruebaController.show(@PathVariable("id") Long id, ModelMap modelMap) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        modelMap.addAttribute("prueba", Prueba.findPrueba(id));
        return "prueba/show";
    }
    
    @RequestMapping(value = "/prueba", method = RequestMethod.GET)
    public String PruebaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, ModelMap modelMap) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            modelMap.addAttribute("pruebas", Prueba.findPruebaEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) Prueba.countPruebas() / sizeNo;
            modelMap.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            modelMap.addAttribute("pruebas", Prueba.findAllPruebas());
        }
        return "prueba/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PruebaController.update(@Valid Prueba prueba, BindingResult result, ModelMap modelMap) {
        if (prueba == null) throw new IllegalArgumentException("A prueba is required");
        if (result.hasErrors()) {
            modelMap.addAttribute("prueba", prueba);
            return "prueba/update";
        }
        prueba.merge();
        return "redirect:/prueba/" + prueba.getId();
    }
    
    @RequestMapping(value = "/prueba/{id}/form", method = RequestMethod.GET)
    public String PruebaController.updateForm(@PathVariable("id") Long id, ModelMap modelMap) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        modelMap.addAttribute("prueba", Prueba.findPrueba(id));
        return "prueba/update";
    }
    
    @RequestMapping(value = "/prueba/{id}", method = RequestMethod.DELETE)
    public String PruebaController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size) {
        if (id == null) throw new IllegalArgumentException("An Identifier is required");
        Prueba.findPrueba(id).remove();
        return "redirect:/prueba?page=" + ((page == null) ? "1" : page.toString()) + "&size=" + ((size == null) ? "10" : size.toString());
    }
    
}
