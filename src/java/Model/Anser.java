/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Anser {
    String choosen_ans, correct_ans;

    public Anser() {
    }

    public Anser(String choosen_ans, String correct_ans) {
        this.choosen_ans = choosen_ans;
        this.correct_ans = correct_ans;
    }

    public String getChoosen_ans() {
        return choosen_ans;
    }

    public void setChoosen_ans(String choosen_ans) {
        this.choosen_ans = choosen_ans;
    }

    public String getCorrect_ans() {
        return correct_ans;
    }

    public void setCorrect_ans(String correct_ans) {
        this.correct_ans = correct_ans;
    }
    
    
}
