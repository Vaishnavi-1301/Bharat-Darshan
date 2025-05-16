package bharatdarshan.service;
import java.util.List;

import bharatdarshan.model.booking;
import bharatdarshan.model.feedback;
import bharatdarshan.model.review;
import bharatdarshan.model.user;
public interface userservices
{
	void registration(user u);

	user getuserByEmail(String email);

	List<user> getallusers();

	void sendfeedback(feedback message);

	List<feedback> getallfeedbacks();

	void postreview(review review);

	List<review> getallreviews();

	void bookpilgrimage(booking booking);

	List<booking> getallbookingsbyemail(String email);

			
}
