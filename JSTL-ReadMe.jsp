//JSTL
//https://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/?fbclid=IwAR2yoFQUjByVJwBBUPCTiMIlehBrpZEALoByYQyXf3I8pasl_n8g0mbClR4

//https://docs.oracle.com/cd/E19798-01/821-1841/gjddd/index.html?fbclid=IwAR3n0bgIdgdi9Tj74ZKDxdtkaJyQVTZyT_S1_f5x2QH7yJ8h4d-G6uftjlE


<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

----------<c:catch>--------------
<body>  
    <c:catch var ="catchtheException">  
    <% int x = 2/0;%>  //sai
    </c:catch>  
    <c:if test = "${catchtheException != null}">  
    <p>The type of exception is : ${catchtheException} <br />  
    There is an exception: ${catchtheException.message}</p>  
    </c:if>  
</body>   
//------result: The type of exception is : java.lang.ArithmeticException: / by zero
//--------------There is an exception: / by zero

----------<c:choose>--------<c:otherwise>------
<body>  
        <c:set var="income" scope="session" value="${4000*4}"/>  
        <p>Your income is : <c:out value="${income}"/></p>  
        <c:choose>  
            <c:when test="${income <= 1000}">  
               Income is not good.  
            </c:when>  
            <c:when test="${income > 10000}">  
                Income is very good.  
            </c:when>  
            <c:otherwise>  
               Income is undetermined...  
            </c:otherwise>  
        </c:choose>  
</body> 
//------result: Your income is : 16000  
//--------------Income is very good.


----------<c:forEach>--------------
<c:forEach

    items="<object>"

    begin="<int>"

    end="<int>"

    step="<int>"

    var="<string>"

    varStatus="<string>">
>
....
</c:forEach>

<body>
    <c:forEach var = "i" begin = "1" end = "5">
       Item <c:out value = "${i}"/><p>
    </c:forEach>
</body>

 <c:if test="${not empty newsList}">
    <ul>
        <c:forEach items="${newsList}" var="news">
            <li>${news.id}-${news.title}</li>
        </c:forEach>


    </ul>
</c:if>

----------<c:url>-----<c:param>----------

    <body>  
        <c:url value="/index1.jsp" var="completeURL"/>  
         <c:param name="trackingId" value="786"/>  
         <c:param name="user" value="Nakul"/>  
        </c:url>  
        ${completeURL}  
    </body>

//-------result : /JSP/index1.jsp?trackingId=786&user=Nakul  