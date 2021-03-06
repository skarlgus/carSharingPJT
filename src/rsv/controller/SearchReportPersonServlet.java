package rsv.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.UserService;
import member.model.vo.User;
import rsv.model.service.RsvService;
import rsv.model.vo.Report;

/**
 * Servlet implementation class SearchReportPersonServlet
 */
@WebServlet(name = "SearchReportPerson", urlPatterns = { "/searchReportPerson" })
public class SearchReportPersonServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchReportPersonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //1. 인코딩 시작
            request.setCharacterEncoding("utf-8");
            
            //2. view에서 넘어온 값 저장
            String keyword=request.getParameter("keyword");
            String type=request.getParameter("type");
            
            System.out.println("type : "+type);
            System.out.println("keyword : "+keyword);
            //3. 비즈니스 로직
            ArrayList<Report> list=new RsvService().searchKeyword(type,keyword);
            
            System.out.println("list : "+list);
            RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/views/user/reportUser.jsp");
             request.setAttribute("loc", "/reportUser?reqPage=1");
            request.setAttribute("list", list);
            request.setAttribute("type", type);
            request.setAttribute("key", keyword);
            
            rd.forward(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}