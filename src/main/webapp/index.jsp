<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- BOOTSTRAP -->

<div class="collapse" id="navbarToggleExternalContent">
  <div class="bg-dark p-4">
    <h5 class="text-white h4">Collapsed content</h5>
    <span class="text-muted">Toggleable via the navbar brand.</span>
  </div>
</div>
<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>


<!-- EXEMPLO -->
   <%! 
      String today(){
	   java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat ("yyyy-mm-dd hh:mm:ss");
	   return dt.format(new java.util.Date());
       }
   %>
   
    <c:set var="variavel" value = "Primeira página JSP utilizando JSTL"/>
    <c:out value="${variavel}"/>
    <c:set var="formatar" value="true"/> 
    <c:set var ="d1" value="<%=new java.util.Date()%>"/>
    <h1>A data de hoje é: <c:out value="${d1}"/> </h1>
    <h1>A data de hoje é: <fmt:formatDate pattern = "yyy-MM-dd hh:mm:ss" value="${d1}"/> </h1>
    <c:if test="${formatar == true}"> <p>Variavel formatar = <c:out value="${formatar}" /> </p></c:if>

    <h1> A data de hoje é <c:choose>
    <c:when test = "${formatar == true}">
    <c:out value="<%= today() %>"/>
    </c:when> 
    <c:otherwise>
     <h1><c:out value="${d1}"/></h1>
     </c:otherwise>
    </c:choose></h1>
   

<!-- EXERCICIO -->
     <c:set var="nota" value="10"/>
     <c:if test= "${nota > 10}" >
     <h1><c:out value="Você tirou maior que 10!"></c:out> </h1>
     </c:if>

     <c:choose>
     <c:when test= "${nota < 10}">
     <h1><c:out value="Você não tirou menor 10"/></h1>
     </c:when>

     <c:otherwise>
     <h1><c:out value="Você tirou 10!"/></h1>
     </c:otherwise>
     </c:choose> 
     
     

</body>
</html>