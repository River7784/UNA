
    // 유효성 검사 메서드
    function Validation() {
        //변수에 저장
        var name = document.getElementById("user_name")
        var uid = document.getElementById("user_id")
        var pw = document.getElementById("user_pwd")
        var cpw= document.getElementById("confirm_pwd")
        var mail = document.getElementById("user_email")
        

        // 정규식
        // id
        var regId = /^[a-z0-9]{4,20}$/;
        
        // pw
        
        var regPw = /^[a-z0-9]{4,20}$/;
        
        // 이름
        var regName = /^[가-힣]{2,20}$/;
      
        // 이메일
        var regMail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

        //아이디 확인
        if(uid.value == ""){
            alert("아이디를 입력하세요.")
            uid.focus();
            return false;
        }
        //아이디 영어 대소문자 확인
        else if(!regId.test(uid.value)){
            alert("id는 4자 이상 영문 소문자, 숫자만 입력하세요.")
            uid.focus();
            return false;
        }

        //비밀번호 확인
        if(pw.value == ""){
            alert("비밀번호를 입력하세요.")
            pw.focus();
            return false;
        }
        //비밀번호 영어 대소문자 확인
        else if(!regPw.test(pw.value)){
            alert("비밀번호는 4자 이상 영문 소문자, 숫자만 입력하세요.")
            pw.focus();
            return false;
        }

        //비밀번호 확인
        if(cpw.value !== pw.value){
            alert("비밀번호와 동일하지 않습니다.")
            cpw.focus();
            return false;
        }

        //메일주소 확인
        if(mail.value.length == 0){
            alert("메일주소를 입력하세요.")
            mail.focus();
            return false;
        }

        else if(!regMail.test(mail.value)){
            alert("잘못된 이메일 형식입니다.")
            mail.focus();
            return false;
        }

        //이름 확인 = 한글과 영어만 가능하도록
        if(uname.value == ""){
            alert("이름을 입력하세요.")
            uname.focus();
            return false;
        }

        else if(!regName.test(uname.value)){
            alert("최소 2글자 이상 입력하세요")
            uname.focus();
            return false;
        }

        // 유효성 문제 없을 시 폼에 submit
        document.memberForm.submit();
    }