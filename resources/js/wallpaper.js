$(function() {
    $('.tMenu>.menu').hover(function() {
        $(this).find('.subMenu').stop(false, false).css({
            backgroundColor : "#fefefe"
        }).slideDown(300);
        $(this).find('a').css(color = '#fff');
    }, function() {
        $(this).find('.subMenu').stop(true, true).slideUp(300);
    });
    $('.home').click(function() {
        window.location = 'index.html'
    });

    let loginSW = false;
    $('#login_area .srch_btn').click(function() {
        // $('#header_search').slideToggle("fast");
        loginSW = !loginSW;
        if(loginSW) {
            $('#header_search').animate({
                top: '100px'
            });
        }else {
            $('#header_search').animate({
                top: '0px'
            });
        }
    });
    // logo hover turn
    $(".main_logo_img").hover(function(){
        $(this).stop().animate({
            rotate : "-180deg"
        },800);
    },function(){
        $(this).stop().animate({
            rotate : "0deg"
        },800)
    });

    /* * * * * hover시 color변경 영역 * * * * */
    /* 서브메뉴 hover */
    $('.smenu>a').hover(function() {
        $(this).css({
            color: '#f00'
        });
    }, function() {
        $(this).css({
            color: '#000'
        });
    });
    /* 탑메뉴 hover */
    $('.menu').hover(function() {
        $(this).children('a').css({
            color: '#f00'
        });
    }, function() {
        $(this).children('a').css({
            color: '#000'
        });
    });
    /* 로그인 영역 hover */
    $('#login_area li').hover(function() {
        $(this).find('a').css({
            color: '#f00'
        });
    }, function() {
        $(this).find('a').css({
            color: '#000'
        });
    });
    /* footer link영역 hover */
    $('#footer_link li').hover(function() {
        $(this).find('a').css({
            color: '#f00'
        });
    }, function() {
        $(this).find('a').css({
            color: '#000'
        });
    });

    // go_up_
    $(".go_up_img").click(function(){
        $('html, body').animate({
            scrollTop : 0
        }, 400);
    })
    

    $('.slider_panel').append($('.slider_image').first().clone());
    $('.slider_panel').prepend($('.slider_image').eq(-2).clone()); //맨 마지막 이미지가 1번 이미지가 되었기 때문!
    let index = 1;
    moveSlider(index);

    $('.prev').click(function() {
        if(index > 1) {
            index--;
            moveSlider(index);
        } else{
            $('.slider_panel').css('left', -3600);
            index = 5;
            moveSlider(index);
        }
    });
    $('.next').click(function() {
        if(index < 5){
            index++;
            moveSlider(index);
        } else{
            $('.slider_panel').css('left', 0);
            index = 1;
            moveSlider(index);
        }
    });
    
    function moveSlider(index){
        $('.slider_panel').stop(true).animate({
            left: -(index*600)
        },'slow');
        $('.control_button').removeClass('active');
        $('.control_button').eq(index-1).addClass('active');
    }    
    
    /* 자동 이미지 슬라이더 구현 함수 */
    let auto;                   //setInterval, clearInterval 컨트롤하는 변수
    autoSlider();               //자동슬라이딩 되라고 호출
    function autoSlider() {
        auto = setInterval(function() {
            $('.next').trigger('click');
        }, 3000);
    }
    $('.animation_canvas').hover(function() {
        clearInterval(auto);
    }, function() {
        autoSlider();
    });
    
    //컬러박스 적용
    $('.wall_img_cb').colorbox({
		width: 1000
	});
});