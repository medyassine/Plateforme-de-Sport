package com.pkg.Service;

import java.util.List;

import com.pkg.Model.Annonce;
import com.pkg.Model.Groupe;
import com.pkg.Model.Utilisateur;

public interface IUtilisateurService {

	public Utilisateur checkLogin(String userName, String userPassword);
	public boolean addUser(Utilisateur user);
	public int getLastId();
	public boolean addGroupe(Groupe g);
	public List<Groupe> groupesByIdOwner(int idOwner);
	public boolean addUserToGroupe(Groupe groupe,Utilisateur utilisateur,int idOwner);
	public Utilisateur getUserById(int idUser);
	public boolean addAnnonce(Annonce annonce);
	public List<Annonce> annoncesByIdOwner(int idOwner);
	public boolean deleteAnnonce(Annonce annonce);

}
