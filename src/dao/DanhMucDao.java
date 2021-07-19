package dao;

import java.util.ArrayList;

import model.CategoryGuitar;

public interface DanhMucDao {
	public ArrayList<CategoryGuitar> getListDanhMucCha();
	public ArrayList<CategoryGuitar> getListDanhMucChaUkulele();
	public ArrayList<CategoryGuitar> getListDanhMucCon(String maDanhMuc);
	public ArrayList<CategoryGuitar> getListDanhMucConUkulele(String maDanhMuc);
}
