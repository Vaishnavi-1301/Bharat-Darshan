package bharatdarshan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class booking {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
		private int bid;
		private String email;
		private String packageorplace;
		private String pilgrimagename;
		private int totalpilgrims;
		@Column(columnDefinition = "varchar(1200)")
		private String allpilgrimnames;
		private int totalcost;
		private String dateofbooking;
		private String pilgrimagedate;
		private int pilgrimagemonth;
		private int pilgrimageyear;
		public int getBid() {
			return bid;
		}
		public void setBid(int bid) {
			this.bid = bid;
		}
		
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPackageorplace() {
			return packageorplace;
		}
		public void setPackageorplace(String packageorplace) {
			this.packageorplace = packageorplace;
		}
		public String getPilgrimagename() {
			return pilgrimagename;
		}
		public void setPilgrimagename(String pilgrimagename) {
			this.pilgrimagename = pilgrimagename;
		}
		public int getTotalpilgrims() {
			return totalpilgrims;
		}
		public void setTotalpilgrims(int totalpilgrims) {
			this.totalpilgrims = totalpilgrims;
		}
		public String getAllpilgrimnames() {
			return allpilgrimnames;
		}
		public void setAllpilgrimnames(String allpilgrimnames) {
			this.allpilgrimnames = allpilgrimnames;
		}
		
		public String getDateofbooking() {
			return dateofbooking;
		}
		public void setDateofbooking(String dateofbooking) {
			this.dateofbooking = dateofbooking;
		}
		public String getPilgrimagedate() {
			return pilgrimagedate;
		}
		public void setPilgrimagedate(String pilgrimagedate) {
			this.pilgrimagedate = pilgrimagedate;
		}
		public int getPilgrimagemonth() {
			return pilgrimagemonth;
		}
		public void setPilgrimagemonth(int pilgrimagemonth) {
			this.pilgrimagemonth = pilgrimagemonth;
		}
		public int getPilgrimageyear() {
			return pilgrimageyear;
		}
		public void setPilgrimageyear(int pilgrimageyear) {
			this.pilgrimageyear = pilgrimageyear;
		}
		
		public int getTotalcost() {
			return totalcost;
		}
		public void setTotalcost(int totalcost) {
			this.totalcost = totalcost;
		}
		@Override
		public String toString() {
			return "booking [bid=" + bid + ", email=" + email + ", packageorplace=" + packageorplace
					+ ", pilgrimagename=" + pilgrimagename + ", totalpilgrims=" + totalpilgrims + ", allpilgrimnames="
					+ allpilgrimnames + ", totalcost=" + totalcost + ", dateofbooking=" + dateofbooking
					+ ", pilgrimagedate=" + pilgrimagedate + ", pilgrimagemonth=" + pilgrimagemonth
					+ ", pilgrimageyear=" + pilgrimageyear + "]";
		}
		
		
}
