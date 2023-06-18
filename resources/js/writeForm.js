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