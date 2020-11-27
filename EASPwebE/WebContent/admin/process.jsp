<%@page import="com.fp.dao.UserDAO"%>  
<jsp:useBean id="obj" class="com.fp.bean.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status= UserDAO.save(obj);  
if(status>0)  
	out.print("You are successfully registered");
else
	out.print("You are nonsuccessfully registered");
%>  