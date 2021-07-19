package dao;

import java.sql.ResultSet;
import java.util.ArrayList;


import model.CategoryGuitar;
import model.ConnectToDatabase;
import model.OrderDetail;
import model.ProductGuitar;

public class ProductDAOImpl implements ProductDao {

	@Override
	public ArrayList<ProductGuitar> getListProductByCategory(String maDanhMuc) {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "select * from ProductGuitar where maDanhMuc='" + maDanhMuc + "' and active = 1";
		ArrayList<ProductGuitar> arr = new ArrayList<ProductGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				ProductGuitar p = new ProductGuitar();
				p.setStt(rs.getInt("stt"));
				p.setMaSanPham(rs.getString("maSanPham"));
				p.setTenSanPham(rs.getString("tenSanPham"));
				CategoryGuitar cg = new CategoryGuitar(rs.getString("maDanhMuc"), "", 1, "");
				p.setMaDanhMuc(cg);
				p.setThuongHieu(rs.getString("thuongHieu"));
				p.setKhoangGia(rs.getString("khoangGia"));
				p.setGia(rs.getInt("gia"));
				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
				p.setImg1(rs.getString("img1"));
				p.setImg2(rs.getString("img2"));
				p.setImg3(rs.getString("img3"));
				p.setSoLuong(rs.getInt("soLuong"));
				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
				p.setSoLuongBan(rs.getInt("soLuongBan"));
				p.setMoTa(rs.getString("moTa"));
				p.setInformation(rs.getString("information"));
				p.setActive(rs.getInt("active"));
				arr.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	public static void main(String[] args) {
		ProductDAOImpl pdi = new ProductDAOImpl();
		// System.out.println(pdi.getListProductByCategory("1").size());
		//System.out.println(pdi.getChiTietSanPham("M01").getTenSanPham());
		//System.out.println(pdi.searchListProductByName("Guitar").size());
	}

	@Override
	public ArrayList<ProductGuitar> getListProduct() {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "select * from ProductGuitar where active = 1";
		ArrayList<ProductGuitar> arr = new ArrayList<ProductGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				ProductGuitar p = new ProductGuitar();
				p.setStt(rs.getInt("stt"));
				p.setMaSanPham(rs.getString("maSanPham"));
				p.setTenSanPham(rs.getString("tenSanPham"));
				CategoryGuitar cg = new CategoryGuitar(rs.getString("maDanhMuc"), "", 1, "");
				p.setMaDanhMuc(cg);
				p.setThuongHieu(rs.getString("thuongHieu"));
				p.setKhoangGia(rs.getString("khoangGia"));
				p.setGia(rs.getInt("gia"));
				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
				p.setImg1(rs.getString("img1"));
				p.setImg2(rs.getString("img2"));
				p.setImg3(rs.getString("img3"));
				p.setSoLuong(rs.getInt("soLuong"));
				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
				p.setSoLuongBan(rs.getInt("soLuongBan"));
				p.setMoTa(rs.getString("moTa"));
				p.setInformation(rs.getString("information"));
				p.setActive(rs.getInt("active"));
				arr.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	@Override
	public ArrayList<ProductGuitar> getListProductUkuleleByCategory(String maDanhMuc) {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "select * from ProductUkulele where maDanhMuc='" + maDanhMuc + "' and active = 1";
		ArrayList<ProductGuitar> arr = new ArrayList<ProductGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				ProductGuitar p = new ProductGuitar();
				p.setStt(rs.getInt("stt"));
				p.setMaSanPham(rs.getString("maSanPham"));
				p.setTenSanPham(rs.getString("tenSanPham"));
				CategoryGuitar cg = new CategoryGuitar(rs.getString("maDanhMuc"), "", 1, "");
				p.setMaDanhMuc(cg);
				p.setThuongHieu(rs.getString("thuongHieu"));
				p.setKhoangGia(rs.getString("khoangGia"));
				p.setGia(rs.getInt("gia"));
				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
				p.setImg1(rs.getString("img1"));
				p.setImg2(rs.getString("img2"));
				p.setImg3(rs.getString("img3"));
				p.setSoLuong(rs.getInt("soLuong"));
				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
				p.setSoLuongBan(rs.getInt("soLuongBan"));
				p.setMoTa(rs.getString("moTa"));
				p.setInformation(rs.getString("information"));
				p.setActive(rs.getInt("active"));
				arr.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	@Override
	public ArrayList<ProductGuitar> getListProductUkulele() {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "select * from ProductUkulele where active = 1";
		ArrayList<ProductGuitar> arr = new ArrayList<ProductGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				ProductGuitar p = new ProductGuitar();
				p.setStt(rs.getInt("stt"));
				p.setMaSanPham(rs.getString("maSanPham"));
				p.setTenSanPham(rs.getString("tenSanPham"));
				CategoryGuitar cg = new CategoryGuitar(rs.getString("maDanhMuc"), "", 1, "");
				p.setMaDanhMuc(cg);
				p.setThuongHieu(rs.getString("thuongHieu"));
				p.setKhoangGia(rs.getString("khoangGia"));
				p.setGia(rs.getInt("gia"));
				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
				p.setImg1(rs.getString("img1"));
				p.setImg2(rs.getString("img2"));
				p.setImg3(rs.getString("img3"));
				p.setSoLuong(rs.getInt("soLuong"));
				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
				p.setSoLuongBan(rs.getInt("soLuongBan"));
				p.setMoTa(rs.getString("moTa"));
				p.setInformation(rs.getString("information"));
				p.setActive(rs.getInt("active"));
				arr.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	@Override
	public ProductGuitar getChiTietSanPham(String maSanPham) {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "select * from ProductGuitar where maSanPham='" + maSanPham + "' and active = 1";
		ProductGuitar p = new ProductGuitar();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				p.setStt(rs.getInt("stt"));
				p.setMaSanPham(rs.getString("maSanPham"));
				p.setTenSanPham(rs.getString("tenSanPham"));
				CategoryGuitar cg = new CategoryGuitar(rs.getString("maDanhMuc"), "", 1, "");
				p.setMaDanhMuc(cg);
				p.setThuongHieu(rs.getString("thuongHieu"));
				p.setKhoangGia(rs.getString("khoangGia"));
				p.setGia(rs.getInt("gia"));
				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
				p.setImg1(rs.getString("img1"));
				p.setImg2(rs.getString("img2"));
				p.setImg3(rs.getString("img3"));
				p.setSoLuong(rs.getInt("soLuong"));
				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
				p.setSoLuongBan(rs.getInt("soLuongBan"));
				p.setMoTa(rs.getString("moTa"));
				p.setInformation(rs.getString("information"));
				p.setActive(rs.getInt("active"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	@Override
	public ProductGuitar getChiTietSanPhamUkulele(String maSanPham) {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "select * from ProductUkulele where maSanPham='" + maSanPham + "' and active = 1";
		ProductGuitar p = new ProductGuitar();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				p.setStt(rs.getInt("stt"));
				p.setMaSanPham(rs.getString("maSanPham"));
				p.setTenSanPham(rs.getString("tenSanPham"));
				CategoryGuitar cg = new CategoryGuitar(rs.getString("maDanhMuc"), "", 1, "");
				p.setMaDanhMuc(cg);
				p.setThuongHieu(rs.getString("thuongHieu"));
				p.setKhoangGia(rs.getString("khoangGia"));
				p.setGia(rs.getInt("gia"));
				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
				p.setImg1(rs.getString("img1"));
				p.setImg2(rs.getString("img2"));
				p.setImg3(rs.getString("img3"));
				p.setSoLuong(rs.getInt("soLuong"));
				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
				p.setSoLuongBan(rs.getInt("soLuongBan"));
				p.setMoTa(rs.getString("moTa"));
				p.setInformation(rs.getString("information"));
				p.setActive(rs.getInt("active"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	public ArrayList<ProductGuitar> searchListProductByName(String search) {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "select * from ProductGuitar WHERE [tenSanPham] like '%" + search + "%'";
		ArrayList<ProductGuitar> arr = new ArrayList<ProductGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				ProductGuitar p = new ProductGuitar();
				p.setStt(rs.getInt("stt"));
				p.setMaSanPham(rs.getString("maSanPham"));
				p.setTenSanPham(rs.getString("tenSanPham"));
				CategoryGuitar cg = new CategoryGuitar(rs.getString("maDanhMuc"), "", 1, "");
				p.setMaDanhMuc(cg);
				p.setThuongHieu(rs.getString("thuongHieu"));
				p.setKhoangGia(rs.getString("khoangGia"));
				p.setGia(rs.getInt("gia"));
				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
				p.setImg1(rs.getString("img1"));
				p.setImg2(rs.getString("img2"));
				p.setImg3(rs.getString("img3"));
				p.setSoLuong(rs.getInt("soLuong"));
				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
				p.setSoLuongBan(rs.getInt("soLuongBan"));
				p.setMoTa(rs.getString("moTa"));
				p.setInformation(rs.getString("information"));
				p.setActive(rs.getInt("active"));
				arr.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}
	
	public ArrayList<ProductGuitar> searchListProductByNameUkulele(String search) {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "select * from ProductUkulele WHERE [tenSanPham] like '%" + search + "%'";
		ArrayList<ProductGuitar> arr = new ArrayList<ProductGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				ProductGuitar p = new ProductGuitar();
				p.setStt(rs.getInt("stt"));
				p.setMaSanPham(rs.getString("maSanPham"));
				p.setTenSanPham(rs.getString("tenSanPham"));
				CategoryGuitar cg = new CategoryGuitar(rs.getString("maDanhMuc"), "", 1, "");
				p.setMaDanhMuc(cg);
				p.setThuongHieu(rs.getString("thuongHieu"));
				p.setKhoangGia(rs.getString("khoangGia"));
				p.setGia(rs.getInt("gia"));
				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
				p.setImg1(rs.getString("img1"));
				p.setImg2(rs.getString("img2"));
				p.setImg3(rs.getString("img3"));
				p.setSoLuong(rs.getInt("soLuong"));
				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
				p.setSoLuongBan(rs.getInt("soLuongBan"));
				p.setMoTa(rs.getString("moTa"));
				p.setInformation(rs.getString("information"));
				p.setActive(rs.getInt("active"));
				arr.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	
//	public ArrayList<ProductGuitar> getListOrder() {
//		ConnectToDatabase cons = new ConnectToDatabase();
//		String sql = "select * from OrderDetail where active = 1";
//		ArrayList<OrderDetail> arr = new ArrayList<OrderDetail>();
//		try {
//			ResultSet rs = cons.selectData(sql);
//			while (rs.next()) {
//				OrderDetail p = new OrderDetail();
//				p.setStt(rs.getInt("stt"));
//				p.setMaSanPham(rs.getString("maSanPham"));
//				p.setTenSanPham(rs.getString("tenSanPham"));
//				p.setThuongHieu(rs.getString("thuongHieu"));
//				p.setKhoangGia(rs.getString("khoangGia"));
//				p.setGia(rs.getInt("gia"));
//				p.setGiaKhuyenMai(rs.getInt("giaKhuyenMai"));
//				p.setImg1(rs.getString("img1"));
//				p.setImg2(rs.getString("img2"));
//				p.setImg3(rs.getString("img3"));
//				p.setSoLuong(rs.getInt("soLuong"));
//				p.setSoLuongNhap(rs.getInt("soLuongNhap"));
//				p.setSoLuongBan(rs.getInt("soLuongBan"));
//				p.setMoTa(rs.getString("moTa"));
//				p.setInformation(rs.getString("information"));
//				p.setActive(rs.getInt("active"));
//				arr.add(p);
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return arr;
//	}
}
