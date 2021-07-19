package model;

public class CategoryGuitar {
	
	String maDanhMuc;
	String tenLoaiGuitar;
	int active;
	String danhMucCha;
	
	public CategoryGuitar() {
		super();
		
	}

	public CategoryGuitar(String maDanhMuc, String tenLoaiGuitar, int active, String danhMucCha) {
		super();
		this.maDanhMuc = maDanhMuc;
		this.tenLoaiGuitar = tenLoaiGuitar;
		this.active = active;
		this.danhMucCha = danhMucCha;
	}

	public String getMaDanhMuc() {
		return maDanhMuc;
	}

	public void setMaDanhMuc(String maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}

	public String getTenLoaiGuitar() {
		return tenLoaiGuitar;
	}

	public void setTenLoaiGuitar(String tenLoaiGuitar) {
		this.tenLoaiGuitar = tenLoaiGuitar;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public String getDanhMucCha() {
		return danhMucCha;
	}

	public void setDanhMucCha(String danhMucCha) {
		this.danhMucCha = danhMucCha;
	}

	@Override
	public String toString() {
		return "CategoryGuitar [maDanhMuc=" + maDanhMuc + ", tenLoaiGuitar=" + tenLoaiGuitar + ", active=" + active
				+ ", danhMucCha=" + danhMucCha + "]";
	}
	
}
