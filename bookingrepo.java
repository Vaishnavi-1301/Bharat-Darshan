package bharatdarshan.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import bharatdarshan.model.booking;

@Repository
public interface bookingrepo extends JpaRepository<booking,Integer>
{
	@Query(value="SELECT b FROM booking b WHERE b.email=?1 order by b.bid desc")
	List<booking> findByEmail(String email);
	@Query(value="SELECT b FROM booking b order by b.bid desc")
	List<booking> findAllByDesc();

}