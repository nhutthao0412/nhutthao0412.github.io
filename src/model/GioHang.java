package model;

import java.util.TreeMap;

public class GioHang {
	private TreeMap<SanPham, Integer> list;
	private long cartID;
	
	public GioHang() {
		list = new TreeMap<>();
		cartID = System.currentTimeMillis();
	}

	public GioHang(TreeMap<SanPham, Integer> list, long cartID) {
		this.list = list;
		this.cartID = cartID;
	}

	public TreeMap<SanPham, Integer> getList() {
		return list;
	}

	public void setList(TreeMap<SanPham, Integer> list) {
		this.list = list;
	}

	public long getCartID() {
		return cartID;
	}

	public void setCartID(long cartID) {
		this.cartID = cartID;
	}
	public void insertToCart(SanPham sp, int soLuong) {
		boolean bln = list.containsKey(sp) ;
		if(bln) {
			int sl = list.get(sp);
			soLuong += sl;
			list.put(sp, soLuong);
		}else {
			list.put(sp, soLuong);
		}
	}
}
