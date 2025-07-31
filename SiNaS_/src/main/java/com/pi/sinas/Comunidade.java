package com.pi.sinas;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

@Entity
public class Comunidade {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int id;

        private String uf,  cidade, bairro;

    public Comunidade(){};
    public Comunidade(int id, String uf, String cidade, String bairro) {
        this.id = id;
        this.uf = uf;
        this.cidade = cidade;
        this.bairro = bairro;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }
}
