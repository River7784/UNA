function readImage(input) {
	// 이미지를 선택하게 되면 0번째 방에 정보가 들어감
	if(input.files && input.files[0]) {
		let reader=new FileReader(); // FileReader클래스
		reader.onload = function(event) {
			$('#preview').attr('src', event.target.result); // 선택한 이미지 이름이 event.target.result에 날아옴
		}
		reader.readAsDataURL(input.files[0]);
	}
}
function toPostList(obj, url) {
	obj.action=url;
	obj.submit();		
}

$(function() {

 // fixed bookmark hover
    let bkSW = false;
    $('#bookmark_div_wrap').click(function() {
        bkSW = !bkSW;
        if(bkSW) {
            $('#bookmark_div_wrap').animate({
                left : 0
            });
        }else {
            $('#bookmark_div_wrap').animate({
                left: '-233px'
            });
        }
    });
    $(".bookmark_li>a").hover(function(){
        $(this).css({
            transition: "ease 0.4s",
            backgroundColor : "#555",
            color : "#fff"
        })
    }, function(){
        $(this).css({
            backgroundColor : "#f0f0f0",
            color : "#555;"
        })
        $(".bk_li_1>a").css({
            backgroundColor : "#555;",
            color : "#fff;"
        })
    })
    // go_up_
    $(".go_up_img").click(function(){
        $('html, body').animate({
            scrollTop : 0
        }, 400);
    })
});