/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Ngoc Do Minh
 */
public class ConvertDate {

    public static String getDate(String date) {
        return (date.substring(8, 10) + "/" + date.substring(5, 7) + "/" + date.substring(0, 4));
    }

    public static String getDateTime(String date) {
        String tmp = "";
        if (date != null) {
            tmp = date.substring(8, 10) + "/" + date.substring(5, 7) + "/" + date.substring(0, 4) + " at ";
            if (Integer.parseInt(date.substring(11, 13)) >= 12) {
                tmp += (Integer.parseInt(date.substring(11, 13)) - 12) + ":";
                tmp += date.substring(14, 16) + " PM";
            } else {
                tmp += date.substring(11, 13) + ":";
                tmp += date.substring(14, 16) + " AM";
            }
        }
        return tmp;
    }
}
