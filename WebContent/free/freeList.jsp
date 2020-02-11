<%@page import="com.study.common.dao.CommonCodeDaoOracle"%>
<%@page import="com.study.common.dao.ICommonCodeDao"%>
<%@page import="com.study.common.vo.CodeVO"%>
<%@page import="com.study.free.vo.FreeBoardVO"%>
<%@page import="com.study.free.dao.FreeBoardDaoOracle"%>
<%@page import="com.study.free.dao.IFreeBoardDao"%>
<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.study.member.dao.MemberDaoOracle"%>
<%@page import="com.study.member.dao.IMemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/common_header.jsp"%>
<title>freeList.jsp</title>
	<style type="text/css">
		table.grid th {text-align: center;}		
	</style>	
</head>

		<jsp:useBean id="searchVO" class="com.study.free.vo.FreeSearchVO" />
		<jsp:setProperty property="*" name="searchVO" />

		<%
			request.setCharacterEncoding("UTF-8");

			IFreeBoardDao freeDao = new FreeBoardDaoOracle();
			int rowCount = freeDao.getBoardCount(searchVO);
			searchVO.setTotalRecordCount(rowCount);
			searchVO.setting();
			
			ICommonCodeDao codeDao = new CommonCodeDaoOracle();
			List<CodeVO> a = codeDao.getCodeListByParent("BC00");
			request.setAttribute("catList", a);

			List<FreeBoardVO> list = freeDao.getBoardList(searchVO);
			request.setAttribute("search", searchVO);
			request.setAttribute("list", list);
			
			
			System.out.println(searchVO);

			//dup_key
			//DUP_SUBMIT_PREVENT
		%>
<body>
	<%@include file="/WEB-INF/top_menu.jsp"%>

	<div class="container">
		<div class="page-header">
			<h3>글 목록</h3>
		</div>
		<div class="panel panel-default">
	  <div class="panel-body">
	  	<form action="freeList.jsp" method="get" class="form-horizontal">
	  	
			  <div class="form-group">
			    <label for="id_searchType" class="col-sm-2 control-label">검색</label>
			    <div class="col-sm-2">
			    	<select id="id_searchType" name="searchType" class="form-control input-sm">
			    		<option value="">-- 선택 --</option>
			    		<option value="T" ${"T" eq search.searchType ? 'selected="selected"' : ""}>제목</option>
			    		<option value="W" ${"W" eq search.searchType ? 'selected="selected"' : ""}>작성자</option>
			    		<option value="C"${"C" eq search.searchType ? 'selected="selected"' : ""}>내용</option>
			    	</select>
			    </div>
			    <div class="col-sm-2">	
			      <input type="text" name="searchWord" class="form-control input-sm" value="${search.searchWord}" placeholder="검색어" >			      
			    </div>
			    <label for="id_searchCategory" class="col-sm-2 col-sm-offset-2 control-label">분류</label>
			    <div class="col-sm-2">
			    	<select id="id_searchCategory" name="searchCategory" class="form-control input-sm">
				    	<option value="">-- 선택 --</option>
							<c:forEach items="${catList}" var="vo">
								<option value="${vo.commCd}">${vo.commNm}</option>
								<option value="${vo.commCd}" ${vo.commCd == search.searchCategory ? 'selected="selected"' : ""}>${vo.commNm}</option>
							</c:forEach>
			    	</select>
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-2 col-sm-offset-10" >
			  		<button type="submit" class="btn btn-sm btn-primary">검색</button>
			  	</div>
			  </div>
			 </form>
	  </div>
	</div>	
		<div>
		<div class="pull-left" style="margin-bottom: 5px">
			pages ${search.currentPageNo}/${search.totalPageCount}   ${search.totalRecordCount}rows
		</div>
		
		
		<div class="pull-right" style="margin-bottom: 5px">
			<a href="freeForm.jsp" class="btn btn-primary btn-xs "> 글쓰기 </a>
		</div>
		</div>
		<br>
		<!--페이징 처리 검색파라미터   -->
		
		
		
		<table class="table table-striped table-bordered table-hover">
			<colgroup>
				<col width="5%" />
				<col width="10%" />
				<col />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
			</colgroup>
			<tr>
				<th class="text-center">글번호</th>
				<th class="text-center">분류</th>
				<th class="text-center">제목</th>
				<th class="text-center">작성자</th>
				<th class="text-center">등록일</th>
				<th class="text-center">조회수</th>
			</tr>

			<c:forEach items="${list}" var="vo">
				<tr class="text-center">

					<td>${vo.boNum}</td>
					<td>${vo.boCatNm }</td>
					<td class="text-left"><a
						href="freeView.jsp?boNum=${vo.boNum }">${vo.boTitle}</a></td>
					<td>${vo.boWriter}</td>
					<td>${vo.boRegDate}</td>
					<td>${vo.boHit }</td>
				</tr>
			</c:forEach>
		</table>

		<nav>
			<p>${search.currentPageNo}</p>
				
				<ul class="pagination">
				
				<c:if test="${search.firstPageNoOnPageList > search.pageSize }">
				<li class='page-item '>		
				<a class="page-link" href="freeList.jsp?currentPageNo=${search.currentPageNo - 10 }"><span class="page-link"><10</span></a></li>
				</c:if>
				<c:if test="${search.currentPageNo >1  }">
				<li class='page-item '>		
				<a class="page-link" href="freeList.jsp?currentPageNo=${search.currentPageNo - 1  }"><span class="page-link"><</span></a></li>
				</c:if>
					
					
					<c:forEach var="i" begin="${search.firstPageNoOnPageList }" end="${search.lastPageNoOnPageList }">
					<c:if test="${search.currentPageNo eq i }">
					
						<li class="page-item active"><a class="page-link" href="#"><span class="page-link">${i }<span class="sr-only">(current)</span></span></a>
					</c:if>
					<c:if test="${search.currentPageNo ne i }">

    
						<li class="page-item"><a class="page-link"
							href="freeList.jsp?currentPageNo=${i }">${i }</a>
					</c:if>
					</c:forEach>
					
					<c:if test="${search.currentPageNo < search.totalPageCount }">
					<li class='page-item'>
					<a class="page-link" href="freeList.jsp?currentPageNo=${search.currentPageNo + 1  }">Next</a></li>
					</c:if>
					<c:if test="${search.lastPageNoOnPageList < search.totalPageCount }">
					<li class='page-item'>
					<a class="page-link" href="freeList.jsp?currentPageNo=${search.totalPageCount-search.currentPageNo >= search.pageSize ? search.currentPageNo + 10 : search.totalPageCount  }"> 10></a></li>
					</c:if>
				</ul>

		</nav>	
			
		</div>
</body>
</html>





