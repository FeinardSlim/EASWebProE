<%@page import="com.fp.dao.RelawanDao"%>  
<jsp:useBean id="u" class="com.fp.bean.Relawan"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
RelawanDao.delete(u);  
response.sendRedirect("deletesuccessrelawan.jsp");  
%>  