<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String sId=(String)session.getAttribute("log_id");
%>
<c:set var="sId" value="<%= sId %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두근두근 추첨마당</title>
<link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${contextPath}/resources/css/header&footer.css">
<link rel="stylesheet" href="${contextPath}/resources/css/bookmark_common.css">
<link rel="stylesheet" href="${contextPath}/resources/css/sub_modify.css">
<link rel="shortcut icon" type="image/icon" sizes="32*32" href="${contextPath}/resources/images/header/logoSample2.png">
<script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
<script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${contextPath}/resources/js/header&footer.js"></script>
<script src="${contextPath}/resources/js/modify_form.js"></script>
<script src="${contextPath}/resources/js/bookmark.js"></script>
</head>
<body>
<!-------------------- [S] #wrap -------------------->
    <div id="wrap">
        <!-- bookmark_menu -->
        <div id="bookmark_div_wrap">
            <ul id="bookmark_ul">
                <li class="bookmark_li bk_title">참여마당</li>
                <li class="bookmark_li bk_li_1"><a href="${contextPath}/event/listPosts.do">두근두근 추첨마당</a></li>
                <li class="bookmark_li bk_li_2"><a href="${contextPath}/meetDept/meetDeptMenu.jsp">모여봐요 모임마당</a></li>
                <li class="bookmark_li bk_li_3"><a href="${contextPath}/fst_pg/fst_pg.jsp">복작복작 놀이마당</a></li>
            </ul>
        </div>
        <div id="go_up_div">
            <img src="${contextPath}/resources/images/go_up.png" alt="위로이동" class="go_up_img">
        </div>
        <!-- =========== [S] header  =========== -->
        <header>
            <div class="home">
                <h1>
                    <a href="${contextPath}/index/index.jsp">우나</a>
                </h1>
                <div class="logo">
                    <a href="${contextPath}/index/index.jsp">
                        <img class="main_logo_img" src="${contextPath}/resources/images/header/logoSample2.png" alt="logo">
                    </a> 
                </div>
            </div>
            <nav>
                <ul class="tMenu">
                    <li class="menu menu1">
                        <a href="#" class="hover_a hover_a1">우주마당</a>
                        <ul class="subMenu subMenu1">
                            <li class="smenu"><a href="${contextPath}/book.una">알아봐요 탐험마당</a></li>
                            <li class="smenu"><a href="${contextPath}/news/listPosts.do">신기해요 소식마당</a></li>
                        </ul>
                    </li>
                    <li id="top_menu2" class="menu menu2">
                        <a href="#" class="hover_a hover_a2">참여마당</a>
                        <ul class="subMenu subMenu2">
                            <li class="smenu"><a href="${contextPath}/event/listPosts.do">두근두근 추첨마당</a></li>
                            <li class="smenu"><a href="${contextPath}/meetDept/meetDeptMenu.jsp">모여봐요 모임마당</a></li>
                            <li class="smenu"><a href="${contextPath}/fst_pg/fst_pg.jsp">복작복작 놀이마당</a></li>
                        </ul>
                    </li>
                    <li class="menu menu3">
                        <a href="#" class="hover_a hover_a3">알림마당</a>
                        <ul class="subMenu subMenu3">
                            <li class="smenu"><a href="${contextPath}/notice/listPosts.do">여기주목 공지사항</a></li>
                            <li class="smenu"><a href="${contextPath}/aboutInfo/aboutus.jsp">반짝반짝 우리소개</a></li>
                            <li class="smenu"><a href="${contextPath}/aboutInfo/aboutDepth.jsp">공유해요 자료마당</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="login_area">
                <ul>
                    <li class="srch_btn"><a href="#"><img class="srch_img" src="${contextPath}/resources/images/search.png" alt="search"></a></li>
                     <c:choose>
					<c:when test="${isLogon == true && log_id != null}">
						
						<li><a href="${contextPath}/member/logout.do">로그아웃</a></li>
						<li><p>${log_id}님</p></li>
					</c:when>
					<c:otherwise>
						<li><a href="${contextPath}/member/loginForm.do">로그인</a></li>
						<li><a href="${contextPath}/member/membeForm.do">회원가입</a></li>
					</c:otherwise>
					</c:choose>
                </ul>
            </div>
            <div id="header_search">
                <form action="${contextPath}/search.do" method="post" name="search">
                    <fieldset>
                        <legend>검색영역</legend>
                        <label for="srch" class="hidden">검색</label>
                        <input type="search" id="srch" name="con_search" placeholder="검색어를 입력하세요">
                        <button type="submit" class="srch_btn"><img src="${contextPath}/resources/images/search.png" alt="search"></button>
                    </fieldset>
                </form>
            </div>
        </header>
        <!--  =========== [E] header  =========== -->
        <!-- h2 title and BG img div -->
        <div id="title_bg_wrap">
            <h2 id="sub_page_h2">모여봐요 모임마당</h2>
        </div>
        <!---------- [S] #container ---------->
		<div class="modify_wrap">
			<div class="modify_typing_wrap">
				<form action="${contextPath}/meet/modPost.do" method="post" enctype="multipart/form-data">				
			    	<ul class="modify_info_wrap">
			        	<li class="modify_title">
			                <input type="text" name="title" value="${meet.title}"> 
			                <input type="hidden" name="num" value="${meet.num}">              
			            </li>
			            <li class="modify_content_wrap">
			                <textarea name="content" id="modify_content">${meet.content}</textarea>
			            </li>
			            <li class="modify_file_wrap">
			            	<input type="file" name="imageFileName" value="${meet.imageFileName}" onchange="readImage(this)">
			            </li>        
			            <li class="modify_preview_wrap">
			            	<img id="preview" src="${contextPath}/meetdownload.do?imageFileName=${meet.imageFileName}&num=${meet.num}" alt="이미지 미리보기">
			            </li>             
			            <li class="modify_btn_wrap">
			            	<input type="submit" class="modify_submit" value="등록">
			            	<input type="button" class="modify_reset" value="취소" onclick="toPostView(this.form, '${contextPath}/meet/viewPost.do?num=${meet.num}');">
			            </li>
			        </ul>
		       </form>  
	       </div>
	    </div>
    	<!---------- [E] container ---------->
        <!---------- [S] footer ---------->
        <footer>
            <div id="footer_link">
                <ul>
                    <li><a href="${contextPath}/notice/listPosts.do">공지사항</a></li>
                    <li><a href="${contextPath}/aboutInfo/aboutus.jsp">우리소개</a></li>
                    <li><a href="${contextPath}/aboutInfo/aboutDepth.jsp">자료마당</a></li>
                    <li><a href="${contextPath}/fst_pg/fst_pg.jsp">놀이마당</a></li>
                </ul>
            </div>
            <p class="copyright">
                &copy; 2023 TeamSPACE. ALL RIGHTS RESERVED.
            </p>
        </footer>
        <!---------- [E] footer ---------->
    </div>
    <!-------------------- [E] #wrap -------------------->
</body>
</html>