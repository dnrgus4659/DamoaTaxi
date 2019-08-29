
    function checkAll() {
        if (!checkUserId(form.impairment_ID.value)) {
            return false;
        } else if (!checkPassword(form.impairment_ID.value, form.impairment_Password.value,
                form.impairment_Password_check.value)) {
            return false;
        } else if (!checkMail(form.impairment_email.value)) {
            return false;
        } else if (!checkName(form.impairment_name.value)) {
            return false;
        } else if (!checknum(form.impairment_phone_number.value)) {
            return false;
        } else if (!checkzipcode(form.impairment_zipcode.value)) {
            return false;
        } else if (!checkaddr()) {
            return false;
        } 
        
        return true;
    }

// 공백확인 함수
    function checkExistData(value, dataName) {
        if (value == "") {
            alert(dataName + " 입력해주세요!");
            return false;
        }
        return true;
    }
 
    function checkUserId(impairment_ID) {
        //Id가 입력되었는지 확인하기
        if (!checkExistData(impairment_ID, "아이디를"))
            return false;
 
        var idRegExp = /^[a-zA-z0-9]{4,25}$/; //아이디 유효성 검사
        if (!idRegExp.test(impairment_ID)) {
            alert("아이디는 영문 대소문자와 숫자 4~25자리로 입력해야합니다!");
            form.impairment_ID.value = "";
            form.impairment_ID.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
 
    function checkPassword(impairment_ID, impairment_Password, impairment_Password_check) {
        //비밀번호가 입력되었는지 확인하기
        if (!checkExistData(impairment_Password, "비밀번호를"))
            return false;
        //비밀번호 확인이 입력되었는지 확인하기
        if (!checkExistData(impairment_Password_check, "비밀번호 확인을"))
            return false;
 
        var password1RegExp = /^[a-zA-z0-9]{4,25}$/; //비밀번호 유효성 검사
        if (!password1RegExp.test(impairment_Password)) {
            alert("비밀번호는 영문 대소문자와 숫자 4~25자리로 입력해야합니다!");
            form.impairment_Password.value = "";
            form.impairment_Password.focus();
            return false;
        }
        //비밀번호와 비밀번호 확인이 맞지 않다면..
        if (impairment_Password != impairment_Password_check) {
            alert("두 비밀번호가 맞지 않습니다.");
            form.impairment_Password.value = "";
            form.impairment_Password_check.value = "";
            form.impairment_Password_check.focus();
            return false;
        }
 
        //아이디와 비밀번호가 같을 때..
        if (impairment_ID == impairment_Password) {
            alert("아이디와 비밀번호는 같을 수 없습니다!");
            form.impairment_Password.value = "";
            form.impairment_Password_check.value = "";
            form.impairment_Password_check.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
 
    function checkMail(impairment_email) {
        //mail이 입력되었는지 확인하기
        if (!checkExistData(impairment_email, "이메일을"))
            return false;
 
        var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
        if (!emailRegExp.test(impairment_email)) {
            alert("이메일 형식이 올바르지 않습니다!");
            form.impairment_email.value = "";
            form.impairment_email.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
 
    function checkName(impairment_name) {
        if (!checkExistData(impairment_name, "이름을"))
            return false;
 
        var nameRegExp = /^[가-힣]{2,4}$/;
        if (!nameRegExp.test(impairment_name)) {
            alert("이름이 올바르지 않습니다.");
            return false;
        }
        return true; //확인이 완료되었을 때
    }

    function checknum(impairment_phone_number) {
        if (!checkExistData(impairment_phone_number, "개인연락처를"))
            return false;

        var numberRegExp = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
        
        if (!numberRegExp.test(impairment_phone_number)){
            alert("개인연락처가 올바르지 않습니다.");
            return false;
        }
        return true;
    }

    function checkzipcode(impairment_zipcode) {
        if (!checkExistData(impairment_zipcode, "우편번호"))
            return false;

        var zipcodeRegExp = /^\d{3}-\d{3}/;

        if(!zipcodeRegExp.test(impairment_zipcode)){
            alert("우편번호가 입력되지 않았습니다.");
            return false;
        }    
        return true;
    }

    function checkaddr() {
        var text = document.getElementById("impairment_address");
        if (!checkExistData(text.value, "주소를")) {
            alert("주소를 입력해 주세요!");
            return false;
        } else
            return true;
    }

    
    
    
    
