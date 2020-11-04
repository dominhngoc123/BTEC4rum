<%-- 
    Document   : footer
    Created on : Oct 28, 2020, 10:49:34 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <footer id="footer" style="margin-top: 100px;">
        <div class="row">
            <div class="col span-1-of-3">
                <div class="infor-box">
                    <h3>Hà Nội</h3>
                    <ul>
                        <li>
                            <p>Tầng 2, Tòa nhà Detech II, 107 Nguyễn Phong Sắc, Cầu Giấy, Hà Nội</p>
                        </li>
                        <li>
                            <p>Điện thoại: 0981 090 513</p>
                        </li>
                        <li>
                            <p>Email: btec.hn@fpt.edu.vn</p>
                        </li>
                        <li>
                            <p>Hotline: 0981 090 513</p>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col span-1-of-3">
                <div class="infor-box">
                    <h3>Đà Nẵng</h3>
                    <ul>
                        <li>
                            <p>66B Võ Văn Tần, Quận Thanh Khê, TP.Đà Nẵng (Tòa nhà Savico Building)</p>
                        </li>
                        <li>
                            <p>Điện thoại: 0236 730 9268</p>
                        </li>
                        <li>
                            <p>Email: btec.dn@fpt.edu.vn</p>
                        </li>
                        <li>
                            <p>Hotline: 0905 888 535</p>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col span-1-of-3">
                <div class="infor-box">
                    <h3>TP. Hồ Chí Minh</h3>
                    <ul>
                        <li>
                            <p>275 Nguyễn Văn Đậu - Quận Bình Thạnh - TP.Hồ Chí Minh</p>
                        </li>
                        <li>
                            <p>Điện thoại: 028 7300 9268</p>
                        </li>
                        <li>
                            <p>Email: btec.hcm@fpt.edu.vn</p>
                        </li>
                        <li>
                            <p>Hotline: 028 7300 9268 / 0942 25 68 25</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- profile card -->
    <div class="profile-card" id="popup">
        <div class="card-header-left">
            <div class="pic">
                <img src="<s:property value="#session.userAvatar"/>" alt="">
            </div>
            <div class="name"><s:property value="#session.userName"/></div>
            <div class="desc">Developer & Designer</div>
            <div class="sm">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-github"></a>
                <a href="#" class="fab fa-youtube"></a>
            </div>
            <a href="#" class="contact-btn">Contact Me</a>
        </div>

        <div class="card-header-right">
            <a onclick="pop()" class="close" style="color: white;"><i class="fas fa-times"></i></a>
            <table class="info-detail">
                <tr>
                    <td>
                        <h6>Name</h6>
                    </td>
                    <td>
                        <p><s:property value="#session.userName"/></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h6>Date of birth</h6>
                    </td>
                    <td>
                        <p></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h6>Gender</h6>
                    </td>
                    <td>
                        <p></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h6>Address</h6>
                    </td>
                    <td>
                        <p></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h6>Phone Number</h6>
                    </td>
                    <td>
                        <p></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h6></h6>
                    </td>
                    <td>
                        <a onclick="pop2()" class="update-profile" title="Update"><i class="far fa-edit"></i></a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="card-footer">
            <div class="numbers">
                <div class="item">
                    <span>120</span>
                    Posts
                </div>
                <div class="border-card"></div>
                <div class="item">
                    <span>127</span>
                    Scores
                </div>
                <div class="border-card"></div>
                <div class="item">
                    <span>120K</span>
                    Other
                </div>
            </div>
        </div>
    </div>

    <!-- update profile card -->
    <form action="" method="POST">
        <div class="update-profile-card" id="update-popup">
            <div class="update-card-header-left">
                <div class="edit-pic">
                    <div class="update-pic">
                        <img src="<s:property value="#session.userAvatar"/>" alt="">
                    </div>
                    <input type="file" class="edit-pic-title">
                </div>
                <div class="update-name">John Doe</div>
                <div class="update-desc"><textarea type="text" class="input-update-desc" cols="35" rows="4">Description</textarea>
                </div>
            </div>

            <div class="update-card-header-right">
                <a onclick="pop2()" class="update-close" style="color: white;"><i class="fas fa-times"></i></a>
                <table class="update-info-detail">
                    <tr>
                        <td>
                            <h6>Name</h6>
                        </td>
                        <td>
                            <input type="text" class="input-update-profile" placeholder="Input your name">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h6>Date of birth</h6>
                        </td>
                        <td>
                            <input type="date" class="input-update-profile">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h6>Gender</h6>
                        </td>
                        <td>
                            <select name="" id="" class="input-update-profile" style="border: none;">
                                <option value="">Male</option>
                                <option value="">Female</option>
                                <option value="">Other</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h6>Address</h6>
                        </td>
                        <td>
                            <input type="text" class="input-update-profile" placeholder="Input your address">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h6>Phone Number</h6>
                        </td>
                        <td>
                            <input type="number" class="input-update-profile" placeholder="Input your phone number">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h6></h6>
                        </td>
                        <td>
                            <!-- <a href="#" class="update-profile-2">update</i></a> -->
                            <a href="#" class="cancel-update-profile" onclick="cancel_update()">Cancel</a>
                            <input type="submit" value="save" class="update-profile-2">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        // popup profile
        var c = 0;
        function pop() {
            if (c === 0) {
                document.getElementById("popup").style.display = "block";
                c = 1;
            } else {
                document.getElementById("popup").style.display = "none";
                c = 0;
            }
        }
        // popup update profile
        var d = 0;
        function pop2() {
            if (d === 0) {
                document.getElementById("update-popup").style.display = "block";
                d = 1;
            } else {
                document.getElementById("update-popup").style.display = "none";
                d = 0;
            }
        }
        function cancel_update() {
            document.getElementById("update-popup").style.display = "none";
            d = 0;
            document.getElementById("popup").style.display = "block";
        }
    </script>
    <script type="text/javascript" src="include/resources/js/jquery-3.3.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="include/resources/js/scripindex.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

    <!--===============================================================================================-->

    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script> 
</html>
