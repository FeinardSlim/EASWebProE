<%@page import="com.fp.dao.RelawanDao"%>  
<jsp:useBean id="u" class="com.fp.bean.Relawan"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=RelawanDao.update(u);  
response.sendRedirect("viewrelawan.jsp");  
%>  