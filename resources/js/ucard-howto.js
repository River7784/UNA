 $(function() {
    let index = 0;
    let sw = false;
    moveSlider(index);
    $('.control_button').click(function() {
        index = $(this).index();
        moveSlider(index);
    });
    $('.prev').click(function() {
        // index--;
        // if(index < 0) {
        //     index+=5;
        // }
        // moveSlider(index);
        index--;
        moveSlider(index);
    });
    $('.next').click(function() {
        // index++;
        // if(index > 4) {
        //     index -=5;
        // }
        // moveSlider(index);
        index++;
        moveSlider(index);
    })

    /* 이미지 슬라이더 구현 함수 */
    function moveSlider(index){
        if(index > 0 && index < 4){
            $('.prev').fadeIn(500); 
            $('.next').fadeIn(500); 
        }
        if(index == 0){
            $('.prev').fadeOut(500);
            $('.next').fadeIn(500); 
        } 
        if(index == 4){
            $('.prev').fadeIn(500); 
            $('.next').fadeOut(500);
        }
        $('.slider_panel').animate({
            left: -(index*800)
        }, 'slow');
        $('.control_button').removeClass('active');
        $('.control_button').eq(index).addClass('active');
    }
});