package bharatdarshan.repo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import bharatdarshan.model.user;
@Repository
public interface userrepo extends JpaRepository<user,Integer>
{
	public user findByEmail(String email);

	
	
	/**@Query(value = "SELECT * FROM user u WHERE u.email=?1 and u.role = 'User'",nativeQuery = true)
	public user finduserByEmail(String email);**/
}
