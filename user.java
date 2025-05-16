package bharatdarshan.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class user {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
		private int uid;
		@Column(columnDefinition = "varchar(255) default 'default.jpg'")
		private String profilephoto;
		private String fullname;
		private String nickname;
		private String dob;
		private String gender;
		private String address;
		private double telephone;
		@Column(name = "email", unique = true)
		private String email;
		private String password;
		private String confpassword;
		public int getUid() {
			return uid;
		}
		public void setUid(int uid) {
			this.uid = uid;
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
		public String getNickname() {
			return nickname;
		}
		public void setNickname(String nickname) {
			this.nickname = nickname;
		}
		public String getDob() {
			return dob;
		}
		public void setDob(String dob) {
			this.dob = dob;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
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
		public String getConfpassword() {
			return confpassword;
		}
		public void setConfpassword(String confpassword) {
			this.confpassword = confpassword;
		}
		@Override
		public String toString() {
			return "user [uid=" + uid + ", profilephoto=" + profilephoto + ", fullname=" + fullname + ", nickname="
					+ nickname + ", dob=" + dob + ", gender=" + gender + ", address=" + address + ", telephone="
					+ telephone + ", email=" + email + ", password=" + password + ", confpassword=" + confpassword
					+ "]";
		}
		
		
}