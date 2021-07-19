package model;

public class ProductGuitar {
	int stt;
	String maSanPham;
	String tenSanPham;
	CategoryGuitar maDanhMuc;
	String thuongHieu;
	String khoangGia;
	int gia;
	int giaKhuyenMai;
	String img1;
	String img2;
	String img3;
	int soLuong;
	int soLuongNhap;
	int soLuongBan;
	String moTa;
	String information;
	int active;

	public ProductGuitar() {
		super();
	}

	public ProductGuitar(int stt, String maSanPham, String tenSanPham, CategoryGuitar maDanhMuc, String thuongHieu,
			String khoangGia, int gia, int giaKhuyenMai, String img1, String img2, String img3, int soLuong,
			int soLuongNhap, int soLuongBan, String moTa, String information, int active) {
		super();
		this.stt = stt;
		this.maSanPham = maSanPham;
		this.tenSanPham = tenSanPham;
		this.maDanhMuc = maDanhMuc;
		this.thuongHieu = thuongHieu;
		this.khoangGia = khoangGia;
		this.gia = gia;
		this.giaKhuyenMai = giaKhuyenMai;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.soLuong = soLuong;
		this.soLuongNhap = soLuongNhap;
		this.soLuongBan = soLuongBan;
		this.moTa = moTa;
		this.information = information;
		this.active = active;
	}

	public int getStt() {
		return stt;
	}

	public void setStt(int stt) {
		this.stt = stt;
	}

	public String getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(String maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public CategoryGuitar getMaDanhMuc() {
		return maDanhMuc;
	}

	public void setMaDanhMuc(CategoryGuitar maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}

	public String getThuongHieu() {
		return thuongHieu;
	}

	public void setThuongHieu(String thuongHieu) {
		this.thuongHieu = thuongHieu;
	}

	public String getKhoangGia() {
		return khoangGia;
	}

	public void setKhoangGia(String khoangGia) {
		this.khoangGia = khoangGia;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getGiaKhuyenMai() {
		return giaKhuyenMai;
	}

	public void setGiaKhuyenMai(int giaKhuyenMai) {
		this.giaKhuyenMai = giaKhuyenMai;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public int getSoLuongNhap() {
		return soLuongNhap;
	}

	public void setSoLuongNhap(int soLuongNhap) {
		this.soLuongNhap = soLuongNhap;
	}

	public int getSoLuongBan() {
		return soLuongBan;
	}

	public void setSoLuongBan(int soLuongBan) {
		this.soLuongBan = soLuongBan;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@Override
	public String toString() {
		return "ProductGuitar [stt=" + stt + ", maSanPham=" + maSanPham + ", tenSanPham=" + tenSanPham
				+ ", maDanhMuc=" + maDanhMuc + ", thuongHieu=" + thuongHieu + ", khoangGia=" + khoangGia + ", gia="
				+ gia + ", giaKhuyenMai=" + giaKhuyenMai + ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3
				+ ", soLuong=" + soLuong + ", soLuongNhap=" + soLuongNhap + ", soLuongBan=" + soLuongBan + ", moTa="
				+ moTa + ", information=" + information + ", active=" + active + "]";
	}

	
	
//	public static ProductGuitar find(int stt) {
//		try {
//			PreparedStatement ps = (PreparedStatement) ConnectToDatabase
//					.getPreparedStatement("Select * from ProductGuitar Where stt=? and active =1");
//			ps.setInt(1, stt);
//			ResultSet prs = ps.executeQuery();
//			
//			if (prs.next()) {
//				ProductGuitar p = new ProductGuitar();
//				p.stt = prs.getInt(1);
//				p.maSanPham = prs.getString(2);
//				p.tenSanPham = prs.getString(3);
//				p.loaiSanPham = prs.getInt(4);
//				p.thuongHieu = prs.getInt(5);
//				p.khoangGia = prs.getInt(6);
//				p.gia = prs.getInt(7);
//				p.giaKhuyenMai = prs.getInt(8);
//				p.img1 = prs.getString(9);
//				p.img2 = prs.getString(10);
//				p.img3 = prs.getString(11);
//				p.soLuong = prs.getInt(12);
//				p.soLuongNhap = prs.getInt(13);
//				p.soLuongBan = prs.getInt(14);
//				p.moTa = prs.getString(15);
//				p.information = prs.getString(16);
//				p.active = prs.getInt(17);
//				
//				return p;
//			}
//			return null;
//		} catch (SQLException | ClassNotFoundException e) {
//			return null;
//		} 
//		
//	}
}
