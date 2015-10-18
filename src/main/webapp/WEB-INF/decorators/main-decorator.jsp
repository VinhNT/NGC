<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><sitemesh:write property='title'/></title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="css/jquery-ui.css" />" rel="stylesheet">
    <link href="<c:url value="css/jquery.dataTables.min.css" />" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="css/sb-admin.css" />" rel="stylesheet">
    <link href="<c:url value="css/web-evn.css" />" rel="stylesheet">
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="js/vendor/jquery.js"/>"></script>
    <script src="<c:url value="js/vendor/bootstrap.min.js"/>"></script>
    <script src="<c:url value="js/vendor/jquery.dataTables.min.js"/>"></script>
    <script src="<c:url value="js/vendor/bootstrap.file-input.js"/>"></script>
    <script src="<c:url value="js/vendor/jquery-ui.js"/>"></script>
    <!-- WebSite JS -->
    <script src="<c:url value="js/evnReward.js"/>"></script>
    <script src="<c:url value="js/utils.js"/>"></script>
    <script>
        evnReward.setUrlContext('${pageContext.request.contextPath}');
    </script>
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<c:url value="/"/>">SB Admin</a>
            </div>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="<c:url value="/department"/>"><i class="fa fa-fw fa-dashboard"></i>Phong ban</a>
                    </li>
                    <li>
                        <a href="<c:url value="/employee-list"/>"><i class="fa fa-fw fa-bar-chart-o"></i>Ca nhan</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Blank Page
                            <small>Subheading</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-file"></i> Blank Page
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                <sitemesh:write property='body'/>
                </div>
            </div>
            <!-- /.container-fluid -->
    
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>
</html>
