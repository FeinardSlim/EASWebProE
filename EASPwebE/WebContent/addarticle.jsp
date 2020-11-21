<%@page import="com.fp.dao.ArticleDao"%>  
<jsp:useBean id="u" class="com.fp.bean.Article"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=ArticleDao.save(u);  
if(i>0){  
response.sendRedirect("addarticle-success.jsp");  
}else{  
response.sendRedirect("addarticle-error.jsp");  
}  
%>  