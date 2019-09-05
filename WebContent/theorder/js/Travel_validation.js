
    function checkAll() {
        if (!checkUserId(form.travel_ID.value)) {
            return false;
        } else if (!checkPassword(form.travel_ID.value, form.travel_Password.value,
                form.travel_Password_check.value)) {
            return false;
        } else if (!checkMail(form.travel_email.value)) {
            return false;
        } else if (!checkName(form.travel_name.value)) {
            return false;
        } else if (!checknum(form.travel_phone_number.value)) {
            return false;
        } else if (!checkzipcode(form.travel_zipcode.value)) {
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
 
    function checkUserId(travel_ID) {
        //Id가 입력되었는지 확인하기
        if (!checkExistData(travel_ID, "아이디를"))
            return false;
 
        var idRegExp = /^[a-zA-z0-9]{4,25}$/; //아이디 유효성 검사
        if (!idRegExp.test(travel_ID)) {
            alert("아이디는 영문 대소문자와 숫자 4~25자리로 입력해야합니다!");
            form.travel_ID.value = "";
            form.travel_ID.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
 
    function checkPassword(travel_ID, travel_Password, travel_Password_check) {
        //비밀번호가 입력되었는지 확인하기
        if (!checkExistData(travel_Password, "비밀번호를"))
            return false;
        //비밀번호 확인이 입력되었는지 확인하기
        if (!checkExistData(travel_Password_check, "비밀번호 확인을"))
            return false;
 
        var password1RegExp = /^[a-zA-z0-9]{4,25}$/; //비밀번호 유효성 검사
        if (!password1RegExp.test(travel_Password)) {
            alert("비밀번호는 영문 대소문자와 숫자 4~25자리로 입력해야합니다!");
            form.travel_Password.value = "";
            form.travel_Password.focus();
            return false;
        }
        //비밀번호와 비밀번호 확인이 맞지 않다면..
        if (travel_Password != travel_Password_check) {
            alert("두 비밀번호가 맞지 않습니다.");
            form.travel_Password.value = "";
            form.travel_Password_check.value = "";
            form.travel_Password_check.focus();
            return false;
        }
 
        //아이디와 비밀번호가 같을 때..
        if (travel_ID == travel_Password) {
            alert("아이디와 비밀번호는 같을 수 없습니다!");
            form.travel_Password.value = "";
            form.travel_Password_check.value = "";
            form.travel_Password_check.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
 
    function checkMail(travel_email) {
        //mail이 입력되었는지 확인하기
        if (!checkExistData(travel_email, "이메일을"))
            return false;
 
        var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
        if (!emailRegExp.test(travel_email)) {
            alert("이메일 형식이 올바르지 않습니다!");
            form.travel_email.value = "";
            form.travel_email.focus();
            return false;
        }
        return true; //확인이 완료되었을 때
    }
 
    function checkName(travel_name) {
        if (!checkExistData(travel_name, "이름을"))
            return false;
 
        var nameRegExp = /^[가-힣]{2,4}$/;
        if (!nameRegExp.test(travel_name)) {
            alert("이름이 올바르지 않습니다.");
            return false;
        }
        return true; //확인이 완료되었을 때
    }

    function checknum(travel_phone_number) {
        if (!checkExistData(travel_phone_number, "개인연락처를"))
            return false;

        var numberRegExp = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;

        if (!numberRegExp.test(travel_phone_number)){
            alert("개인연락처가 올바르지 않습니다.");
            return false;
        }
        return true;
    }

    function checkzipcode(travel_zipcode) {
        if (!checkExistData(travel_zipcode, "우편번호"))
            return false;

        var zipcodeRegExp = /^\d{3}-\d{3}/;

        if(!zipcodeRegExp.test(travel_zipcode)){
            alert("우편번호가 입력되지 않았습니다.");
            return false;
        }    
        return true;
    }
      function checkaddr() {
        var text = document.getElementById("travel_address");
        if (!checkExistData(text.value, "주소를")) {
            alert("주소를 입력해 주세요!");
            return false;
        } else
            return true;
    }


