package com.pkg.Model;

import javax.persistence.Cache;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
@Table(name="Annonce")
@SuppressWarnings("serial")
public class Annonce {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "idAnnonce")
	private int idAnnonce;
	
	@NotEmpty
	private String titre;
	@NotEmpty
	private String description;
	@NotEmpty
	private String date;
	
	@NotEmpty
	private String jeu;
	
	@NotEmpty
	private String lieu;
	
	
	
	public String getLieu() {
		return lieu;
	}
	public void setLieu(String lieu) {
		this.lieu = lieu;
	}
	public String getJeu() {
		return jeu;
	}
	public void setJeu(String jeu) {
		this.jeu = jeu;
	}
	@Column(name="user_idUser")
	private int idUser;
	
	
	
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	
	public int getIdAnnonce() {
		return idAnnonce;
	}
	public void setIdAnnonce(int idAnnonce) {
		this.idAnnonce = idAnnonce;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
	
}
