package com.pkg.Controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pkg.Model.Annonce;
import com.pkg.Model.Groupe;
import com.pkg.Model.Utilisateur;
import com.pkg.Service.IUtilisateurService;

@Controller
@RequestMapping("user")
public class UserController {
 
	
	@Autowired 
	public IUtilisateurService UtilisateurService;

	
	
	
 
	@RequestMapping(value ="/inscription",method = RequestMethod.GET)
	public String inscription(Map model) {
		Utilisateur utilisateur = new Utilisateur();
		
		model.put("utilisateur", utilisateur);
		
		
		
		//UtilisateurService.insertUser(utilisateur);
		return "inscription";
	}
	
	@RequestMapping(value ="/index1",method = RequestMethod.GET)
	public String insncription(Map model) {
		Utilisateur utilisateur = new Utilisateur();
		 
		model.put("utilisateur", utilisateur);
		
		
		
		//UtilisateurService.insertUser(utilisateur);
		return "index1";
	}
	
	
	
	
	@RequestMapping(value ="/inscription",method = RequestMethod.POST)
	public String inscription1(@Valid @ModelAttribute("utilisateur") Utilisateur utilisateur, BindingResult result,Map model) {
		System.out.println(result.hasErrors());
		if (result.hasErrors()) {
			return "index1";
		}
		
		UtilisateurService.addUser(utilisateur);
		
		
		//UtilisateurService.insertUser(utilisateur);
		return "index1";
	}
	
	
	@RequestMapping(value ="/connexion",method = RequestMethod.GET)
	public String showForm(Map model) {
		Utilisateur utilisateur = new Utilisateur();
		
		model.put("utilisateur", utilisateur);
		
		//UtilisateurService.insertUser(utilisateur);
		return "index1";
	}

	@RequestMapping(value ="/connexion",method = RequestMethod.POST)
	public String processForm(@ModelAttribute("utilisateur") Utilisateur utilisateur, BindingResult result,
			Map model,HttpSession session) 
	{

		
		ValidationUtils.rejectIfEmptyOrWhitespace(result, "login", "NotEmpty");
		ValidationUtils.rejectIfEmptyOrWhitespace(result, "password", "NotEmpty");

		if (result.hasErrors())  
			return "index1";
		 
		Utilisateur user = UtilisateurService.checkLogin(utilisateur.getLogin(),
				utilisateur.getPassword());
		if(user != null){
			//model.put("utilisateur", user);
			session.setAttribute("user" , user);
			return "dash";
		}else{
			model.put("errorss", "incorrect login or password !!");
			return "index1";
		}

	}
	

	@RequestMapping(value ="/addgroupe",method = RequestMethod.GET)
	public String addgroupe(Map model) {
		Groupe groupe = new Groupe();
		
		model.put("groupe", groupe);
		
		//UtilisateurService.insertUser(utilisateur);
		return "addgroupe";
	}
	
	
	
	@RequestMapping(value ="/addgroupe",method = RequestMethod.POST)
	public String addgroupepost(@ModelAttribute("groupe") Groupe groupe, BindingResult result,
			Map model,HttpSession session) 
	{

		
		if (result.hasErrors())  
			return "index"; 
		 
		groupe.setIdUser(((Utilisateur)session.getAttribute("user")).getIdUser());
		if(UtilisateurService.addGroupe(groupe)){
			//UtilisateurService.addUserToGroupe(groupe, UtilisateurService.getUserById(1), ((Utilisateur)session.getAttribute("user")).getIdUser());
			model.put("groupes",(ArrayList<Groupe>) UtilisateurService.groupesByIdOwner(((Utilisateur)session.getAttribute("user")).getIdUser()));
			return "groupes";
		}else{
			return "index";
		}

	}
	
	
	@RequestMapping(value ="/groupes",method = RequestMethod.GET)
	public String groupes(Map model,HttpSession session) {
		
		model.put("groupes",(ArrayList<Groupe>) UtilisateurService.groupesByIdOwner(((Utilisateur)session.getAttribute("user")).getIdUser()));
		
		//UtilisateurService.insertUser(utilisateur);
		return "groupes";
	}
	
	
	@RequestMapping(value ="/addannonce",method = RequestMethod.GET)
	public String addannonce(Map model,HttpSession session) {
		Annonce annonce = new Annonce();
		model.put("annonce", annonce);
		
		//UtilisateurService.insertUser(utilisateur);
		return "addannonce";
	}
	
	@RequestMapping(value ="/addannonce",method = RequestMethod.POST)
	public String addannoncepost(@Valid @ModelAttribute("annonce") Annonce annonce, BindingResult result,
			Map model,HttpSession session) 
	{

		
		if (result.hasErrors())  
			return "addannonce";  
		
		annonce.setIdUser(((Utilisateur)session.getAttribute("user")).getIdUser());
		if(UtilisateurService.addAnnonce(annonce)){
			model.put("annonces",(ArrayList<Annonce>) UtilisateurService.annoncesByIdOwner(((Utilisateur)session.getAttribute("user")).getIdUser()));
			return "annonces";
		}else
			return "addannonce";
		

	}
	@RequestMapping(value ="/annonces",method = RequestMethod.GET)
	public String annonces(Map model,HttpSession session) {
		
		model.put("annonces",(ArrayList<Annonce>) UtilisateurService.annoncesByIdOwner(((Utilisateur)session.getAttribute("user")).getIdUser()));
		return "annonces";
	}
	
	
	
	@RequestMapping(value ="/deconnecter" ,method = RequestMethod.GET)
	public String deconnexion(Map model,HttpSession session) {
		session.invalidate();
		Utilisateur utilisateur = new Utilisateur();
		 
		model.put("utilisateur", utilisateur);
		
		
		return "index1";
	}
	
	@RequestMapping(value ="/delannonce/{idAnnone}",method = RequestMethod.GET)
	public String delannonce(Map model,@PathVariable(value="idAnnone") final int id,HttpSession session) {
		Annonce a = new Annonce();
		a.setIdAnnonce(id);
		UtilisateurService.deleteAnnonce(a);
		model.put("annonces",(ArrayList<Annonce>) UtilisateurService.annoncesByIdOwner(((Utilisateur)session.getAttribute("user")).getIdUser()));

		return "annonces";
	}
	
	

}
