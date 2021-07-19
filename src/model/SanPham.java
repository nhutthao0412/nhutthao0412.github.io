package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SanPham implements Comparable<SanPham> {
	String maSanPham;
	String danhMuc;
	String tenSanPham;
	String img;
	int soLuong;
	String moTa;
	int gia;
	int giaKhuyenMai;

	public SanPham(String maSanPham, String danhMuc, String tenSanPham, String img, int soLuong, String moTa, int gia,
			int giaKhuyenMai) {
		this.maSanPham = maSanPham;
		this.danhMuc = danhMuc;
		this.tenSanPham = tenSanPham;
		this.img = img;
		this.soLuong = soLuong;
		this.moTa = moTa;
		this.gia = gia;
		this.giaKhuyenMai = giaKhuyenMai;
	}

	public SanPham() {
	}

	public static SanPham find(int id) {
		try {
			PreparedStatement ps = (PreparedStatement) ConnectToDatabase.getPreparedStatement(
					"SELECT tenSanPham,gia,giaKhuyenMai,img1,maDanhMuc,stt FROM ProductGuitar WHERE stt=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				SanPham p = new SanPham();
				p.maSanPham = rs.getString(6);
				p.tenSanPham = rs.getString(1);
				p.gia = rs.getInt(2);

				p.giaKhuyenMai = rs.getInt(3);
				p.img = rs.getString(4);
				p.danhMuc = rs.getString(5);
				p.soLuong = 1;
				return p;

			}
			return null;
		} catch (SQLException | ClassNotFoundException e) {
			return null;
		}
	}
	
	public static SanPham findUkulele(int id) {
		try {
			PreparedStatement ps = (PreparedStatement) ConnectToDatabase.getPreparedStatement(
					"SELECT tenSanPham,gia,giaKhuyenMai,img1,maDanhMuc,stt FROM ProductUkulele WHERE stt=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				SanPham p = new SanPham();
				p.maSanPham = rs.getString(6);
				p.tenSanPham = rs.getString(1);
				p.gia = rs.getInt(2);

				p.giaKhuyenMai = rs.getInt(3);
				p.img = rs.getString(4);
				p.danhMuc = rs.getString(5);
				p.soLuong = 1;
				return p;

			}
			return null;
		} catch (SQLException | ClassNotFoundException e) {
			return null;
		}
	}

	public String getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(String maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(String danhMuc) {
		this.danhMuc = danhMuc;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
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

	@Override
	public int compareTo(SanPham sp) {
		return Integer.parseInt(maSanPham) - Integer.parseInt(sp.maSanPham);
	}

	public void soLuongUp() {
		this.soLuong++;
	}

	public void soLuongDown() {
		if (soLuong > 1) {
			this.soLuong--;
		} else {
			soLuong = 1;
		}
	}

	public void soLuongUp(int soLuong) {
		setsoLuong(soLuong);
	}

	public int getsoLuong() {
		return soLuong;
	}

	void setsoLuong(int soLuong) {
		if (soLuong < 1)
			soLuong = 1;
		this.soLuong = soLuong;
	}

	public double total() {
		return soLuong * gia;
	}

}
