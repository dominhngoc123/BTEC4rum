function signOut() {
    var check = confirm("Do you want to log out?");
    if (check)
    {
        expiredToken();
    }
}
function expiredToken() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
        window.location = 'logOut.action';
    });
}
function onLoad() {
    gapi.load('auth2', function () {
        gapi.auth2.init();
    });
}