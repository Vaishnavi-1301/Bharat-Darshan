package bharatdarshan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import bharatdarshan.model.admindetails;
import bharatdarshan.model.booking;
import bharatdarshan.model.gallery;
import bharatdarshan.model.packages;
import bharatdarshan.model.places;
import bharatdarshan.repo.adminrepo;
import bharatdarshan.repo.bookingrepo;
import bharatdarshan.repo.galleryrepo;
import bharatdarshan.repo.packagerepo;
import bharatdarshan.repo.placesrepo;
import bharatdarshan.repo.userrepo;
@Service
public class admindao implements adminservices
{
	@Autowired
	adminrepo ar;
	@Autowired
	galleryrepo gr;
	@Autowired
	packagerepo pr;
	
	@Autowired
	placesrepo plr;
	
	@Autowired
	bookingrepo br;

	@Override
	public admindetails getadmindetailsByEmail(String email) {
		return ar.findByEmail(email);
	}

	@Override
	public void updategallery(gallery g) {
		// TODO Auto-generated method stub
		gr.save(g);
	}

	@Override
	public List<gallery> getallimages() {
		
		return gr.findAll();
	}

	@Override
	public void registration(admindetails admindetails) {
		ar.save(admindetails);
		
	}

	@Override
	public void createpackage(packages p) {
		
		pr.save(p);
	}

	@Override
	public List<packages> getallpackages() {
		
		return pr.findAll();
	}

	@Override
	public void addplace(places pl) {
		plr.save(pl);
		
	}

	@Override
	public List<places> getallplaces() {
		return plr.findAll();
	}

	@Override
	public void deletebypilgrimagename(String pilgrimagename) {
		plr.deletebypilgrimagename(pilgrimagename);
		
	}

	@Override
	public void deletebypackagename(String packagename) {
		pr.deletebypackagename(packagename);
		
	}

	@Override
	public places getplace(String pilgrimagename) {
		
		return plr.getplace(pilgrimagename);
	}

	@Override
	public void updateplace(places p) {
		plr.save(p);
	}

	@Override
	public packages getpackage(String packagename) {
		
		return pr.getpackage(packagename);
	}

	@Override
	public void updatepackage(packages pa) {
		pr.save(pa);
	}

	@Override
	public List<places> getallplacesbypackagename(String packagename) {
		return plr.getallplacesbypackagename(packagename);
	}

	@Override
	public List<packages> gettopthreepackages() {
		return pr.gettopthreepackages();
	}

	@Override
	public List<booking> getallbookings() {
		return br.findAllByDesc();
	}

	
	
	
}
