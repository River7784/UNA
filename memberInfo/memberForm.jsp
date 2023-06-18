<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>     
<%
	request.setCharacterEncoding("utf-8");
%> 	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입창</title>
<link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${contextPath}/resources/css/join.css">
<script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
<script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${contextPath}/resources/js/join.js"></script>
<script src="${contextPath}/resources/js/joinChk.js"></script>
<script src="http://code.jquery.com/jquery-Latest.min.js"></script>

</head>
<body>
    <div id="join_wrap">
        <div class="join_area">
            <form action="${contextPath}/member/addMember.do" name="memberForm" method="post">
                <div class="logo_area"><a href="${contextPath}/index/index.jsp"><img src="${contextPath}/resources/images/logoSample2.png" alt="로고" width="150" height="150"></a></div>
                <p class="join">회원가입</p>
                <div class="join_background">
                <fieldset>
                    <div>
                        <label for="name">성명</label>
                        <input type="text" id="user_name" name="user_name" maxlength=20 required>                             
                    </div>  
                     <div>
                        <label for="id">아이디</label>
                        <input type="text" id="user_id" name="user_id" maxlength=20 required>   
                        <input type="button" value="중복확인" class="id_check" id="btn_duplicate" onclick="fn_idCheck()">                   
                     </div>
                       <div>
                        <label for="pwd">비밀번호</label>
                        <input type="password" id="user_pwd" name="user_pwd" maxlength=20 placeholder="12자 이하로 입력해주세요" required>                
                      </div>
                      <div>
                        <label for="confirm_pwd">비밀번호 확인</label>
                        <input type="password" id="confirm_pwd" name="confirm_pwd" maxlength=20 required>     
                      </div> 
                      <div id="pwd_same_confirm"></div>       
                      <div>
                        <label for="tel">연락처</label>
                        <input type="tel" id="user_tel" name="user_tel" maxlength="11" placeholder="-은 제외하고 입력해주세요">                
                      </div>
                      <div>
                        <label for="email">이메일</label>
                        <input type="email" id="user_email" name="user_email" maxlength="50" required placeholder="una@una.com">                          
                      </div>
                      <div class="btn_join_area">
                        <input type="submit" value="회원가입" class="btn_join">
                      </div>           
                </fieldset> 
            </div>               
            </form>   
        
    </div> 
    </div> 
 </body>
</html>