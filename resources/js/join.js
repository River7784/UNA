
	function fn_idCheck(){
		let _id=$('#user_id').val();
		if( _id == ''){
			alert("중복체크할 ID를 입력하세요")
			return;
		}
		
		$.ajax({
			type : "post",
			async: true,
			dataType : "text",
			url : "http://192.168.4.95:8090/unaProject/idChk.do",
			data : {user_id: _id}, 
			success : function(idChkVal, textStatus){
				if(idChkVal == 'usable'){
					alert("사용가능한 아이디입니다.");
	
				}else {					
					alert("사용 불가능한 아이디입니다.다시 입력해 주세요")
					 $("#user_id").val("");
				}
			} ,
			error : function () {
				alert("서버와 통신 중 에러가 발생했습니다.");
			}

		});		
	}

	$(function(){
	    $("#confirm_pwd").on("keyup",function(){
	        var msg = $("#pwd_same").val();
	
	        if($("#user_pwd").val() == $("#confirm_pwd").val()){
	            $("#pwd_same_confirm").html("비밀번호가 일치합니다");
	            $("#pwd_same_confirm").css("color","blue");        
	        } else if($("#user_pwd").val() != $("#confirm_pwd").val()) {
	            $("#pwd_same_confirm").html("비밀번호가 일치하지 않습니다");
	            $("#pwd_same_confirm").css("color","red");
	        }
	    });
	}); 