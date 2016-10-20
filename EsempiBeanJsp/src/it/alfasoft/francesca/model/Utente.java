package it.alfasoft.francesca.model;

import javax.persistence.*;

@Entity
public class Utente {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id_Utente;
	
	private String username;
	private String password;
	private String nome;
	private String cognome;
	
	public Utente() {
	}

	public Utente(String nome, String cognome) {
		this.nome = nome;
		this.cognome = cognome;
	}

	public long getId_Utente() {
		return id_Utente;
	}

	public void setId_Utente(long id_Utente) {
		this.id_Utente = id_Utente;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}	

}
