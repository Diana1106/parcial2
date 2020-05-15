package comEntidadesDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.parcial2.model.Usu;

public class LoginDao {
public List<Usu> RevisarUsuario(Usu usu){
	
	
	List<Usu> listaUsser = new ArrayList<>();
	EntityManager em;
	EntityManagerFactory emf;
	
	emf= Persistence.createEntityManagerFactory("par2P3-hibernatePar2");
     em=emf.createEntityManager();
	try {
		
 em.getTransaction().begin();
 listaUsser=em.createQuery("FROM Usu  AS u where u.nombre='"+usu.getNombre()+"' and u.contrasenia='"+usu.getContrasenia()+"'").getResultList();
 
 
 em.getTransaction().commit();
 
} catch (Exception e) {
	// TODO: handle exception
System.out.println(e);
}
return listaUsser;
}
}
