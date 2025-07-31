package com.pi.sinas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class PaginaController {

    @Autowired
    private ComunidadeRepository comunidadeRepository;

    @GetMapping("/")
    public String mostrarIndex() {
        return "index";
    }

    @GetMapping("/login")
    public String mostrarLogin() {
        return "login";
    }

    @GetMapping("/cadastrar")
    public String mostrarCadastro(Model model) {
        model.addAttribute("comunidades", comunidadeRepository.findAll());
        return "cadastro";
    }
}
