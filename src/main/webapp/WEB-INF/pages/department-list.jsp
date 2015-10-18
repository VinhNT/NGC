<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Danh sach phong ban</title>
</head>
<body>
    <table class="table table-bordered table-hover">
    <thead>
        <tr>
            <td>Ma phong ban</td>
            <td>Ten phong ban</td>
            <td>Mo ta</td>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${departments}" var="department">
        <td>${department.getDmntId()}</td>
        <td>${department.getDmntNme()}</td>
        <td>${department.getDmntDcspt()}</td>
        </c:forEach>
    </tbody>
    </table>
</body>
</html>