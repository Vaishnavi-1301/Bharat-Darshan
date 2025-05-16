package bharatdarshan.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import bharatdarshan.model.feedback;


@Repository
public interface feedbackrepo extends JpaRepository<feedback,Integer>
{

	 @Query(value = "SELECT e from feedback e order by e.fid desc")
	    List<feedback> findFeedbacksByDesc(); 

}
