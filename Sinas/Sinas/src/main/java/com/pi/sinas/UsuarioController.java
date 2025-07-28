package com.pi.sinas;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UsuarioController {

    @PostMapping("/usuario")
    // @RequestParam vai pegar o valor enviado no formulario em "nome"
    public String handleForm(@RequestParam String nome, @RequestParam String email, Model model) {
        model.addAttribute("nome", nome);
        model.addAttribute("email", email);
        return "resultado";
    }

    @PostMapping("/comunidade")
    public String handleForm(@RequestParam String nome, @RequestParam String email, Model model) {
        model.addAttribute("nome", nome);
        model.addAttribute("email", email);
        return "resultado";
    }
}