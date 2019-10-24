$(document).ready(function() {
	$('[class^=is]').hide();
	$("#usePoint").hide();
  	
  	$("#paymentMethod").change(function(){ 
  		$('[class^=is]').removeAttr('name');
	    var value = $("#paymentMethod").val();
	    var theDiv = $(".is" + value);
	    $('[class^=is]').hide();
		  	
		if(value){
			theDiv.show();
			$("#"+value).attr('name','account');
		}
	});
 	  	
  	$("#point").change(function(){
  		$("#usePoint").toggle();
    });
  	
  	$("#usePoint").keyup(function(){
  		var price = $("#total_price").val();
  		var usePoint = $("#usePoint").val();
  		var currentPoint = $("#currentPoint").text();
  		var total_price = price - usePoint;
  		
  		if(Number(usePoint)>Number(currentPoint)){
  			alert('보유 포인트가 부족합니다.');
  			$("#usePoint").val('');
  		}
  		
  		$("#price").html(total_price);
    });
});