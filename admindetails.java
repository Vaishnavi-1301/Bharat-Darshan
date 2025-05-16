package bharatdarshan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class admindetails {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
		private int aid;
		private String profilephoto;
		private String fullname;
		private String Designation;
		private String nickname;
		private String about;
		private String address;
		private double telephone;
		@Column(name = "email", unique = true)
		private String email;
		private String password;
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
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
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getTelephone() {
		return telephone;
	}
	public void setTelephone(double telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "admin [aid=" + aid + ", profilephoto=" + profilephoto + ", fullname=" + fullname + ", Designation="
				+ Designation + ", nickname=" + nickname + ", about=" + about + ", address=" + address + ", telephone="
				+ telephone + ", email=" + email + ", password=" + password + "]";
	}

}
