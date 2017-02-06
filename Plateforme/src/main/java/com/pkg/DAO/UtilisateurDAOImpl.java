package com.pkg.DAO;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.pkg.Model.Annonce;
import com.pkg.Model.Groupe;
import com.pkg.Model.Utilisateur;


@Repository("UtilisateurDAO")
public class UtilisateurDAOImpl implements IUtilisateurDAO {

	  
				 
	       @Resource(name="sessionFactory")
	       protected SessionFactory sessionFactory;

	       public void setSessionFactory(SessionFactory sessionFactory) {
	              this.sessionFactory = sessionFactory;
	       }
	      
	       protected Session getSession(){
	              return sessionFactory.openSession();
	       }

	       public Utilisateur checkLogin(String userName, String userPassword){
				System.out.println("In Check login");
				Session session = sessionFactory.openSession();
				Utilisateur userFound = null;
				//Query using Hibernate Query Language
				String HQL_QUERY ="from Utilisateur as o where o.login=? and o.password=?";
				Query query = session.createQuery(HQL_QUERY);
				query.setParameter(0,userName);
				query.setParameter(1,userPassword);
				List<Utilisateur> list = query.list();

				if ((list != null) && (list.size() > 0)) {
					userFound= list.get(0);
				}

				session.close();
				return userFound;              
	       }

		public boolean addUser(Utilisateur user) {
			// TODO Auto-generated method stub
			
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			
			session.save(user);		
			session.getTransaction().commit();
			session.close();

			return true;
		}

		public int getLastId() {
			// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
			boolean userFound = false;
			//Query using Hibernate Query Language
			String HQL_QUERY ="select idUser from Utilisateur";
			Query query = session.createQuery(HQL_QUERY);
			
			List<Integer> list = query.list();
			session.close();
			return list.get(list.size()-1);
			
		}

		public boolean addGroupe(Groupe g) {

			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(g); 
			session.getTransaction().commit();
			session.close();
			
			return true;
		}

		public List<Groupe> groupesByIdOwner(int idOwner) {
			
			Session session = sessionFactory.openSession();
			//Query using Hibernate Query Language
			String HQL_QUERY ="from Groupe as g where g.idUser=?";
			Query query = session.createQuery(HQL_QUERY);
			query.setParameter(0,idOwner);
			List<Groupe> list = query.list();
			session.close();
			return list;   
		}

		public boolean addUserToGroupe(Groupe groupe, Utilisateur utilisateur,int idOwner) {
			
			Session session = sessionFactory.openSession();

			session.beginTransaction();
			
			Utilisateur user = session.get(Utilisateur.class, idOwner);
			
			(user.getGroupes()).add(groupe);
					
			session.getTransaction().commit();

			session.close();
			return false;
		}

		public Utilisateur getUserById(int idUser) {
			
			Session session = sessionFactory.openSession();
			Utilisateur user = null;
			//Query using Hibernate Query Language
			String HQL_QUERY ="from Utilisateur as o where o.idUser=?";
			Query query = session.createQuery(HQL_QUERY);
			query.setParameter(0,idUser);
			user = (Utilisateur)query.list().get(0);
			session.close();
			return user;
		} 

		public boolean addAnnonce(Annonce annonce) {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(annonce); 
			session.getTransaction().commit();
			session.close();
			
			return true;
		}

		public List<Annonce> annoncesByIdOwner(int idOwner) {
				
				Session session = sessionFactory.openSession();
				//Query using Hibernate Query Language
				String HQL_QUERY ="from Annonce as g where g.idUser=?";
				Query query = session.createQuery(HQL_QUERY);
				query.setParameter(0,idOwner);
				List<Annonce> list = query.list();
				
				session.close();
				return list;   
			
		}

		public boolean deleteAnnonce(Annonce annonce) {
			// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.clear();
			session.delete(annonce); 
			session.getTransaction().commit();
			session.close();
			
			
			return true;
			
		}

		
		
}
