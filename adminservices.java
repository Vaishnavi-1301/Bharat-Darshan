package bharatdarshan.service;

import java.util.List;

import bharatdarshan.model.admindetails;
import bharatdarshan.model.booking;
import bharatdarshan.model.gallery;
import bharatdarshan.model.packages;
import bharatdarshan.model.places;

public interface adminservices 
{
	admindetails getadmindetailsByEmail(String email);
	
	

	void updategallery(gallery g);

	List<gallery> getallimages();
	
	

	void registration(admindetails admindetails);
	
	

	void createpackage(packages p);

	List<packages> getallpackages();
	
	

	void addplace(places pl);

	List<places> getallplaces();



	void deletebypilgrimagename(String pilgrimagename);



	void deletebypackagename(String packagename);



	places getplace(String pilgrimagename);



	void updateplace(places p);



	packages getpackage(String packagename);



	void updatepackage(packages pa);



	List<places> getallplacesbypackagename(String packagename);



	List<packages> gettopthreepackages();



	List<booking> getallbookings();
}
