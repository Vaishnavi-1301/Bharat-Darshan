package bharatdarshan.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class feedback 
{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int fid;
	private String email;
	private String feedback;
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	@Override
	public String toString() {
		return "feedback [fid=" + fid + ", email=" + email + ", feedback=" + feedback + "]";
	}
	
	
}
