<%@ page language="java" contentType="text/html;charset=GBK" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="common.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����</title>
    
  </head>
  
  <body>
	<div id="menu-container">
		<div class="divs">
			<!-- share start -->
			<div class="content portfolio" >
				<div class="container">
					<div class="row">
			        	<div class="col-md-12">
			            	<h1>С������Ŀγ�</h1>
			            </div>
	    				<div class="upload">
				            <form  name="courseInfo" method="post" action="servlet/UploadCourse"  enctype="multipart/form-data">
				            	<div class="zipfile" ><div class="zipfile1"><div class="fa fa-upload"></div>�����ҵĿγ�</div><input class="upbtn" id="coursezipfile" name="coursezipfile" type="file"  onChange="return autoSubmit()"></div>
				            	<input type="submit" id="submit" >
				            	<input type=hidden name="theManifest">
					   			<input type=hidden name="theZipFile">	
				            </form>
			            </div>
		            <form name="courseRegForm" method="post" action="<%=basePath %>servlet/ProRegCourse">
		            <div>
    					<input class="btn_sub" type="submit" name="submit" value="��ɿγ�ѡ��">
    				</div>
        			</div>
			        <div class="row templatemo_portfolio">
			        	<c:forEach items="${courseList}" var="ls" varStatus="st">
				        	<div class="col-md-3 col-sm-12">
				            	<div class="gallery-item">
				            	 <!-- onmouseout="this.getElementsByTagName('div')[0].style.display='none';" onmouseover="this.getElementsByTagName('div')[0].style.display=''"        style="display:bolc;"-->
				            		<div>
										<img src="<%=basePath %>images/course/<c:out value="${ls.image}"/>.png" alt="No Image">
										<div class="change_btn_div">
											<img id="<c:out value="${st.index}"/>" class="imagecbox" src="<%=basePath %>images/<c:out value="${ls.checked}"/>.png" onclick="changeimg('<c:out value="${st.index}"/>','<c:out value="${ls.courseID}"/>')">
											<input type="checkbox" class="cbox" id=<c:out value="${ls.courseID}"/> name=<c:out value="${ls.courseID}"/> value='1' <c:out value="${ls.checked}"/> >
										</div>
									</div>
									<div>
			                        	<div class="templatemo_teamtitle" title="<c:out value="${ls.courseTitle}"/>"><c:out value="${ls.courseTitle}"/></div>
			                        	<div class="templatemo_teampost">������:<c:out value="${ls.author}"/></div>
			                        	<div class="templatemo_teampost_1">����<font style="color:green;font-weight:bold;"><c:out value="${ls.regnum}"/></font>��ѧϰ</div>
										<div class="templatemo_teampost_2">����</div>
										<div class="stardiv">
											<input name="<c:out value="${ls.courseID}"/>" type="radio" class="star" value="1" <c:out value="${ls.evaluate[0]}" /> disabled>
											<input name="<c:out value="${ls.courseID}"/>" type="radio" class="star" value="2" <c:out value="${ls.evaluate[1]}" /> disabled>
											<input name="<c:out value="${ls.courseID}"/>" type="radio" class="star" value="3" <c:out value="${ls.evaluate[2]}" /> disabled>
											<input name="<c:out value="${ls.courseID}"/>" type="radio" class="star" value="4" <c:out value="${ls.evaluate[3]}" /> disabled>
											<input name="<c:out value="${ls.courseID}"/>" type="radio" class="star" value="5" <c:out value="${ls.evaluate[4]}" /> disabled>
										</div>
										<div class="EvaNum"><font style="color:#FFA500;font-style: italic;">(<c:out value="${ls.evanum}"/>��)</font></div>
									</div>
								</div>
				            </div>
			            </c:forEach>
			        </div>
			        </form>
			        <script type="text/javascript" src="js/scrolltopcontrol.js"></script>
  				</div>
			</div>
		</div>
	</div>
	<!-- share end -->
 <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
