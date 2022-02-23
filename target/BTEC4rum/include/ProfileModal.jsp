<%-- 
    Document   : Modal
    Created on : Dec 23, 2020, 4:04:19 PM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- *Modal profile-->
<div class="modal fade edit-modal-profile" id="profile-modal" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg edit-modal-dialog-profile" role="document">
        <div class="modal-content edit-modal-content">
            <div class="modal-header edit-modal-header">
                <button type="button" class="edit-modal-show-more"><i class="fas fa-angle-double-right"
                                                                      onclick="change_profile()"></i></button>
                <button type="button" class="close edit-close-profile" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body modal-body-profile">
                <div class="modal-body-profile-left" id="modal-body-profile-left">
                    <div class="modal-body-profile-pic">
                        <img src="<s:property value="#session.userAvatar"/>" alt="<s:property value="userFullName"/>">
                    </div>
                    <div class="modal-body-profile-name"><span><s:property value="#session.userFullName"/></span>
                    </div>
                    <div class="modal-body-profile-desc"><span><s:property value="#session.userDescription"/></span></div>
                    <div class="modal-body-profile-sm">
                        <a href="https://www.facebook.com/La.Mort.En.Silence/" class="fab fa-facebook-f"></a>
                        <a href="#" class="fab fa-twitter"></a>
                        <a href="#" class="fab fa-github"></a>
                        <a href="#" class="fab fa-youtube"></a>
                    </div>
                    <a href="#" class="modal-body-profile-contact-btn">Contact Me</a>
                </div>
                <div class="modal-body-profile-right" id="modal-body-profile-right">
                    <ul>
                        <li>
                            <h6>Name</h6><span><s:property value="#session.userFullName"/></span>
                        </li>
                        <li>
                            <h6>Date of birth</h6><span><s:property value="#session.userDoB"/></span>
                        </li>
                        <li>
                            <h6>Gender</h6><span><s:if test="#session.userGender == 1">Male</s:if><s:elseif test="#session.userGender == 2">Female</s:elseif><s:else>Other</s:else></span>
                            </li>
                            <li>
                                        <h6>Address</h6><span><s:property value="#session.userAddress"/></span>
                        </li>
                        <li>
                            <h6>Phone Number</h6><span><s:property value="#session.userPhonenumber"/></span>
                        </li>
                        <li>
                            <button type="button" data-dismiss="modal" data-toggle="modal"
                                    data-target="#update-profile-modal"><i class="fas fa-user-edit"></i></button>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="modal-footer  modal-footer-profile">
                <div class="modal-footer-profile-numbers">
                    <div class="modal-footer-profile-item">
                        <span>120</span>
                        <span>Posts</span>
                    </div>
                    <div class="modal-footer-profile-border-card"></div>
                    <div class="modal-footer-profile-item">
                        <span>127</span>
                        <span>Scores</span>
                    </div>
                    <div class="modal-footer-profile-border-card"></div>
                    <div class="modal-footer-profile-item">
                        <span>120K</span>
                        <span>Other</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- *Modal update profile-->
<div class="modal fade edit-modal-profile" id="update-profile-modal" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog  edit-modal-dialog-profile" role="document">
        <div class="modal-content edit-modal-content">
            <div class="modal-header edit-modal-header">
                <button type="button" class="close edit-close-profile" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body modal-body-profile modal-body-profile-update">
                <form id="updateProfileModal" action="" method="POST">
                    <div class="form-row-update-profile">
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="validationDefault01">Name</label>
                                <input type="text" class="form-control form-control-sm" id="validationDefault01"
                                       value="<s:property value="#session.userFullName"/>" minlength="6" maxlength="50" required>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationDefault02">Date of birth</label>
                                <input type="date" class="form-control form-control-sm" id="validationDefault02"
                                       value="<s:property value="#session.userDoB"/>" required>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationDefault03">Gender</label>
                                <select class="form-control form-control-sm" id="validationDefault03" required>
                                    <option value="1" <s:if test="#session.userGender == 1">selected</s:if>>Male</option>
                                    <option value="2" <s:if test="#session.userGender == 2">selected</s:if>>Female</option>
                                    <option value="3" <s:if test="#session.userGender == 3">selected</s:if>>Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault04">Description</label>
                                    <input type="text" class="form-control form-control-sm" value="<s:property value="#session.userDescription"/>" id="validationDefault04"
                                       required>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationDefault05">Phone Number</label>
                                <input type="number" class="form-control form-control-sm" id="validationDefault05"
                                       min="100000000" onKeyPress="if (this.value.length == 10)
                                                   return false;" value="<s:property value="#session.userPhonenumber"/>">
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationDefault07">Avatar</label>
                                <input type="file" class="form-control form-control-sm form-control-file-avatar"
                                       id="validationDefault07">
                            </div>
                        </div>
                        <div class="form-row ">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault06">Address</label>
                                <input type="text" class="form-control form-control-sm" value="<s:property value="#session.userAddress"/>" id="validationDefault06"
                                       minlength="10" maxlength="100">
                            </div>
                        </div>
                    </div>
                    <div class="btn-action-update-profile">
                        <button class="btn btn-warning btn-jump btn-update-profile btn-update-profile-back"
                                type="button" data-dismiss="modal" data-toggle="modal"
                                data-target="#profile-modal">Back</button>
                        <button class="btn btn-success btn-jump btn-update-profile btn-update-profile-save"
                                type="submit">Save</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer  modal-footer-profile">
                <div class="modal-footer-profile-numbers">
                    <div class="modal-footer-profile-item">
                        <span>120</span>
                        <span>Posts</span>
                    </div>
                    <div class="modal-footer-profile-border-card"></div>
                    <div class="modal-footer-profile-item">
                        <span>127</span>
                        <span>Scores</span>
                    </div>
                    <div class="modal-footer-profile-border-card"></div>
                    <div class="modal-footer-profile-item">
                        <span>120K</span>
                        <span>Other</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>                               