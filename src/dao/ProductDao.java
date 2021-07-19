package dao;

import java.util.ArrayList;

import model.ProductGuitar;

public interface ProductDao {
public ArrayList<ProductGuitar> getListProductByCategory(String maDanhMuc);
public ArrayList<ProductGuitar> getListProductUkuleleByCategory(String maDanhMuc);
public ArrayList<ProductGuitar> getListProduct();
public ArrayList<ProductGuitar> getListProductUkulele();

public ProductGuitar getChiTietSanPham(String maSanPham);
public ProductGuitar getChiTietSanPhamUkulele(String maSanPham);
}
