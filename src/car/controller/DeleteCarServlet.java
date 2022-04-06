package car.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.model.service.CarService;

/**
 * Servlet implementation class DeleteCarServlet
 */
@WebServlet(name = "DeleteCar", urlPatterns = { "/deleteCar" })
public class DeleteCarServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //1.인코딩
      request.setCharacterEncoding("utf-8");   
      //2.view값
      String userId = request.getParameter("userId");
      String filename1 = request.getParameter("carimage");
      String filename2 = request.getParameter("carimage2");
      String filename3 = request.getParameter("carimage3");
      String filename4 = request.getParameter("carimage4");
      
      //파일경로
      String root = getServletContext().getRealPath("/");
     String saveDirectory = root + "upload/carphoto";
     //현재 첨부파일 확인
     File delFile1 = new File(saveDirectory+"/"+filename1);
     boolean bool = delFile1.delete();
     File delFile2 = new File(saveDirectory+"/"+filename2);
     boolean bool1 = delFile2.delete();
     File delFile3 = new File(saveDirectory+"/"+filename3);
     boolean bool2 = delFile3.delete();
     File delFile4 = new File(saveDirectory+"/"+filename4);
     boolean bool3 = delFile4.delete();

      //3.로직     
      int result = new CarService().deleteCar(userId);
      //4.결과
      RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
      if(result>0) {
         request.setAttribute("msg", "삭제가 완료되었습니다.");
      }else {
         request.setAttribute("msg", "삭제가 실패되었습니다.");
      }
      request.setAttribute("loc", "/mypage?userId="+userId);
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