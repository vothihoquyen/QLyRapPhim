package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PhimDAO;
import dao.ThanhVienDAO;
import model.Phim;
import model.ThanhVien;

/**
 * Servlet implementation class CTPhim
 */
@WebServlet("/CTPhim")
public class CTPhim extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CTPhim() {
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
		
		
		String hinh = request.getParameter("hinh");
		session.setAttribute("hinh", hinh);
		
		String ngay = request.getParameter("ngay");
		session.setAttribute("ngay", ngay);
		
		
		String tenLP = request.getParameter("tenLP");
		session.setAttribute("tenLP", tenLP);
		
		String tenDV = request.getParameter("tenDV");
		session.setAttribute("tenDV", tenDV);

		String tenDD = request.getParameter("tenDD");
		session.setAttribute("tenDD", tenDD);
		
		String TL = request.getParameter("TL");
		session.setAttribute("TL", TL);
		String tomtacnoidung = request.getParameter("tomtacnoidung");
		session.setAttribute("tomtacnoidung", tomtacnoidung);
		String name = request.getParameter("name");
		session.setAttribute("name", name);
		String iDPhim = request.getParameter("iDPhim");
		session.setAttribute("iDPhim", iDPhim);
		String chiTiet = request.getParameter("chiTiet");
		session.setAttribute("chiTiet", chiTiet);
		
		
		String link;
		if (error) {
			link = request.getContextPath() + "/film/CTPhim.jsp";
			response.sendRedirect(link);
		} else {
			
			Phim phim = new Phim(iDPhim, name, hinh, ngay, tenDV, tenLP, tenDD, tomtacnoidung, TL, chiTiet);
			PhimDAO.getTV(phim.getiDPhim());
			link = request.getContextPath() + "/film/Phim.jsp";
			link = request.getContextPath() + "/film/PhimSapChieu.jsp";
			response.sendRedirect(link);
		}
	}

}
