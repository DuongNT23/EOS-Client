/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Anser;
import Model.ExamCode;
import Model.Question;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author PC
 */
public class Grading extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Grading</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Grading at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String num = request.getParameter("numOfQues");
        Integer numQ = Integer.parseInt(num);
        if (numQ < 5 || numQ > 20) {
            PrintWriter out = response.getWriter();
//            out.print("Please input number between 5 and 20");
            request.setAttribute("message", "Please input number between 5 and 20");
            request.getRequestDispatcher("Choose.jsp").forward(request, response);
        } else {
            HttpSession s = request.getSession();
            String examCode = (String) s.getAttribute("examCode");
            s.setAttribute("num", num);
            ExamCode ex = new ExamCode();
            String subjectId = ex.getSubjectIdByCode(examCode);
            //get questions
            Question q = new Question();
            ArrayList<Question> listQues = new ArrayList<>();
            listQues = q.getAllQuestion(subjectId, num);
            request.setAttribute("listQues", listQues);
            request.getRequestDispatcher("EOS_User.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        HttpSession s = request.getSession();
//        String subjectId = (String) s.getAttribute("subjectId");
//        //get questions
//        Question q = new Question();
//        ArrayList<Question> listQues = new ArrayList<>();
//        listQues = q.getAllQuestion(subjectId);
        HttpSession s = request.getSession();
        String examCode = (String) s.getAttribute("examCode");
        ExamCode ex = new ExamCode();
        String subjectId = ex.getSubjectIdByCode(examCode);
        String num = (String) s.getAttribute("num");
        //get questions
        Question q = new Question();
        ArrayList<Question> listQues = new ArrayList<>();
        listQues = q.getAllQuestion(subjectId, num);
        int count = 0;
        
        for (Question q1 : listQues) {
            String x = q1.getId();
            String userchoice = request.getParameter(x) != null ? request.getParameter(x) : "";
            if (userchoice.equals(q1.getAnswer())) {
                count++;
            }else{
            }
        }
        
        ArrayList<String> listChoice = new ArrayList<>();
        for (Question q1 : listQues) {
            String x = q1.getId();
            String userchoice = request.getParameter(x) != null ? request.getParameter(x) : "";
            listChoice.add(userchoice);
        }
        
//        ArrayList<Question> listCheck = new ArrayList<>();
//        for (Question q1 : listQues) {
//            String x = q1.getId();
//            String userchoice = request.getParameter(x) != null ? request.getParameter(x) : "";
//            if (userchoice.equals(q1.getAnswer())) {
//                count++;
//            }else{
//            }
//        }
        
        String time = request.getParameter("time");
        PrintWriter out = response.getWriter();
        float mark = ((float) count / listQues.size()) * 10;
        
        request.setAttribute("listQues", listQues);
        request.setAttribute("listChoice", listChoice);
        request.setAttribute("mark", mark);
        request.setAttribute("time", time);
        request.getRequestDispatcher("grading.jsp").forward(request, response);
    }
}

/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
