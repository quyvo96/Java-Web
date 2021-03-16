//
https://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/?fbclid=IwAR2yoFQUjByVJwBBUPCTiMIlehBrpZEALoByYQyXf3I8pasl_n8g0mbClR4

https://docs.oracle.com/cd/E19798-01/821-1841/gjddd/index.html?fbclid=IwAR3n0bgIdgdi9Tj74ZKDxdtkaJyQVTZyT_S1_f5x2QH7yJ8h4d-G6uftjlE


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
------result: The type of exception is : java.lang.ArithmeticException: / by zero
------There is an exception: / by zero
