<%@ page import="domain.ListInfos"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="domain.UseHistoryVO"%>
<%@ page import="java.util.Collection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!-- 
ListInfos list = (ListInfos) request.getAttribute("list");
Collection<UseHistoryVO> goList = list.getGoList();
Collection<UseHistoryVO> backList = list.getBackList();
 -->




    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>이용내역</title>
  <link rel="stylesheet" type="text/css" href="views/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
</head>

<body class="page04">
        <div class="d01 pd16">
            <div class="tC title"><h2>이용내역</h2></div>
            <ul class="ulFl school">
                <li class="on">등교</li>
                <li>하교</li>
            </ul>
        </div>

        <ul class="list pd16">


<!-- 여기부터반복시작 -->
<c:forEach var="goList" items="${list.goList }" varStatus="listNumber">
	            <li><c:out value="여기는<li>" />
	                <div class="fL">
	                    <strong>${goList.start } ~ ${goList.end }</strong><c:out value="여기는<strong>" /><br>
	                    <span>${goList.bpdate }</span><c:out value="여기는<span>" />
	                </div>
	                <div class="fR">
	                    <span>2022. 02. 18</span><br>
	                    <b>${goList.status }</b><c:out value="여기는<b>" />
	                </div>
	            </li>
</c:forEach>
<!-- 여기까지반복끝 -->        
 
        </ul>

		<ul class="list pd16">
<!-- 
{
	Iterator<UseHistoryVO> it = backList.iterator();
	while(it.hasNext()){
		UseHistoryVO vo = it.next();
-->
<!-- 여기부터반복시작 -->    
<c:forEach var="backList" items="${list.backList }" varStatus="listNumber">    
	            <li> <c:out value="카운트하기 ${listNumber.count }" />
	                <div class="fL">
	                    <strong>
	                    	<c:out value="${backList } ~ ${backList }" />
	                    </strong><br>
	                    <span>${backList }</span>
	                </div>
	                <div class="fR">
	                    <span>2022. 02. 18</span><br>
	                    <b><c:if test="${listNumber.count==1}">조건출력${backList }</c:if></b>
	                </div>
	            </li>
<!--
	}
}
-->            
</c:forEach>
<!-- 여기까지반복끝 -->
        </ul>
        <ul class="list pd16">
<!-- 여기부터반복시작 -->    
<c:forEach var="backList" items="${list.backList }" varStatus="listNumber">    
	            <li> ${listNumber.count }
	                <div class="fL">
	                    <strong>${backList.start } ~ ${backList.end }</strong><br>
	                    <span>${backList.bpdate }</span>
	                </div>
	                <div class="fR">
	                    <span>2022. 02. 18</span><br>
	                    <b>${backList.status }</b>
	                </div>
	            </li>
</c:forEach>
<!-- 여기까지반복끝 -->
        
        </ul>
        
        
        

    <div class="FAB">
        <ul class="ulFl">
            <li><a href="mypage.jsp"><img src="views/img/ico01.png"><p>내정보</p></a></li>
            <li><a href="bus.jsp"><img src="views/img/ico02.png"><p>버스탑승</p></a></li>
            <li class="on"><a href="list.jsp"><img src="views/img/ico03_on.png"><p>이용내역</p></a></li>
        </ul>
    </div>
</body>
</html>
