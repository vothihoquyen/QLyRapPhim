package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ThanhVienDAO;
import model.ThanhVien;

/**
 * Servlet implementation class addThanhVien
 */
@WebServlet("/addThanhVien")
public class addThanhVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addThanhVien() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html:charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		boolean error = false;
		
		
		String MaTV = request.getParameter("MaTV");
		session.setAttribute("MaTV", MaTV);
		
		String tenTV = request.getParameter("tenTV");
		session.setAttribute("tenTV", tenTV);
		
		
		String gioiTinh = request.getParameter("gioiTinh");
		session.setAttribute("gioiTinh", gioiTinh);
		
		String date = request.getParameter("date");
		session.setAttribute("date", date);

		
		
		String pass = request.getParameter("pass");
		session.setAttribute("pass", pass);
		
		String link;
		
		String MaTV_err = "";
		if (MaTV == null || MaTV.equals("")) {
			MaTV_err = "Trường mã Thành viên không được để trống!";
			error = true;
			request.setAttribute("MaTV_err", MaTV_err);
		}
		String tenTV_err = "";
		if (tenTV == null || tenTV.equals("")) {
			tenTV_err = "Trường này không được để trống!";
			error = true;
			request.setAttribute("tenTV_err", tenTV_err);
		}
		
		String gioiTinh_err = "";
		if (gioiTinh == null || gioiTinh.equals("")) {
			gioiTinh_err = "Trường này không được để trống!";
			error = true;
			request.setAttribute("gioiTinh_err", gioiTinh_err);
		}
		String date_err = "";
		if (date == null || date.equals("")) {
			date_err = "Trường này không được để trống!";
			error = true;
			request.setAttribute("date_err", date_err);
		}
		String pass_err = "";
		if (pass == null || pass.equals("")) {
			pass_err = "Trường này không được để trống!";
			error = true;
			request.setAttribute("pass_err", pass_err);
		}	
		if (error) {
			link = request.getContextPath() + "/admin/ThemTV.jsp";
			response.sendRedirect(link);
		} else {
			
			ThanhVien tv = new ThanhVien( MaTV, tenTV, gioiTinh, date, pass);
			ThanhVienDAO.add(tv);
			link = request.getContextPath() + "/admin/QuanLyTV.jsp";
			response.sendRedirect(link);
		}
	}		
	

}
