package model;

public class OrderDetail {
	int idOrder;
	String tenKH;
	String danhSachTenSanPham;
	int tongSoLuong;
	int tongTien;
	String ngayMua;
	String ngayNhan;
	String ghiChu;
	String diaChi;
	String soDienThoai;
	String email;
	String tinhTrangDonHang;
	int active;

	public OrderDetail() {
		super();
	}
	
	public OrderDetail(int idOrder, String tenKH, String danhSachTenSanPham, int tongSoLuong, int tongTien,
			String ngayMua, String ngayNhan, String ghiChu, String diaChi, String soDienThoai, String email,
			String tinhTrangDonHang, int active) {
		super();
		this.idOrder = idOrder;
		this.tenKH = tenKH;
		this.danhSachTenSanPham = danhSachTenSanPham;
		this.tongSoLuong = tongSoLuong;
		this.tongTien = tongTien;
		this.ngayMua = ngayMua;
		this.ngayNhan = ngayNhan;
		this.ghiChu = ghiChu;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.tinhTrangDonHang = tinhTrangDonHang;
		this.active = active;
	}

	public int getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(int idOrder) {
		this.idOrder = idOrder;
	}

	public String getTenKH() {
		return tenKH;
	}

	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}

	public String getDanhSachTenSanPham() {
		return danhSachTenSanPham;
	}

	public void setDanhSachTenSanPham(String danhSachTenSanPham) {
		this.danhSachTenSanPham = danhSachTenSanPham;
	}

	public int getTongSoLuong() {
		return tongSoLuong;
	}

	public void setTongSoLuong(int tongSoLuong) {
		this.tongSoLuong = tongSoLuong;
	}

	public int getTongTien() {
		return tongTien;
	}

	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}

	public String getNgayMua() {
		return ngayMua;
	}

	public void setNgayMua(String ngayMua) {
		this.ngayMua = ngayMua;
	}

	public String getNgayNhan() {
		return ngayNhan;
	}

	public void setNgayNhan(String ngayNhan) {
		this.ngayNhan = ngayNhan;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTinhTrangDonHang() {
		return tinhTrangDonHang;
	}

	public void setTinhTrangDonHang(String tinhTrangDonHang) {
		this.tinhTrangDonHang = tinhTrangDonHang;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@Override
	public String toString() {
		return "OrderDetail [idOrder=" + idOrder + ", tenKH=" + tenKH + ", danhSachTenSanPham=" + danhSachTenSanPham
				+ ", tongSoLuong=" + tongSoLuong + ", tongTien=" + tongTien + ", ngayMua=" + ngayMua + ", ngayNhan="
				+ ngayNhan + ", ghiChu=" + ghiChu + ", diaChi=" + diaChi + ", soDienThoai=" + soDienThoai + ", email="
				+ email + ", tinhTrangDonHang=" + tinhTrangDonHang + ", active=" + active + "]";
	}

}
