var searchVisible = 0;
var transparent = true;
var mobile_device = false;

function addreservation(){
	var name=$('#name').val();
	var date=$('#date').val();
	var getIn=$('#getIn').val();
	var getOut=$('#getOut').val();
	var time=$('#time').val();
	var phone=$('#phone').val();
	var person=$('#person').val();
	var driver=$('#driver').val();
	var requestContent=$('#requestContent').val();
	var category=$('#category').val();
	var car=$('.active').find('[type="radio"]').val();
	var id=$('#id').val();
	var price = "";
	
	/*if($('#name').val()==""||$('#name').val()==null 
			 ||$('#date').val()==""||$('#date').val()==null
			 ||$('#getIn').val()==""||$('#getIn').val()==null
			 ||$('#getOut').val()==""||$('#getOut').val()==null
			 ||$('#time').val()==""||$('#time').val()==null
			 ||$('#phone').val()==""||$('#phone').val()==null
			 ||$('#person').val()==""||$('#person').val()==null
			 ||$('#driver').val()==""||$('#driver').val()==null
			 ||$('#category').val()==""||$('#category').val()==null
			 ||$('#car').val()==""||$('#car').val()==null){
		alert("필수 항목들을 채워주세요");
		return false;
	}*/
	
	if(car=="starex"){
		price = 5000;
	}else if(car=="sonata"){
		price = 10000;
	}else{
		price = 15000;
	}
	
	$.ajax({
		type:'POST',
		url: '../../cartInsertServlet',
		data: {
			name : name, date : date, 
			getIn : getIn, 	getOut : getOut, 
			time : time, phone : phone, 
			person : person, driver : driver, requestContent : requestContent,
			category : category, car : car, id : id, price : price
		},
		success: function(result){
			if(result == 1 && category == "I"){
				alert('예약을 담았습니다.');
				location.href='jang_reservation.jsp';
			}else if(result == 1 && category == "T"){
				alert('예약을 담았습니다.');
				location.href='gwan_reservation.jsp';
			}else{
				alert('예약을 담았습니다.');
				location.href='../reservation_status.jsp';
			}
		}
	});
}


$(document).ready(function(){

    $.material.init();

    /*  Activate the tooltips      */
    $('[rel="tooltip"]').tooltip();

    // Code for the Validator
    var $validator = $('.wizard-card form').validate({
		  rules: {
			name: {
		      required: true,
		    },
		    date: {
		      required: true
		    },
		    getIn: {
		      required: true
		    },
		    getOut: {
			  required: true
		    },
		    time: {
			  required: true
			},
			person: {
			  required: true
			},
			phone: {
				required: true
			},
			car: {
			  required: true
			}
        },

        errorPlacement: function(error, element) {
            $(element).parent('div').addClass('has-error');
         }
	});

    // Wizard Initialization
  	$('.wizard-card').bootstrapWizard({
        'tabClass': 'nav nav-pills',
        'nextSelector': '.btn-next',
        'previousSelector': '.btn-previous',

        onNext: function(tab, navigation, index) {
        	var $valid = $('.wizard-card form').valid();
        	if(!$valid) {
        		$validator.focusInvalid();
        		return false;
        	}
        },

        onInit : function(tab, navigation, index){
            //check number of tabs and fill the entire row
            var $total = navigation.find('li').length;
            var $wizard = navigation.closest('.wizard-card');

            $first_li = navigation.find('li:first-child a').html();
            $moving_div = $('<div class="moving-tab">' + $first_li + '</div>');
            $('.wizard-card .wizard-navigation').append($moving_div);

            refreshAnimation($wizard, index);

            $('.moving-tab').css('transition','transform 0s');
       },

        onTabClick : function(tab, navigation, index){
            var $valid = $('.wizard-card form').valid();

            if(!$valid){
                return false;
            } else{
                return true;
            }
        },

        onTabShow: function(tab, navigation, index) {
            var $total = navigation.find('li').length;
            var $current = index+1;

            var $wizard = navigation.closest('.wizard-card');

            // If it's the last tab then hide the last button and show the finish instead
            if($current >= $total) {
                $($wizard).find('.btn-next').hide();
                $($wizard).find('.btn-finish').show();
            } else {
                $($wizard).find('.btn-next').show();
                $($wizard).find('.btn-finish').hide();
            }

            button_text = navigation.find('li:nth-child(' + $current + ') a').html();

            setTimeout(function(){
                $('.moving-tab').text(button_text);
            }, 150);

            var checkbox = $('.footer-checkbox');

            if( !index == 0 ){
                $(checkbox).css({
                    'opacity':'0',
                    'visibility':'hidden',
                    'position':'absolute'
                });
            } else {
                $(checkbox).css({
                    'opacity':'1',
                    'visibility':'visible'
                });
            }

            refreshAnimation($wizard, index);
        }
  	});


    // Prepare the preview for profile picture
    $("#wizard-picture").change(function(){
        readURL(this);
    });

    $('[data-toggle="wizard-radio"]').click(function(){
        wizard = $(this).closest('.wizard-card');
        wizard.find('[data-toggle="wizard-radio"]').removeClass('active');
        $(this).addClass('active');
        $(wizard).find('[type="radio"]').removeAttr('checked');
        $(this).find('[type="radio"]').attr('checked','true');
    });

    $('[data-toggle="wizard-checkbox"]').click(function(){
        if( $(this).hasClass('active')){
            $(this).removeClass('active');
            $(this).find('[type="checkbox"]').removeAttr('checked');
        } else {
            $(this).addClass('active');
            $(this).find('[type="checkbox"]').attr('checked','true');
        }
    });

    $('.set-full-height').css('height', 'auto');
    
    $('#finish').click(function(){
    	var attr = $('.active').find('[type="radio"]').val();
    	var form = $('#reservForm');
    	var carVal = $('<input type="hidden" name="car" value="' + attr + '" />');
    	if(attr == null){
    		alert("차량을 선택해주세요");
    		return false;
    	}
    	if($("#getIn").val() != "A코스" || $("#getIn").val() != "B코스" || $("#getIn").val() != "C코스"){
    		if($('#TgetOut').val() == ""){
    			alert("코스 미 선택시에는 하차장소 입력해주세요");
        		return false;
    		}
    	}
    	carVal.appendTo(form);
    	form.submit();
    });
    $(function(){
    	$("#getIn").focusout(function() {
			if($("#getIn").val() == "A코스" || $("#getIn").val() == "B코스" || $("#getIn").val() == "C코스") {
				$('#TgetOut').attr('disabled','true');
			}else {
				$('#TgetOut').removeAttr('disabled');
			}
		}) 
	});
});




 //Function to show image before upload

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$(window).resize(function(){
    $('.wizard-card').each(function(){
        $wizard = $(this);

        index = $wizard.bootstrapWizard('currentIndex');
        refreshAnimation($wizard, index);

        $('.moving-tab').css({
            'transition': 'transform 0s'
        });
    });
});

function refreshAnimation($wizard, index){
    $total = $wizard.find('.nav li').length;
    $li_width = 100/$total;

    total_steps = $wizard.find('.nav li').length;
    move_distance = $wizard.width() / total_steps;
    index_temp = index;
    vertical_level = 0;

    mobile_device = $(document).width() < 600 && $total > 3;

    if(mobile_device){
        move_distance = $wizard.width() / 2;
        index_temp = index % 2;
        $li_width = 50;
    }

    $wizard.find('.nav li').css('width',$li_width + '%');

    step_width = move_distance;
    move_distance = move_distance * index_temp;

    $current = index + 1;

    if($current == 1 || (mobile_device == true && (index % 2 == 0) )){
        move_distance -= 8;
    } else if($current == total_steps || (mobile_device == true && (index % 2 == 1))){
        move_distance += 8;
    }

    if(mobile_device){
        vertical_level = parseInt(index / 2);
        vertical_level = vertical_level * 38;
    }

    $wizard.find('.moving-tab').css('width', step_width);
    $('.moving-tab').css({
        'transform':'translate3d(' + move_distance + 'px, ' + vertical_level +  'px, 0)',
        'transition': 'all 0.5s cubic-bezier(0.29, 1.42, 0.79, 1)'

    });
}

materialDesign = {

    checkScrollForTransparentNavbar: debounce(function() {
                if($(document).scrollTop() > 260 ) {
                    if(transparent) {
                        transparent = false;
                        $('.navbar-color-on-scroll').removeClass('navbar-transparent');
                    }
                } else {
                    if( !transparent ) {
                        transparent = true;
                        $('.navbar-color-on-scroll').addClass('navbar-transparent');
                    }
                }
        }, 17)

}

function debounce(func, wait, immediate) {
	var timeout;
	return function() {
		var context = this, args = arguments;
		clearTimeout(timeout);
		timeout = setTimeout(function() {
			timeout = null;
			if (!immediate) func.apply(context, args);
		}, wait);
		if (immediate && !timeout) func.apply(context, args);
	};
};
