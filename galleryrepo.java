package bharatdarshan.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import bharatdarshan.model.gallery;


@Repository
public interface galleryrepo extends JpaRepository<gallery,Integer>
{

}
