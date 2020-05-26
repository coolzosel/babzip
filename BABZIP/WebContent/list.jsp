<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="model.ReviewVO" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%response.setHeader("Access-Control-Allow-Origin","*"); %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<table align="center" border="0" cellpadding="5" cellspacing="2" width="100%" bordercolordark="white" bordercolorlight="black">
	<tr>
        <td bgcolor="#336699">
            <p align="center">
            <font color="white"><b><span style="font-size:9pt;">이름</span></b></font></p>
        </td>
        <td bgcolor="#336699">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">평점</span></b></font></p>
        </td>
        <td bgcolor="#336699">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">한줄평</span></b></font></p>
        </td>
        <td bgcolor="#336699">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">작 성 일</span></b></font></p>
        </td>
        
    </tr>
	<c:if test="${fn:length(requestScope.list) == 0}">
		<tr>
	        <td colspan="5">
	            <p align="center"><b><span style="font-size:9pt;">등록된 방명록이 없습니다.</span></b></p>
	        </td>
	    </tr>
	</c:if>
	<c:forEach items="${requestScope.list}" var="lis">
		<tr>
			<td bgcolor="">
			    <p align="center"><span style="font-size:9pt;">
			    ${lis.name}</span></p>
			</td>
			<td bgcolor="">
				<p><span style="font-size:9pt;">			
				${lis.star}점</span></p>
			</td>
			<td bgcolor="">
				<p align="center"><span style="font-size:9pt;">	
				<a href="controller?command=read&num=${lis.num}">			
				${lis.review}</a>
			</span></p>
			</td>
			<td bgcolor="">
			    <p align="center"><span style="font-size:9pt;">
			    ${lis.writeday}</span></p>
			</td>
		</tr>
	</c:forEach>
 	
	    <tr>
	        <td bgcolor="">
	            <p align="center"><span style="font-size:9pt;"></span></p>
	        </td>
	        <td bgcolor="">
				<p><span style="font-size:9pt;"><a href="ReadAContent.jsp?num= "></a></span></p>
	        </td>
	        <td bgcolor="">
	            <p align="center"><span style="font-size:9pt;">
					<a href="mailto:"></a>
				</span></p>
	        </td>
	        <td bgcolor="">
	            <p align="center"><span style="font-size:9pt;"></span></p>
	        </td>
	        <td bgcolor="">
	            <p align="center"><span style="font-size:9pt;"></span></p>
	        </td>
	    </tr>

</table>
<hr>
<div align=right>
<span style="font-size:9pt;">&lt;<a href="write.html">글쓰기</a>&gt;</span></div>




<script>
	
	
	var data2 =JSON.parse(`${requestScope.list}`);
		
	star = [];
   
    for(var i = 0;i<data2.length;i++){
        star.push(data2[i].star);
    }
    
	
	
	//[1점 : 데이터][2점 : 데이터] 이렇게생각하긴햇는데
	//그러면 평점테이블에서 count(*)로 각 별점별 갯수 데이터 불러와서 이중배열로 저장해야될거같아
	//쿼리문 들어가야겠다
	//우선 이것보다 검색기능부터 하잨ㅋㅋㅋ
	
	console.log(data2[0].star); // 여기서 star만 뽑아내서 push하면되는데 그게안돼
	console.log(star);
	
	function drawChart() {
		console.log(data3);
	    var data = google.visualization.arrayToDataTable(data2);
	    var options = {
	        title: 'My Daily Activities'
	    }
	    //사용자 정의 새로운 추가 함수
		
	    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
	    chart.draw(data, options);
	    
	}
	
	
	function chartDraw() {
	    google.charts.load('current', { 'packages': ['corechart'] });
	    google.charts.setOnLoadCallback(drawChart);
	    //console.log(`${requestScope.list}`);
	}
	

</script>

<button onclick="chartDraw()">차트 그리기</button>
<div id="piechart" style="width: 900px; height: 500px;"></div>
