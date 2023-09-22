<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Book</title>
    </head>
    <body>
        <c:if test="${addBookSuccess}">
            <div>Successfully added Book with ISBN: ${savedBook.isbn}</div>
        </c:if>

        <c:url var="add_book_url" value="/addBook"/>
        <form:form action="${add_book_url}" method="post" modelAttribute="book">
            <form:label path="isbn">ISBN : </form:label> <form:input type="text" path="isbn" placeholder="isbn" /><br>
            <form:label path="name">B : </form:label> <form:input type="text" path="name"  placeholder="book name"  /><br>
            <form:label path="author">A : </form:label> <form:input path="author"  placeholder="book author"  /><br>
            <input type="submit" value="submit"/>
        </form:form>
    </body>
</html>

