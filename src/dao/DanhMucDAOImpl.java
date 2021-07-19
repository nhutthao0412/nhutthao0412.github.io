package dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import model.CategoryGuitar;
import model.ConnectToDatabase;

public class DanhMucDAOImpl implements DanhMucDao {

	@Override
	public ArrayList<CategoryGuitar> getListDanhMucCha() {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "SELECT * FROM CategoryGuitar WHERE danhMucCha='null' and active=1";
		ArrayList<CategoryGuitar> arr = new ArrayList<CategoryGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				CategoryGuitar cg = new CategoryGuitar();
				cg.setMaDanhMuc(rs.getString("maDanhMuc"));
				cg.setTenLoaiGuitar(rs.getString("tenLoaiGuitar"));
				cg.setActive(rs.getInt("active"));
				cg.setDanhMucCha(rs.getString("danhMucCha"));
				arr.add(cg);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	@Override
	public ArrayList<CategoryGuitar> getListDanhMucCon(String maDanhMuc) {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "SELECT * FROM CategoryGuitar WHERE danhMucCha='" + maDanhMuc + "' and active=1";
		ArrayList<CategoryGuitar> arr = new ArrayList<CategoryGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				CategoryGuitar cg = new CategoryGuitar();
				cg.setMaDanhMuc(rs.getString("maDanhMuc"));
				cg.setTenLoaiGuitar(rs.getString("tenLoaiGuitar"));
				cg.setActive(rs.getInt("active"));
				cg.setDanhMucCha(rs.getString("danhMucCha"));
				arr.add(cg);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	public static void main(String[] args) {
		DanhMucDAOImpl dmdi = new DanhMucDAOImpl();
		System.out.println(dmdi.getListDanhMucCha().size());
		System.out.println(dmdi.getListDanhMucCon("8").size());
	}

	@Override
	public ArrayList<CategoryGuitar> getListDanhMucChaUkulele() {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "SELECT * FROM CategoryUkulele WHERE danhMucCha='null' and active = 1";
		ArrayList<CategoryGuitar> arr = new ArrayList<CategoryGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				CategoryGuitar cg = new CategoryGuitar();
				cg.setMaDanhMuc(rs.getString("maDanhMuc"));
				cg.setTenLoaiGuitar(rs.getString("tenLoaiGuitar"));
				cg.setActive(rs.getInt("active"));
				cg.setDanhMucCha(rs.getString("danhMucCha"));
				arr.add(cg);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	@Override
	public ArrayList<CategoryGuitar> getListDanhMucConUkulele(String maDanhMuc) {
		ConnectToDatabase cons = new ConnectToDatabase();
		String sql = "SELECT * FROM CategoryUkulele WHERE danhMucCha='" + maDanhMuc + "' and active = 1";
		ArrayList<CategoryGuitar> arr = new ArrayList<CategoryGuitar>();
		try {
			ResultSet rs = cons.selectData(sql);
			while (rs.next()) {
				CategoryGuitar cg = new CategoryGuitar();
				cg.setMaDanhMuc(rs.getString("maDanhMuc"));
				cg.setTenLoaiGuitar(rs.getString("tenLoaiGuitar"));
				cg.setActive(rs.getInt("active"));
				cg.setDanhMucCha(rs.getString("danhMucCha"));
				arr.add(cg);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}
}
