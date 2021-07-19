package controller;

import java.util.Collection;
import java.util.HashMap;

import model.SanPham;

public class Cart {
	static HashMap<Integer, SanPham> data;

	public Cart() {
		this.data = new HashMap<>();
	}

	public SanPham get(int id) {
		return data.get(id);
	}

	public int put(SanPham p) {
		if (data.containsKey(Integer.parseInt(p.getMaSanPham())))
			data.get(Integer.parseInt(p.getMaSanPham())).soLuongUp();
		else
			data.put(Integer.parseInt(p.getMaSanPham()), p);
		return data.get(Integer.parseInt(p.getMaSanPham())).getSoLuong();
	}

	public int put(int id, int quantity) {
		if (data.containsKey(id))
			data.get(id).soLuongUp(quantity);
		return data.get(id).getSoLuong();
	}

	public boolean remove(int id) {
		return data.remove(id) == null;
	}

	public double total() {
		double sum = 0;
		for (SanPham p : data.values())
			sum += (p.getSoLuong() * p.getGia());
		return sum;

	}

	public Collection<SanPham> list() {
		return data.values();
	}

	public static void main(String[] args) {
		System.out.println(data);
	}
}
