/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author alunoces
 */
public class Avaliacao {
    
    private String titulo;
    private String usuario;
    private String avaliacao;
    private int nota;

    public Avaliacao() {
    }

    public Avaliacao(String titulo, String usuario, String avaliacao, int nota) {
        this.titulo = titulo;
        this.usuario = usuario;
        this.avaliacao = avaliacao;
        this.nota = nota;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getAvaliacao() {
        return avaliacao;
    }

    public void setAvaliacao(String avaliacao) {
        this.avaliacao = avaliacao;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }
        
}
