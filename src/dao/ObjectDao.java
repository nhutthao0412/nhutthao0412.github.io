package dao;

public interface ObjectDao {

	public boolean themTaiKhoan(Object obj);

	public boolean kiemTraDangNhap(String username, String password);

	public boolean add(Object obj);

	public boolean edit(Object obj, String id);

	public boolean del(String id);
	
	public boolean checkUser(String username);

}
