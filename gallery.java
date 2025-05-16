package bharatdarshan.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class gallery 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int gid;
	private String galleryphoto;
	private String about;
	public String getGalleryphoto() {
		return galleryphoto;
	}
	public void setGalleryphoto(String galleryphoto) {
		this.galleryphoto = galleryphoto;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	@Override
	public String toString() {
		return "gallery [gid=" + gid + ", galleryphoto=" + galleryphoto + ", about=" + about + "]";
	}
	
}
