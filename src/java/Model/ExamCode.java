/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class ExamCode {

    String ExamCode, SubjectID, Duration, NumOfQuestion;

    public ExamCode() {
        connect();
    }

    public ExamCode(String ExamCode) {
        connect();
        this.ExamCode = ExamCode;
    }

    public ExamCode(String ExamCode, String SubjectID, String Duration, String NumOfQuestion) {
        connect();
        this.ExamCode = ExamCode;
        this.SubjectID = SubjectID;
        this.Duration = Duration;
        this.NumOfQuestion = NumOfQuestion;
    }

    public String getExamCode() {
        return ExamCode;
    }

    public void setExamCode(String ExamCode) {
        this.ExamCode = ExamCode;
    }

    public String getSubjectID() {
        return SubjectID;
    }

    public void setSubjectID(String SubjectID) {
        this.SubjectID = SubjectID;
    }

    public String getDuration() {
        return Duration;
    }

    public void setDuration(String Duration) {
        this.Duration = Duration;
    }

    public String getNumOfQuestion() {
        return NumOfQuestion;
    }

    public void setNumOfQuestion(String NumOfQuestion) {
        this.NumOfQuestion = NumOfQuestion;
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

    public boolean checkExamCode() {
        connect();
        try {
            String strExist = "select * from ExamCode\n"
                    + "where ExamCode=?";
            pstm = cnn.prepareStatement(strExist);
            pstm.setString(1, ExamCode);
            rs = pstm.executeQuery();
            while (rs.next()) {
                Duration = rs.getString(3);
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkExamCode: " + e.getMessage());
        }
        return false;
    }

    public void getExam() {
        connect();
        try {
            String strExist = "select * from ExamCode\n"
                    + "where ExamCode=?";
            pstm = cnn.prepareStatement(strExist);
            pstm.setString(1, ExamCode);
            rs = pstm.executeQuery();
            while (rs.next()) {
                ExamCode = rs.getString(1);
                SubjectID =rs.getString(2);
                Duration = rs.getString(3);
                NumOfQuestion =rs.getString(4);
            }
        } catch (Exception e) {
            System.out.println("checkExamCode: " + e.getMessage());
        }
    }

    public String getSubjectIdByCode(String examCode) {
        //select subjectId from ExamCode where examCode = ?
        try {
            String strExist = "select subjectId from ExamCode where examCode = ?";
            pstm = cnn.prepareStatement(strExist);
            pstm.setString(1, examCode);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println("getSubjectIdByCode: " + e.getMessage());
        }
        return "";
    }
}
