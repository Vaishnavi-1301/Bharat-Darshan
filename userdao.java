package bharatdarshan.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bharatdarshan.model.booking;
import bharatdarshan.model.feedback;
import bharatdarshan.model.review;
import bharatdarshan.model.user;
import bharatdarshan.repo.userrepo;
import bharatdarshan.repo.bookingrepo;
import bharatdarshan.repo.feedbackrepo;
import bharatdarshan.repo.reviewrepo;
@Service
public class userdao implements userservices
{
	@Autowired
	userrepo ur;
	
	@Autowired
	feedbackrepo fr;
	@Autowired
	reviewrepo rr;
	@Autowired
	bookingrepo br;
	
	@Override
	public void registration(user u)
	{
		ur.save(u);
		
	}

	@Override
	public user getuserByEmail(String email) {
		
		return ur.findByEmail(email);
	}

	@Override
	public List<user> getallusers() {
		
		return ur.findAll();
	}

	@Override
	public void sendfeedback(feedback message) {
		fr.save(message);
	}

	@Override
	public List<feedback> getallfeedbacks() {
		
		return fr.findFeedbacksByDesc();
		
	
	}

	@Override
	public void postreview(review review) {
		
		rr.save(review);
	}

	@Override
	public List<review> getallreviews() {
		
		return rr.findAll();
	}

	@Override
	public void bookpilgrimage(booking booking) {
		br.save(booking);
	}

	@Override
	public List<booking> getallbookingsbyemail(String email) {
		return br.findByEmail(email);
	}

	

	

}

	

	
	


