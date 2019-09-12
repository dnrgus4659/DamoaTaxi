function Modify_id(){
		var New_ID=$('#New_id').val();
		var form_ID=$('#form_id').val();
		$.ajax({
			type:'POST',
			url: '../UserModifyCheckServlet',
			data: {New_ID : New_ID, Impairment_ID : form_ID},
			success: function(result){
				if(result == 1){
					$('#checkMessage').html('변경이 완료되었습니다.');
					location.reload();
				}else{
					$('#checkMessage').html('변경이 실패되었습니다. 중복확인해주세요');
				}
				$('#myModal').modal('show');
			}
		});
	}