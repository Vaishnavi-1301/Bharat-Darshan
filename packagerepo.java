package bharatdarshan.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import bharatdarshan.model.packages;

@Repository
public interface packagerepo extends JpaRepository<packages,Integer>
{
	@Modifying
	@Transactional
	@Query(value="DELETE FROM packages p WHERE p.packagename=?1")
	void deletebypackagename(String packagename);

	@Query(value = "SELECT * FROM packages p WHERE p.packagename=?1",nativeQuery = true)
	packages getpackage(String packagename);

	
	@Query(value="SELECT * FROM packages p ORDER BY p.pid DESC Limit 0, 3", nativeQuery=true)
	List<packages> gettopthreepackages();
}
