/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author PC
 */
public class Question {

    String id, subjectId, question, optionA, optionB, optionC, optionD, answer;

    public Question(String id, String subjectId, String question, String optionA, String optionB, String optionC, String optionD, String answer) {
        this.id = id;
        this.subjectId = subjectId;
        this.question = question;
        this.optionA = optionA;
        this.optionB = optionB;
        this.optionC = optionC;
        this.optionD = optionD;
        this.answer = answer;
        connect();
    }

    public Question() {
        connect();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getOptionA() {
        return optionA;
    }

    public void setOptionA(String optionA) {
        this.optionA = optionA;
    }

    public String getOptionB() {
        return optionB;
    }

    public void setOptionB(String optionB) {
        this.optionB = optionB;
    }

    public String getOptionC() {
        return optionC;
    }

    public void setOptionC(String optionC) {
        this.optionC = optionC;
    }

    public String getOptionD() {
        return optionD;
    }

    public void setOptionD(String optionD) {
        this.optionD = optionD;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
    Connection cnn;
    PreparedStatement pstm;
    ResultSet rs;

    private void connect() {
        try {
            cnn = (new DBContext()).connection;
            if (cnn != null) {
                System.out.println("Connect success");
            }
        } catch (Exception e) {
            System.out.println("Fail: " + e.getMessage());
        }
    }

    public ArrayList<Question> getAllQuestion(String examCode) {
        ArrayList<Question> list = new ArrayList<>();
        try {
            String sql = "select top 8 * from " + examCode;
            pstm = cnn.prepareStatement(sql);
//            pstm.setString(1, examCode);
            rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new Question(rs.getString(1), rs.getString(2), rs.getString(3),
                         rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getString(8)));
            }
            return list;
        } catch (Exception e) {
            System.out.println("getQuestion: " + e.getMessage());
        }
        return null;
    }

    public ArrayList<Question> getAllQuestion(String examCode, String num) {
        ArrayList<Question> list = new ArrayList<>();
        try {
            String sql = "select top " + num + " * from " + examCode;
            pstm = cnn.prepareStatement(sql);
//            pstm.setString(1, examCode);
            rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new Question(rs.getString(1), rs.getString(2), rs.getString(3),
                         rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getString(8)));
            }
            return list;
        } catch (Exception e) {
            System.out.println("getQuestion: " + e.getMessage());
        }
        return null;
    }
}
