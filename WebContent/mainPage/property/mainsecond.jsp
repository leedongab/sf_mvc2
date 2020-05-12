
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet" href="../css/mainsecond.css">
<div class="sf_wp">
	<p id="mainP">모두가 행복해지는<br /><span class="sf_span_1">세이프티 캠페인</span>에 참여해주세요</p>

	<div id="contents">
		<div id="container">

		<div id="com">

			<a href="<%=vo.getCamlink() %>?bno=<%=vo.getBno() %>">
				<img id="camimg" src="../<%=vo.getCamimg() %>" alt="<%=vo.getCamtitle() %>" />
			</a>
			<div class="p1" ><%=vo.getCamtitle() %></div>
			<div class="p2"><%=vo.getCamcontents() %></div>


		</div>

		<%
			}
		%>
		</div>
	<div id="paging">
	<table id="tb1">
	<tr id="tr1">
			<td id="pageList">
				<%
					for(int i=currentPage-3; i<=currentPage+3; i++){
						if(i<=0){
							continue;
						}else if(i>totalPage){
							break;
						}else {
				%>

				<a href="main.jsp?cp=<%=i %>"><span id="page"></span></a>
				<%
					}// if end

				}// for end

				%>

			</td>
		</tr>
	</table>

	<div>
	<a href="main.jsp?cp=<%=currentPage+1 %>"><div class="sf_div_3" style=" margin:-330px -40px 0 0; width: 70px; height: 70px;float: right;">
		<img src="../image/right.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	<a href="main.jsp?cp=<%=currentPage-1 %>"><div style=" margin:-330px 0 0 -40px; width: 70px; height: 70px;float: left;">
		<img src="../image/left.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	</div>

	</div>


	</div>





</div>