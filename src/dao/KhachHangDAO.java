package dao;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


import model.ConnectToDatabase;
import model.Users;

public class KhachHangDAO implements ObjectDao {
	public static Map<String, Users> mapThanhVien = loadData();

	public KhachHangDAO() {

	}

	private static Map<String, Users> loadData() {
		Map<String, Users> mapTemp = new HashMap<>();
		try {
			ResultSet rs = new ConnectToDatabase().selectData("select * from Users where active = 1");
			while (rs.next()) {
				String username = rs.getString(1);
				String password = rs.getString(2);
				String tenkh = rs.getString(3);
				String diachi = rs.getString(4);
				String email = rs.getString(5);
				String sodienthoai = rs.getString(6);
				String level = rs.getString(7);
				String active = rs.getString(8);
				String stt = rs.getString(9);

				Users user = new Users(username, password, tenkh, diachi, email, sodienthoai, level, active, stt);

				mapTemp.put(user.getUsername(), user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapTemp;
	}

	public boolean checkLogin(String username, String password) {
		Users user = mapThanhVien.get(username);
		if (user != null) {
			if (user.getPassword().equals(password)) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	public boolean kiemTraTaiKhoanTonTai(String username) {
		Users user = mapThanhVien.get(username);
		if (user == null) {
			return true;
		} else {
			return false;
		}

	}

	public boolean themTaiKhoan(Object obj) {
		Users kh = (Users) obj;
		try {
			new ConnectToDatabase().excuteSql(
					"insert into Users values('" + kh.getUsername() + "','" + kh.getPassword() + "','" + kh.getTenKH()
							+ "','" + kh.getDiaChi() + "','" + kh.getEmail() + "','" + kh.getSoDienThoai() + "','"
							+ kh.getCapBac() + "','" + kh.getActive() + "','" + kh.getStt() + "')");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Users layThongTinTaiKhoan(String username) {
		try {
			ResultSet rs = new ConnectToDatabase()
					.selectData("select * from Users where username='" + username + "' and active = 1");
			while (rs.next()) {
				String user = rs.getString(1);
				String password = rs.getString(2);
				String tenkh = rs.getString(3);
				String diachi = rs.getString(4);
				String email = rs.getString(5);
				String sodienthoai = rs.getString(6);
				String level = rs.getString(7);
				String active = rs.getString(8);
				String stt = rs.getString(9);

				return new Users(user, password, tenkh, diachi, email, sodienthoai, level, active, stt);

			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return null;
	}

	@Override
	public boolean kiemTraDangNhap(String username, String password) {
		try {
			ResultSet rs = new ConnectToDatabase()
					.selectData("select * from Users where username='" + username + "' and active = 1");
			while (rs.next()) {
				if (rs.getString(1).equals(username) && rs.getString(2).equals(password)) {
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}

	public static void sendMail(String to, String subject, String text) {
		final String email = "thaotruong041299@gmail.com";
		final String password = "ectpzqgmzlmrlwrx";
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(email, password);
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/plain; charset=UTF-8");
			message.setFrom(new InternetAddress(email));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message);
			System.out.println("Sent message successfully...");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

	}

	public boolean passwordRecovery(String username, String email) {
		Users kh = mapThanhVien.get(username);

		new KhachHangDAO().changePass(username, "TntHTcH");

		if (kh != null) {
			String message1 = "Hello " + kh.getTenKH() + "\n";
			String message2 = "Your new password is: " + kh.getPassword() + "\n";
			String message3 = "Learn more about us \n";
			String message4 = "http://localhost:8080/WebsiteBanHang/about.jsp";
			String message = message1 + message2 + message3 + message4;

			sendMail(email, "Password Recovery!!!", message);
			return true;
		} else {
			System.out.println("No account");
		}
		return false;
	}

	public boolean guiMailXacNhan(String email) {

		String message1 = "Hello " + "\n";
		String message2 = "Welcome to Dan Viet" + "\n";
		String message3 = "Learn more about us \n";
		String message4 = "http://localhost:8080/WebsiteBanHang/index.jsp";
		String message = message1 + message2 + message3 + message4;

		sendMail(email, "Confirm Email!!!", message);

		return true;
	}

	@Override
	public boolean add(Object obj) {
		Users tv = (Users) obj;
		try {
			new ConnectToDatabase().excuteSql(
					"insert into Users values('" + tv.getUsername() + "','" + tv.getPassword() + "','" + tv.getTenKH()
							+ "','" + tv.getDiaChi() + "','" + tv.getEmail() + "','" + tv.getSoDienThoai() + "','"
							+ tv.getCapBac() + "','" + tv.getActive() + "','" + tv.getStt() + "')");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}

	@Override
	public boolean edit(Object obj, String id) {
		Users tv = (Users) obj;
		try {
			new ConnectToDatabase().excuteSql("update Users set tenKH='" + tv.getTenKH() + "',diaChi='" + tv.getDiaChi()
					+ "',email='" + tv.getEmail() + "',soDienThoai='" + tv.getSoDienThoai() + "',capBac='"
					+ tv.getCapBac() + "',active='" + tv.getActive() + "' where stt='" + id + "'");
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean del(String id) {
		try {
			new ConnectToDatabase().excuteSql("delete from Users where stt='" + id + "'");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean changePass(String username, String newPass) {
		Users kh = mapThanhVien.get(username);
		if (kh != null) {
			try {
				new ConnectToDatabase().excuteSql("update Users set password='" + newPass + "' where username='"
						+ kh.getUsername() + "' and active = 1");
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			System.out.println("No account");
		}
		return false;
	}

	public static void main(String[] args) {
		KhachHangDAO khDao = new KhachHangDAO();
		// System.out.println(khDao.mapThanhVien);
		// Users user = new Users("nhutthao0412", "1234", "Thảo", "Cần Giuộc",
		// "17130219@st.hcmuaf.edu.vn", "0359626008",
		// 1, "1");
		// System.out.println(new KhachHangDAO().themTaiKhoan(user));
		// System.out.println(new KhachHangDAO().kiemTraDangNhap("nhutthao", "12345"));
		// System.out.println(new KhachHangDAO().passwordRecovery("nhutthao",
		// "17130219@st.hcmuaf.edu.vn"));

		// sendMail("17130219@st.hcmuaf.edu.vn", "Test", "Hello");
		// System.out.println(new KhachHangDAO().changePass("truongnhutthao", "123"));
		// System.out.println(new KhachHangDAO().layThongTinTaiKhoan("truongnhutthao"));
//		System.out.println(new KhachHangDAO().checkUser("tmdt_CoChau"));
		// System.out.println(new KhachHangDAO().getToken(5));
	}

	@Override
	public boolean checkUser(String username) {
		try {
			ResultSet rs = new ConnectToDatabase()
					.selectData("select username from Users where username='" + username + "'");
			while (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	static public String getToken(int chars) {
		String CharSet = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ234567890";
		String Token = "";
		for (int a = 1; a <= chars; a++) {
			Token += CharSet.charAt(new Random().nextInt(CharSet.length()));
		}
		return Token;
	}

}
