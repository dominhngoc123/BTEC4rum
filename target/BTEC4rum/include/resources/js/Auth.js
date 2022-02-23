/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var session = document.getElementById("0ad941b537a927186263b578e28bfd9b").value;
if (session == "")
{
    alert("Your session is expired. Please login again.")
    expiredToken();
    window.location = "http://localhost:8080/BTEC4rum/logOut";
}


