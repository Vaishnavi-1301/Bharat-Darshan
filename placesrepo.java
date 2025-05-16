package bharatdarshan.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import bharatdarshan.model.places;

@Repository
public interface placesrepo extends JpaRepository<places,Integer>
{
	@Modifying
	@Transactional
	@Query(value="DELETE FROM places p WHERE p.pilgrimagename=?1")
	void deletebypilgrimagename(String pilgrimagename);

	
	@Query(value = "SELECT * FROM places p WHERE p.pilgrimagename=?1",nativeQuery = true)
	places getplace(String pilgrimagename);

	@Query(value = "SELECT * FROM places p WHERE p.packagename=?1",nativeQuery = true)
	List<places> getallplacesbypackagename(String packagename);


	
	
	

}
