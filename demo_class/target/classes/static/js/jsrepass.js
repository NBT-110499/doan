var check = function() {
    if (document.getElementById('password').value ==
        document.getElementById('repassword').value) {
        document.getElementById('message').style.color = 'green';
        document.getElementById('message').innerHTML = 'matching';
    } else {
        document.getElementById('message').style.color = 'red';
        document.getElementById('message').innerHTML = 'mật khẩu nhập lại không đúng';
    }

}