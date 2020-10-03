<%--
  Created by IntelliJ IDEA.
  User: arkadiusz
  Date: 02.10.2020
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en"><head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="../theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../theme/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">
   <%@include file="../footer.jsp"%>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>


                </nav>

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> dodaj nowego</a>
                </div>


                <div class="row">
                    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Lista Użytkowników</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive-xl">
                <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                  <thead>
                    <tr role="row"><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 218.75px;">id</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 328.75px;">nazwa użytkownika</th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 160.75px;">email</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 76.75px;">akcja</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${list}" var="user">
                  <tr role="row" class="odd">
                      <td class="">${user.id}</td>
                      <td>${user.username}</td>
                      <td>${user.email}</td>
                      <td>
                          <div class="col d-flex justify-content-end mb-2 noPadding">
                          <a href="/user/usun?delete=${user.id} " class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">Usuń</a>
                              <a href="/user/edit?edit=${user.id}" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">edytuj</a>
                              <a href="/user/detail?detail=${user.id}" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">pokaż szczegóły</a>
                      </div>
                      </td>
                    </tr>
                  </c:forEach>
                      </tbody>
                </table></div></div></div>
              </div>
            </div>
          </div>
                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>





</body></html>
