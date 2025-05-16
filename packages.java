package bharatdarshan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class packages 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pid;
	private String packagephoto;
	private String packagename;
	@Column(columnDefinition = "varchar(1200)")
	private String aboutpackage;
	private int packagecost;
	private int days;
	private int nights;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPackagephoto() {
		return packagephoto;
	}
	public void setPackagephoto(String packagephoto) {
		this.packagephoto = packagephoto;
	}
	public String getPackagename() {
		return packagename;
	}
	public void setPackagename(String packagename) {
		this.packagename = packagename;
	}
	public String getAboutpackage() {
		return aboutpackage;
	}
	public void setAboutpackage(String aboutpackage) {
		this.aboutpackage = aboutpackage;
	}
	public int getPackagecost() {
		return packagecost;
	}
	public void setPackagecost(int packagecost) {
		this.packagecost = packagecost;
	}
	
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public int getNights() {
		return nights;
	}
	public void setNights(int nights) {
		this.nights = nights;
	}
	@Override
	public String toString() {
		return "packages [pid=" + pid + ", packagephoto=" + packagephoto + ", packagename=" + packagename
				+ ", aboutpackage=" + aboutpackage + ", packagecost=" + packagecost + ", days=" + days + ", nights="
				+ nights + "]";
	}
	
	
}
