/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function getDate(date) {
    document.write(date.substring(8, 10) + "/" + date.substring(5, 7) + "/" + date.substring(0, 4));
}
function getDateTime(date)
{
    var tmp = date.substring(8, 10) + "/" + date.substring(5, 7) + "/" + date.substring(0, 4) + " at ";
    if (date.substring(11, 13) >= 12)
    {
        tmp += (date.substring(11, 13) - 12) + ":";
        tmp += date.substring(14, 16) + " PM";
    } else
    {
        tmp += date.substring(11, 13) + ":";
        tmp += date.substring(14, 16) + " AM";
    }
    document.write(tmp);
}