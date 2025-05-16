package bharatdarshan.repo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import bharatdarshan.model.admindetails;
@Repository
public interface adminrepo extends JpaRepository<admindetails,Integer>
{
	public admindetails findByEmail(String email);
	
	
}
