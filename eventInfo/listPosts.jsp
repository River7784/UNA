<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="eventList" value="${eventMap.eventList}"/>
<c:set var="totPosts" value="${eventMap.totPosts}"/>
<c:set var="section" value="${eventMap.section}"/>
<c:set var="pageNum" value="${eventMap.pageNum}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추첨마당</title>
<link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${contextPath}/resources/css/header&footer.css">
<link rel="stylesheet" href="${contextPath}/resources/css/sub_event.css">
<link rel="shortcut icon" type="image/icon" sizes="32*32" href="images/header/logoSample2.png">
<script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
<script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${contextPath}/resources/js/header&footer.js"></script>
<script src="${contextPath}/resources/js/sub_event.js"></script>
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
            <h2 id="sub_page_h2">두근두근 추첨마당</h2>
        </div>
        <!---------- [S] #container ---------->
		<div id="event_wrap">
            <div id="event_table_wrap">
                <!-- 게시판 테이블 리스트 영역 시작 -->
                <table class="event_table_list">
                    <caption>추첨마당 게시판 목록</caption>
                    <thead>
                        <tr class="event_top">
                            <th scope="col">번호</th>
                            <th scope="col">제목</th>
                            <th scope="col">글쓴이</th>
                            <th scope="col">작성일</th>
                            <th scope="col">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:choose>
                    		<c:when test="${empty eventList}">
                    			<tr class="event_list">
                    				<td colspan="5">등록된 글이 없습니다.</td>
                    			</tr>
                    		</c:when>
                    		<c:when test="${not empty eventList}">
                    			<c:forEach var="post" items="${eventList}" varStatus="postNum">
                    				<tr class="event_list">
                            			<!--  <td class="event_num">${((pageNum)-1)*10+postNum.count}</td> -->
                            			<td class="event_num">${((pageNum)-1)*5+postNum.count}</td>
                            			<td class="event_title">
                                			<a href="${contextPath}/event/viewPost.do?num=${post.num}" class="event_title_link">${post.title}</a>
                            			</td>
                            			<td class="event_writer">${post.writer}</td>
                            			<td class="event_date">${post.writeDate}</td>
                            			<td class="event_vcount">${post.count}</td>
                        			</tr>
                    			</c:forEach>
                    		</c:when>
                    	</c:choose>                    
                    </tbody>
                </table>
            </div>    
            <!-- 게시판 테이블 리스트 영역 끝 -->
            <!-- 게시판 버튼 영역 시작 -->
            <div id="event_btn_wrap">
                <!-- 글쓰기 버튼 -->
                <c:if test="${isLogon == true && log_id != null}">
	                <div id="event_write">
	                    <a href="${contextPath}/event/postForm.do" class="event_write_btn">글쓰기</a>
	                </div>
                </c:if>   
               <!-- 페이지 버튼 -->
               <div id="event_page">
               	<c:if test="${totPosts != 0}"> 
               		<c:choose>
               			<c:when test="${totPosts > 25}">
               			<%-- 25개 초과 게시글이 있을 경우 --%>
               			<c:choose>
               				<%-- 전체 페이지 수 계산 --%>
               				<c:when test="${totPosts % 5 == 0 }">
               					<c:set var="tot" value="${totPosts/5}"/>
               				</c:when>
               				<c:otherwise>
               					<c:set var="tot" value="${totPosts/5+1}"/>
               				</c:otherwise>
               			</c:choose>
               			<%-- 페이징목록 출력 --%>
               			<c:forEach var="page" begin="1" end="${tot-(section-1)*5}" step="1">
               				<c:if test="${not doneLoop }">
	               				<c:if test="${section > 1 && page == 1 }">
	               				<%-- 이전 섹션으로 돌아가는 버튼 --%>
	               					<a class="btn_prev" href="${contextPath}/event/listPosts.do?section=${section-1}&pageNum=${(section-1)*5}">&lt;</a>
	               				</c:if>
	               				<c:choose>
	          						<c:when test="${page==pageNum}">
	          							<%-- 현재 보고 있는 페이지 번호 --%>
	          							<a class="num click" href="${contextPath}/event/listPosts.do?section=${section}&pageNum=${page}">${(section-1)*5+page}</a>
	          						</c:when>
	          						<c:when test="${page!=pageNum}">
	          							<a class="num" href="${contextPath}/event/listPosts.do?section=${section}&pageNum=${page}">${(section-1)*5+page}</a>
	          						</c:when>
	               				</c:choose>
	               				<c:if test="${page == 5}">
	               					<%-- 다음 섹션으로 넘어가는 버튼 --%>
	               					<a class="btn_next" href="${contextPath}/event/listPosts.do?section=${section+1}&pageNum=${(section-1)*5+1}">&gt;</a>
	               					<c:set var="doneLoop" value="true"/>
	               				</c:if>
               				</c:if>               		         
               			</c:forEach>
               			</c:when>
               			<c:when test="${totPosts <= 25}">
	               			<%-- 25개 이하 게시글이 있을 경우 --%>
	               			<c:choose>
	               				<%-- 전체 페이지 수 계산 --%>
	               				<c:when test="${totPosts % 5 == 0 }">
	               					<c:set var="tot" value="${totPosts/5}"/>
	               				</c:when>
	               				<c:otherwise>
	               					<c:set var="tot" value="${totPosts/5+1}"/>
	               				</c:otherwise>
	               			</c:choose>
	               			<%-- 페이징목록 출력 --%>
	               			<c:forEach var="page" begin="1" end="${tot}" step="1">	               				
	               				<c:choose>
	          						<c:when test="${page==pageNum}">
	          							<%-- 현재 보고 있는 페이지 번호 --%>
	          							<a class="num click" href="${contextPath}/event/listPosts.do?section=${section}&pageNum=${page}">${page}</a>
	          						</c:when>
	          						<c:otherwise>
	          							<a class="num" href="${contextPath}/event/listPosts.do?section=${section}&pageNum=${page}">${page}</a>
	          						</c:otherwise>
	               				</c:choose>	               				           		         
	               			</c:forEach>
               			</c:when>               			
               		</c:choose>
               	</c:if> 
               		<%--<c:choose>
               			<c:when test="${totPosts > 25}">
               				<c:forEach var="page" begin="1" end="5" step="1">
               					<c:if test="${section > 1 && page == 1}">
               						<a class="btn_prev" href="${contextPath}/event/listPosts.do?section=${section-1}&pageNum=${(section-1)*5}">&lt;</a>               					
               					</c:if>
               					<c:choose>
               						<c:when test="${page==pageNum}">
               							<a class="num click" href="${contextPath}/event/listPosts.do?section=${section}&pageNum=${page}">${(section-1)*5+page}</a>
               						</c:when>
               						<c:when test="${page!=pageNum}">
               							<a class="num" href="${contextPath}/event/listPosts.do?section=${section}&pageNum=${page}">${(section-1)*5+page}</a>
               						</c:when>
               					</c:choose>               						               				
               					<c:if test="${page == 5}">
               						<a class="btn_next" href="${contextPath}/event/listPosts.do?section=${section+1}&pageNum=${(section-1)*5+1}">&gt;</a>
               					</c:if>
               				</c:forEach>
               			</c:when>
               			<c:when test="${totPosts <= 25}">
               				<c:if test="${(totPosts mod 5) == 0}"> 
               					<c:set var="totPosts" value="${totPosts-1}"/>
               				</c:if>
               				<c:forEach var="page" begin="1" end="${totPosts/5+1}" step="1">
               					<c:choose>
               						<c:when test="${page==pageNum}">
               							<a class="num click" href="${contextPath}/event/search.do?section=${section}&pageNum=${page}">${page}</a>               							
               						</c:when>
               						<c:otherwise>
               							<a class="num" href="${contextPath}/event/search.do?section=${section}&pageNum=${page}">${page}</a>
               						</c:otherwise>
               					</c:choose>
               				</c:forEach>
               			</c:when>
               		</c:choose>--%>               		
               </div>
               <!-- 검색 버튼 -->
               <div id="event_search_wrap">
                   <form action="${contextPath}/event/search.do" method="post">
                       <fieldset>
                           <legend>참여마당 검색 영역</legend>
                           <select name="searchtype" id="event_search_menu">
                               <option value="selectAll">전체</option>
                               <option value="selectByPost">글제목+내용</option>
                               <option value="selectByWriter">작성자</option>
                           </select>
                           <input type="search" name="keyword" id="event_search_content">
                           <input type="submit" id="event_search_btn" value="검색">
                       </fieldset>
                    </form>
               </div>
           </div>
           <!-- 게시판 버튼 영역 끝 -->
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