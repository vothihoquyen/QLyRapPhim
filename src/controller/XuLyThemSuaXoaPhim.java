package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PhimDAO;
import dao.DBConnect;
import model.Phim;

/**
 * Servlet implementation class XuLiThemSuaXoa
 */
@WebServlet("/Phim")
public class XuLyThemSuaXoaPhim extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public XuLyThemSuaXoaPhim() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String chucNang = request.getParameter("chucNang");
		String link;

		if (chucNang.equals("Xoa")) {
			String id = request.getParameter("id");
			new PhimDAO().delete(id);
			link = request.getContextPath() + "/phim/quanLiPhim.jsp";
			response.sendRedirect(link);
		}else if(chucNang.equals("XoaTatCa")) {
			new PhimDAO().deAll();
			link = request.getContextPath() + "/phim/quanLiPhim.jsp";
			response.sendRedirect(link);

		}else if(chucNang.equals("Undo")) {
			new PhimDAO().undo();
			link = request.getContextPath() + "/phim/quanLiPhim.jsp";
			response.sendRedirect(link);
		}else if (chucNang.equals("Sua")) {
			
			String id = request.getParameter("id");
			String iDPhim = request.getParameter("iDPhim");
			String tenPhim = request.getParameter("tenPhim");
			String hinh = request.getParameter("hinh");
			String ngayKhoiChieu = request.getParameter("ngayKhoiChieu");
			String dienVien = request.getParameter("dienVien");
			String loai = request.getParameter("iDLPhim");
			String idDD = request.getParameter("idDD");
			String thoiLuong = request.getParameter("thoiLuong");
			String noiDung = request.getParameter("noiDung");
			String chiTiet = request.getParameter("chiTiet");
			Phim phim = new Phim(iDPhim, tenPhim, hinh, ngayKhoiChieu, dienVien, loai, idDD, thoiLuong, noiDung, chiTiet);
			new PhimDAO().edit(phim);
			link = request.getContextPath() + "/phim/quanLiPhim.jsp";
			response.sendRedirect(link);
		} else if (chucNang.equals("Them")) {
			try {
				String count = "";
				ResultSet rs;
				rs = new DBConnect().chonDuLieuTuDTB("select * from PHIM");
				while (rs.next()) {
					String stt = rs.getString(1);
					count = Integer.parseInt(stt) + 1 + "";
				}
				String tenPhim = request.getParameter("tenPhim");
				String hinh = request.getParameter("hinh");
				String ngayKhoiChieu = request.getParameter("ngayKhoiChieu");
				String dienVien = request.getParameter("dienVien");
				String idDD = request.getParameter("idDD");
				String loai = request.getParameter("iDLPhim");
				String thoiLuong = request.getParameter("thoiLuong");
				String noiDung = request.getParameter("noiDung");
				String chiTiet = request.getParameter("chiTiet");
				Phim phim = new Phim(count, tenPhim, hinh, ngayKhoiChieu, dienVien, loai, idDD, thoiLuong, noiDung,
						chiTiet);
				new PhimDAO().add(phim);
				link = request.getContextPath() + "/phim/quanLiPhim.jsp";
				response.sendRedirect(link);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
		} else {
			System.out.println("abcd");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

}
