package bharatdarshan.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class review 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int rid;
	private String profilephoto;
	private String fullname;
	private String city;
	private String state;
	private String post;
	private String date;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getProfilephoto() {
		return profilephoto;
	}
	public void setProfilephoto(String profilephoto) {
		this.profilephoto = profilephoto;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "review [rid=" + rid + ", profilephoto=" + profilephoto + ", fullname=" + fullname + ", city=" + city
				+ ", state=" + state + ", post=" + post + ", date=" + date + "]";
	}
	
}
