<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공공누리자료</title>
 	<link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/dataLink.css">
    <link rel="shortcut icon" type="image/icon" href="${contextPath}/resources/images/header/logoSample2.png">
    <script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
</head>
<body>
    <div id="data_wrap">
        <div class="data_area">
           
                <div class="logo_area"><a href="#"><img src="${contextPath}/resources/images/logoSample2.png" alt="로고" width="150" height="150"></a></div>
                <p class="data">천문 연구원 공공누리 자료</p>
                <div class="data_background">
                  <div class="data_link_area">
                    <div class="link_area">
                      <a href="https://www.data.go.kr/tcs/dss/selectDataSetList.do?keyword=%EC%B2%9C%EB%AC%B8%ED%95%99&brm=&svcType=&instt=&recmSe=N&conditionType=init&extsn=&kwrdArray=">
                        <span>천문학 공공데이터 포탈 바로가기</span></a>
                  </div>
                  
                  <div class="link_area">
                    <a href="https://astro.kasi.re.kr/publicdata/pageView/6437">
                      <span>천문우주지식정보 공공데이터</span>
                    </a>
                  </div>
                  
                  <div class="link_area">
                     <a href="https://astro.kasi.re.kr/life/pageView/39">
                        <span>생활 속 천문학 데이터 바로가기</span>
                     </a>
                  </div>
      
                  <div class="link_area">
                    <a href="https://www.data.go.kr/data/15012691/openapi.do">
                      <span>천문 현상 정보 바로가기</span>
                    </a>
                  </div>

                  </div>
                  <div class="btn_main_area">
                    <a href="${contextPath}/index/index.jsp" class="btn_main">메인화면</a>
                  </div>           
                
            </div>               
           
        
    </div> 
    </div> 
</body>
</html>