package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.ResultSet;
import java.util.*;

import javax.servlet.ServletContext;


import DAO.DatabaseConnection;
import DAO.LichChieuDAO;
import model.*;

@WebServlet("/LichChieu")
public class LichChieu extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LichChieu() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String chucNang = request.getParameter("chucNang");

		if (chucNang == null || chucNang.equals("null")) {
			System.out.println("Non action");
		} else if (chucNang.equals("Delete")) {
			chucNang = request.getParameter("chucNang");
			String id = request.getParameter("id");
			new LichChieuDAO().del(id);
			response.sendRedirect("QlyLichChieu.jsp");
		} else if (chucNang.equals("Edit")) {

			String id = request.getParameter("id");
			String IDsuatchieu = request.getParameter("IDsuatchieu");
			String ngaychieu = request.getParameter("ngaychieu");
			String gio = request.getParameter("gio");
			String IDphim = request.getParameter("IDphim");
	
			model.LichChieu lichchieu = new model.LichChieu(IDsuatchieu, ngaychieu, gio, IDphim);
			System.out.println(lichchieu);
			new LichChieuDAO().edit(lichchieu);
			response.sendRedirect("QlyLichChieu.jsp");
		} else if (chucNang.equals("Add")) {
			try {
				int count = 0;
				ResultSet rs = new DatabaseConnection().selectData("SELECT * FROM dbo.LICHCHIEU");
				while (rs.next()) {
					int num = Integer.parseInt(rs.getString(1));
					count = num;
				}
				count++;
				String IDsuatchieu = request.getParameter("IDsuatchieu");
				String ngaychieu = request.getParameter("ngaychieu");
				String gio = request.getParameter("gio");
				String IDphim = request.getParameter("IDphim");
				model.LichChieu lichchieu = new model.LichChieu(IDsuatchieu,ngaychieu,gio,IDphim);
				System.out.println(lichchieu);
				new LichChieuDAO().add(lichchieu);
				response.sendRedirect("QlyLichChieu.jsp");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e.getMessage());
			}

		} else {
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
