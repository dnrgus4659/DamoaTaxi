var chk=0;
var category = $('#category').val();
var id_td_val = document.getElementsByTagName('td')[2].childNodes[0].nodeValue;

function Modify_id(){
	var New_ID=$('#New_id').val();
	
	if($('#New_id').val()==""||$('#New_id').val()==null){
		alert("바꿀 아이디를 입력해주세요");
		$('#New_id').focus();
		return false;
	}
	
	if(chk==0){
		alert("아이디 중복확인 해주세요");
		return false;
	}
	
	$.ajax({
		type:'POST',
		url: '../UserModifyCheckServlet',
		data: {New_ID : New_ID, form_ID : id_td_val, category : category},
		success: function(result){
			if(result == 1){
				alert('변경이 완료되었습니다. 다시 로그인 해주세요');
				location.href='sessionLogout.jsp';
			}else{
				alert('변경이 실패되었습니다. 중복확인해주세요');
			}
		}
	});
}
function ID_check(){
	var New_ID=$('#New_id').val();
	
	$.ajax({
		type:'POST',
		url: '../UserModifyIDCheckServlet',
		data: {New_ID : New_ID},
		success: function(result){
			if(result == 1){
				alert('중복된 아이디입니다.');
				$('#New_id').val('');
			}else{
				alert('사용가능한 아이디입니다.');
				chk=1;
			}
		}
	});
}
function Modify_password(){
	var current_password=$('#current_password').val();
	var new_password=$('#new_password').val();
	var new_password_chk=$('#new_password_chk').val();
	
	if(current_password==""||current_password==null){
		alert("현재 비밀번호를 입력해주세요.");
		current_password.focus();
		return false;
	}
	
	if(new_password==""||new_password==null){
		alert("바꿀 비밀번호를 입력해주세요.");
		new_password.focus();
		return false;
	}
	
	if(new_password_chk==""||new_password_chk==null){
		alert("비밀번호 확인를 입력해주세요.");
		new_password_chk.focus();
		return false;
	}
	
	if(new_password_chk!=new_password){
		alert("비밀번호 확인과 바꿀 비밀번호가 다릅니다. 다시 입력해주세요.");
		new_password_chk.focus();
		return false;
	}
	
	if(new_password==id_td_val){
		alert("비밀번호와 아이디는 일치할 수 없습니다.");
		new_password="";
		new_password.focus();
		return false;
	}
	
	$.ajax({
		type:'POST',
		url: '../UserModifyPasswordServlet',
		data: {ID : id_td_val, current_password : current_password, new_password : new_password, category : category},
		success: function(result){
			if(result == 1){
				alert('변경이 완료되었습니다. 다시 로그인 해주세요');
				location.href='sessionLogout.jsp';
			}else{
				alert('변경이 실패되었습니다. 현재 비밀번호가 틀립니다.');
			}
		}
	});
}
function Modify_phone(){
	var form_num=$('#form_num').val();
	
	if(form_num==""||form_num==null){
		alert("바꿀 연락처를 입력해주세요");
		$('#form_num').focus();
		return false;
	}
	
	$.ajax({
		type:'POST',
		url: '../UserModifyPhoneServlet',
		data: {ID : id_td_val, form_num : form_num, category : category},
		success: function(result){
			if(result == 1){
				alert('변경이 완료되었습니다.');
				location.reload();
			}else{
				alert('변경이 실패되었습니다.');
			}
		}
	});
}

function Modify_email(){
	var form_email=$('#form_email').val();
	
	if(form_email==""||form_email==null){
		alert("바꿀 연락처를 입력해주세요");
		$('#form_num').focus();
		return false;
	}
	
	$.ajax({
		type:'POST',
		url: '../UserModifyEmailServlet',
		data: {ID : id_td_val, form_email : form_email, category : category},
		success: function(result){
			if(result == 1){
				alert('변경이 완료되었습니다.');
				location.reload();
			}else{
				alert('변경이 실패되었습니다.');
			}
		}
	});
}
