$(function() {
    //uquiz-inner
    //정답은 DB에서 불러와야 함. 아직 기능 없어서 수동 입력.

    $('#polygon_text .submit_btn').click(function() {
        const answer = '큰곰자리';
        const user_answer = $('#polygon_text .answer').val();
        
        if(answer === user_answer){
            location.href= 'uquiz-o.jsp';
        } else{
/*            location.href="'" + getContextPath() + "/uquiz/uquiz-x.jsp'";*/
            location.href= 'uquiz-x.jsp';
        }
    });
});

//contextPath 받아오는 함수
function getContextPath() {
	let hostIndex = location.href.indexOf(location.host) + location.host.length;
	let contextPath = location.href.substring(hostIndex, location.href.indexOf('/', hostIndex + 1));
	console.log("contextPath: " + contextPath);
	return contextPath;
}
