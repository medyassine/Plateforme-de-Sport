package com.pkg.Model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Cascade;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;




@Entity
@Table(name="Utilisateur")
@SuppressWarnings("serial")
public class Utilisateur implements Serializable {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "idUser")
	private int idUser;
	
	@Column(name = "nom")
	@NotEmpty
	private String nom;
	
	@Column(name = "prenom")
	@NotEmpty
	private String prenom;
	
	@Column(name = "login")
	@NotEmpty
	@Size(min=5,max=20)
	private String login;
	
	@Column(name = "password")
	@NotEmpty
	private String password;
	
	@Column(name = "age")
	//@NotEmpty
	@Range(min=4,max=120)
	private int age;

	@Column(name = "email")
	@NotEmpty
	@Email
	private String email;
	
	@Column(name = "tel")
	@NotEmpty
	private String tel;
	
	@ElementCollection
	private Set<Groupe> groupes = new HashSet<Groupe>(0);

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
//    @JoinTable(name = "Utilisateur_Groupe", joinColumns = @JoinColumn(name = "idUser"), inverseJoinColumns = @JoinColumn(name = "idGroupe"))
	//@ManyToMany(cascade = javax.persistence.CascadeType.ALL)
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "Utilisateur_Groupe", joinColumns = { 
			@JoinColumn(name = "idUser", nullable = false, updatable = false) }, 
			inverseJoinColumns = { @JoinColumn(name = "idGroupe", 
					nullable = false, updatable = false) })
	public Set<Groupe> getGroupes() {
        return groupes;
    }

    public void setGroupes(Set<Groupe> groupes) {
        this.groupes = groupes;
    }

}
