<%@page import="com.fp.dao.RelawanDao"%>  
<jsp:useBean id="u" class="com.fp.bean.Relawan"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=RelawanDao.save(u);  
if(i>0){  
response.sendRedirect("addrelawan-success.jsp");  
}else{  
response.sendRedirect("addrelawan-error.jsp");  
}  
%>  