package bharatdarshan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class places 
{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int plid;
	private String pilgrimagename;
	@Column(columnDefinition = "varchar(1200)")
	private String aboutpilgrimage;
	private String pilgrimagephoto;
	private String packagename;
	private int pilgrimagecost;
	private int days;
	private int nights;
	private String pilgrimagelocation;
	public int getPlid() {
		return plid;
	}
	public void setPlid(int plid) {
		this.plid = plid;
	}
	public String getPilgrimagename() {
		return pilgrimagename;
	}
	public void setPilgrimagename(String pilgrimagename) {
		this.pilgrimagename = pilgrimagename;
	}
	public String getAboutpilgrimage() {
		return aboutpilgrimage;
	}
	public void setAboutpilgrimage(String aboutpilgrimage) {
		this.aboutpilgrimage = aboutpilgrimage;
	}
	public String getPilgrimagephoto() {
		return pilgrimagephoto;
	}
	public void setPilgrimagephoto(String pilgrimagephoto) {
		this.pilgrimagephoto = pilgrimagephoto;
	}
	public int getPilgrimagecost() {
		return pilgrimagecost;
	}
	public void setPilgrimagecost(int pilgrimagecost) {
		this.pilgrimagecost = pilgrimagecost;
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
	public String getPilgrimagelocation() {
		return pilgrimagelocation;
	}
	public void setPilgrimagelocation(String pilgrimagelocation) {
		this.pilgrimagelocation = pilgrimagelocation;
	}
	
	public String getPackagename() {
		return packagename;
	}
	public void setPackagename(String packagename) {
		this.packagename = packagename;
	}
	@Override
	public String toString() {
		return "places [plid=" + plid + ", pilgrimagename=" + pilgrimagename + ", aboutpilgrimage=" + aboutpilgrimage
				+ ", pilgrimagephoto=" + pilgrimagephoto + ", packagename=" + packagename + ", pilgrimagecost="
				+ pilgrimagecost + ", days=" + days + ", nights=" + nights + ", pilgrimagelocation="
				+ pilgrimagelocation + "]";
	}
	 
}
