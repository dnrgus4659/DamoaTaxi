var chk=0;

function Modify_id(){
	var New_ID=$('#New_id').val();
	var form_ID=$('#form_id').val();
	var category = $('#category').val();
	$.ajax({
		type:'POST',
		url: '../UserModifyCheckServlet',
		data: {New_ID : New_ID, form_ID : form_ID, category:category},
		success: function(result){
			if(result == 1){
				alert('변경이 완료되었습니다. 다시 로그인 해주세요');
				location.href='sessionLogout.jsp';
			}else{
				alert('변경이 실패되었습니다. 중복확인해주세요');
			}
			$('#myModal').modal('show');
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
			$('#myModal').modal('show');
		}
	});
	
}

$('#New_id').keydown(function(){
	chk=0;
});

$(function(){
	if(chk==1)
		$('#modifySubmit').attr('disabled',false);
	else
		$('#modifySubmit').attr('disabled',true);
});


