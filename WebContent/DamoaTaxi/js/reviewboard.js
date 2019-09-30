/**
 * 
 */

function replyShow(num){
   	$('#reply'+num).toggle();
}
function commetShow(){
   	$('#comment').toggle();
}
function replyUpdateShow(num){
	$('#commentUpdate'+num).toggle();
   	$('#commentContent'+num).toggle();
}
function replyUpdateInsert(num){
	var upContent = $('#upContent').val();
	
	$.ajax({
		type:'POST',
		url: '../commentUpdate',
		data: {num : num, upContent : upContent},
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
