package bharatdarshan.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import bharatdarshan.model.review;

@Repository
public interface reviewrepo extends JpaRepository<review,Integer>
{

}
