<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><sitemesh:write property='title'/></title>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="css/jquery-ui.css" />" rel="stylesheet">
    <link href="<c:url value="css/jquery.dataTables.min.css" />" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="css/sb-admin.css" />" rel="stylesheet">
    <link href="<c:url value="css/web-ngc.css" />" rel="stylesheet">
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="js/vendor/jquery.js"/>"></script>
    <script src="<c:url value="js/vendor/bootstrap.min.js"/>"></script>
    <script src="<c:url value="js/vendor/jquery.dataTables.min.js"/>"></script>
    <script src="<c:url value="js/vendor/bootstrap.file-input.js"/>"></script>
    <script src="<c:url value="js/vendor/jquery-ui.js"/>"></script>
    <script src="<c:url value="js/vendor/jquery.fileupload.js"/>"></script>
    <!-- WebSite JS -->
    <script src="<c:url value="js/ngc.js"/>"></script>
    <script src="<c:url value="js/utils.js"/>"></script>
    <script>
        ngcJs.setContextUrl('${pageContext.request.contextPath}');
    </script>
</head>

<body>
    <sitemesh:write property='body'/>
</body>
</html>
