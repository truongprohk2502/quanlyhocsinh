function notBlank(s) {
    for (i = 0; i < s.length; i++) {
        if (s.charAt(i) != " ") {
            return true;
        }
    }
    return false;
}

function validateForm() {
    var id = document.forms['add_form']['id'].value;
    var name = document.forms['add_form']['name'].value;
    var age = document.forms['add_form']['age'].value;
    var address = document.forms['add_form']['address'].value;
    var sex = document.forms['add_form']['sex'].value;
    var mclass = document.forms['add_form']['mclass'].value;
    if (!isNaN(id) && notBlank(id) && notBlank(name)
        && !isNaN(age) && notBlank(age) && notBlank(address) && notBlank(sex) && notBlank(mclass)) {
        return true;
    }
    alert("Thông tin nhập vào không hợp lệ! Xin kiểm tra lại");
    return false;
}