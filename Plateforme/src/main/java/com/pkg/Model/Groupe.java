package com.pkg.Model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table(name="Groupe")
@SuppressWarnings("serial")
public class Groupe {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "idGroupe")
	private int idGroupe;
	
	private int idUser;	
	
	private String intitule;
	
	private int taille;
	
	@ElementCollection
	private Set<Utilisateur> users=new HashSet<Utilisateur>(0);
	
	
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	
	public int getIdGroupe() {
		return idGroupe;
	}
	public void setIdGroupe(int idGroupe) {
		this.idGroupe = idGroupe;
	}
	
	public int getTaille() {
		return taille;
	}
	public void setTaille(int taille) {
		this.taille = taille;
	}
	
	
	//@ManyToMany(mappedBy = "groupes")
	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "groupes")
	public Set<Utilisateur> getUsers() {
        return users;
    }

    public void setUsers(Set<Utilisateur> users) {
        this.users = users;
    }
    
    
     
	public String getIntitule() {
		return intitule;
	}
	public void setIntitule(String intitule) {
		this.intitule = intitule;
	}
	@Override
	public String toString() {
		return "Groupe [idGroupe=" + idGroupe + ", intitule=" + intitule + ", taille=" + taille + "]";
	}
	
}
