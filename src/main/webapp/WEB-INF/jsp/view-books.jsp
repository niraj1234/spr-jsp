
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <title>View Books</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
<center>
<h2 style="color:#29b89c" >Color Book Management System Niraj</h2>
<img alt="image" src="https://picomimages.s3.ap-south-1.amazonaws.com/imgn/chhathPujaBiharVillage-t.jpg">

        <c:url var="add_book_url" value="/addBook"/>
        <form:form action="${add_book_url}" method="post" modelAttribute="book">
            <form:label path="isbn">ISBN : </form:label> <form:input type="text" path="isbn" placeholder="isbn" />
            <form:label path="name">B : </form:label> <form:input type="text" path="name"  placeholder="book name" />
            <form:label path="author">A : </form:label> <form:input path="author"  placeholder="book author"  />
            <input type="submit" value="submit"/>
        </form:form>
<hr>
<h2>Book data in Book Store</h2>

        <table>
            <thead>
                <tr>
                    <th>ISBN</th>
                    <th>Name</th>
                    <th>Author</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td>${book.isbn}</td>
                        <td>${book.name}</td>
                        <td>${book.author}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
</center>    

    </body>
</html>

