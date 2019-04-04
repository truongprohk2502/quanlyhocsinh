function notBlank(s) {
    for (i = 0; i < s.length; i++) {
        if (s.charAt(i) != " ") {
            return true;
        }
    }
    return false;
}

function validateForm() {
    var name = document.forms['edit_form']['name'].value;
    var age = document.forms['edit_form']['age'].value;
    var address = document.forms['edit_form']['address'].value;
    var mclass = document.forms['edit_form']['mclass'].value;
    if (notBlank(name) && !isNaN(age) && notBlank(age) && notBlank(address) && notBlank(mclass)) {
        return true;
    }
    alert("Thông tin nhập vào không hợp lệ! Xin kiểm tra lại");
    return false;
}