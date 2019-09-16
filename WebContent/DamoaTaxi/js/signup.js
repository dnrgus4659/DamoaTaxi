function showPopup() {
  	window.open("ZipInputForm.html", "주소검색", "width=480, height=300, left=100, top=50 scrollbars=yes"); 
}

function impairment_idCheck(){
	var id = document.form.impairment_ID.value;
	if(id.length<1 || id == null){
		alert("아이디를 입력해주세요");
		return false;
	}
	var url="impairment_id_check.jsp?id="+id;
	window.open(url, "중복확인", "width=480, height=300, left=100, top=50 scrollbars=no");
}
function travel_idCheck(){
	var id = document.form.travel_ID.value;
	if(id.length<1 || id == null){
		alert("아이디를 입력해주세요");
		return false;
	}
	var url="Travel_id_check.jsp?id="+id;
	window.open(url, "중복확인", "width=480, height=300, left=100, top=50 scrollbars=no");
}