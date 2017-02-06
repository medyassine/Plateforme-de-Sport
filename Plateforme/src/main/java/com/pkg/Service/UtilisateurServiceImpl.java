package com.pkg.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pkg.DAO.IUtilisateurDAO;
import com.pkg.Model.Annonce;
import com.pkg.Model.Groupe;
import com.pkg.Model.Utilisateur;

@Service("UtilisateurService")
public class UtilisateurServiceImpl implements IUtilisateurService{

	 @Autowired
	 private IUtilisateurDAO UtilisateurDAO;

	 

	public void setUtilisateurDAO(IUtilisateurDAO utilisateurDAO) {
		UtilisateurDAO = utilisateurDAO;
	}

	public void setLoginDAO(IUtilisateurDAO UtilisateurDAO) {
             this.UtilisateurDAO = UtilisateurDAO;
      }
     
      public Utilisateur checkLogin(String userName, String userPassword){
             System.out.println("In Service class...Check Login");
             return UtilisateurDAO.checkLogin(userName, userPassword);
      }

	public boolean addUser(Utilisateur user) {
		// TODO Auto-generated method stub
		
		return UtilisateurDAO.addUser(user);
	}

	public int getLastId() {
		// TODO Auto-generated method stub
		return UtilisateurDAO.getLastId();
	}
      
	public boolean addGroupe(Groupe g){
		
		return UtilisateurDAO.addGroupe(g);		
	}
	public List<Groupe> groupesByIdOwner(int idOwner){
		return UtilisateurDAO.groupesByIdOwner(idOwner);		
	}

	public boolean addUserToGroupe(Groupe groupe, Utilisateur utilisateur, int idOwner) {
		
		return UtilisateurDAO.addUserToGroupe(groupe, utilisateur, idOwner);
	}

	public Utilisateur getUserById(int idUser) {
		// TODO Auto-generated method stub
		return UtilisateurDAO.getUserById(idUser);
	}

	public boolean addAnnonce(Annonce annonce) {
		return UtilisateurDAO.addAnnonce(annonce);
	}

	public List<Annonce> annoncesByIdOwner(int idOwner) {
		// TODO Auto-generated method stub
		return UtilisateurDAO.annoncesByIdOwner(idOwner);
	}
	
	public boolean deleteAnnonce(Annonce annonce) {
		return UtilisateurDAO.deleteAnnonce(annonce);
	}
		
		

      
	
}
