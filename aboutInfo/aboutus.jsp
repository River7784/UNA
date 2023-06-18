<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 
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
<title>반짝반짝 우리소개</title>
<link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/header&footer.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/aboutus.css">
    <link rel="shortcut icon" type="image/icon" href="${contextPath}/resources/images/header/logoSample2.png">
    <script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resources/js/header&footer.js"></script>
    <script src="${contextPath}/resources/js/aboutus_bookmark.js"></script>
</head>
<body>
<!-------------------- [S] #wrap -------------------->
    <div id="wrap">
        <!-- bookmark_menu -->
        <div id="bookmark_div_wrap">
            <ul id="bookmark_ul">
                <li class="bookmark_li bk_title">알림마당</li>
                <li class="bookmark_li bk_li_1"><a href="${contextPath}/notice/listPosts.do">여기주목 공지사항</a></li>
                <li class="bookmark_li bk_li_2"><a href="${contextPath}/aboutInfo/aboutus.jsp ">반짝반짝 우리소개</a></li>
                <li class="bookmark_li bk_li_3"><a href="${contextPath}/aboutInfo/aboutDepth.jsp">공유해요 자료마당</a></li>
            </ul>
            <!-- <div id="bookmark_sub_title"><span>참여마당</span></div> -->
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
            <h2 id="sub_page_h2">반짝반짝 우리소개</h2>
        </div>
         <!---------- [S] #container ---------->
    <div id="container">
    <div id="header_line">
        <h2>멀게만 느껴지던 우주를<br> 
            보다 더 가까이 느낄 수 있도록</h2>
        <p>우주에 대해 막연한 어려움을 가지고 계셨나요?<br>
        우리는 어렵게만 느끼곤 하는 우주를 친숙하게 생각하기를 바란 마음으로 이 홈페이지를
            만들었습니다. <br>
            아직도 제대로 밝혀진 바가 많이 없을 정도로 광할하고 미지의 영역인 우주이지만 
            그만큼 흥미롭고 아름다울 우주의 면면을 친절하고 재미있게 소개해 드리겠습니다. <br>
            또한 우나는 
천			천문학에 관련된 정보뿐 아니라 우주 관련의 커뮤니티 또한 운영해 사용자들이 서로 교류하고 편의를 제공하고자 합니다.  
			여러분들이 우리 홈페이지에서 우주의 이곳저곳을 쉽고 재미있게 접근 할 수 있기를 바랍니다.
       </p>
    </div>
    <div class="content_area" id="content_area01">
        <P class="con_title">콘텐츠, 커뮤니티가 결합된<br> 올인원 플랫폼으로
             혁신을 주도합니다.</P>
        <div class="content01 con_box">
            <a href="${contextPath}/ucardmap/ucardIndex.una">
            <img class="left" src="${contextPath}/resources/images/cardquiz.png" alt="퀴즈카드 예시">
            </a>
                <p class="strong_tit"> 
                   우주에 관련된 다양한 게임을 통해<br>보다 우주를 친숙하게 여겨질 겁니다.</p>
                <p class="sub_exp">
                	우나는 놀이마당에서 여러 게임을 해볼 수 있습니다<br>
                	팀원들과 순위경쟁을 하며 우주에 관련된 간단한 게임을 체험할 수 있습니다. 
                	또한 카드 맞추기를 통해 은하의 아름다운 사진 또한 만나실 수 있습니다. 
                	이 게임을 얼마나 빨리, 얼마나 많이 했는지도 알 수 있지요. <br>
                </p>
        </div>
        
        <div class="content02 con_box">
            <a href="${contextPath}/uphoto/upload.jsp">
            <img class="left" src="${contextPath}/resources/images/photozone.png" alt="포토존 예시">
            </a>
                <p class="strong_tit"> 
                   원하는 사진을<br>  우주 이미지에 합성해보세요.</p>
                <p class="sub_exp">
                놀이마당의 우나 포토존에서 여러분이 조합하고 싶은 이미지를 합성해보세요. <br>
                이미지를 움직여 원하는 대로 배치할 수도 있습니다. <br>  
                우나는 기억에 남을 추억 사진을 여러분들에게 저장할 수 있게 해드리겠습니다. 
                </p>
        </div> 
        
        
        <div class="con_box content03">
            <a href="${contextPath}/market/listPost.do">
            <img src="${contextPath}/resources/images/productboard.png" alt="게시판 대표이미지">
            </a>
                <p class="strong_tit">우나는 우주에 관심을 가진 이용자들간 <br>자유로운 소통이 가능합니다. </p>
                <p class="sub_exp">우나는 다양한 커뮤니티가 존재합니다. 우나의 회원이 되신다면 여러 커뮤니티에 글을 작성하실 수 있습니다. 
                회원들이 사용했던 중고물품을 구매할 수 있습니다. 
                같이 별을 보러가고 싶다면 모임마당 게시판을 이용해보세요. <br>
                또한 여러분들이 찍은 우주의 사진을 올릴 수도 있습니다. 
                아름다웠던 밤하늘의 순간을 공유해주세요. </p>
            
        </div>
        
    </div>
    <div class="signiture_area">
        <h2 class="title">우나의 시그니처</h2>
        <div class="sig">
            <div class="signiture_box sig_box01">
                <div class="sig_exp">
                    <p class="strong_tit_sig">로고</p>
                    <p class="sig_p">
                    	우나의 로고는 육각형의 벌집모양으로 만들어졌습니다. 
                    	우주정보사이트인데 왜 흔히 생각하는 이미지가 아닌 육각형일까요? 
                    	우나는 우리의 로고를 제임스웹 망원경에서 따왔습니다. 
                    	밤하늘의 별을 자세히 보기 위해선 천체망원경을 이용해야 하는데요.  
                    	우주의 심도있는 이야기를 알려드리고자 하는 우나의 목표와 별을 더 선명하게 
                    	볼 수 있게 도와주는 망원경이 비슷하다 생각했고 그 생각을 로고에 투영했습니다.
                    </p>
                </div>
                <div class="sig_logo">
                    <img src="${contextPath}/resources/images/logoSample.png" alt=""> 
                </div>
                
            </div>
            <div class="signiture_box sig_box02">
                <div class="sig_exp">
                    <p class="strong_tit_sig">대표색</p>
                    <p class="sig_p">
                    우나의 대표색은 메인페이지의 메인컬러인 보라색입니다. 
                    보라색이 섞인 밤하늘에 아름다운 별이 수놓아져 있는 사진을 보고 정해진 우나의 대표색은 홈페이지의 작지만 눈에 띄는 부분에서 확인하실 수 있습니다. 
                    </p>
                </div>
                
                <img src="${contextPath}/resources/images/purplecolor.png" alt="">   
            </div>
            
        </div>
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