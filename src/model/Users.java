package model;

public class Users {
	String username;
	String password;
	String tenKH;
	String diaChi;
	String email;
	String soDienThoai;
	String capBac;
	String active;
	String stt;

	public Users(String username, String password, String tenKH, String diaChi, String email, String soDienThoai,
			String capBac, String active, String stt) {
		super();
		this.username = username;
		this.password = password;
		this.tenKH = tenKH;
		this.diaChi = diaChi;
		this.email = email;
		this.soDienThoai = soDienThoai;
		this.capBac = capBac;
		this.active = active;
		this.stt = stt;
	}

	public String getStt() {
		return stt;
	}

	public void setStt(String stt) {
		this.stt = stt;
	}

	public Users() {
		super();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTenKH() {
		return tenKH;
	}

	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getCapBac() {
		return capBac;
	}

	public void setCapBac(String capBac) {
		this.capBac = capBac;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	@Override
	public String toString() {
		return "Users [username=" + username + ", password=" + password + ", tenKH=" + tenKH + ", diaChi=" + diaChi
				+ ", email=" + email + ", soDienThoai=" + soDienThoai + ", capBac=" + capBac + ", active=" + active
				+ ", stt=" + stt + "]";
	}

}
