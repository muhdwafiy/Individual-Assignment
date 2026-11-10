<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--
    Document   : profile.jsp
    Description: Displays the submitted profile information (Bootstrap + JavaScript)
    @author wafiy
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Profile</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- My own CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container py-4">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 col-lg-6">

                <div class="card shadow">
                    <div class="card-header text-center">
                        <h1 class="h3 mb-0">My Personal Profile</h1>
                    </div>

                    <div class="card-body p-4">

                        <!-- JavaScript fills this greeting -->
                        <div id="greeting" class="alert alert-success text-center"></div>

                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <div class="label-text">Name</div>
                                <div class="value-text">${name}</div>
                            </li>
                            <li class="list-group-item">
                                <div class="label-text">Student ID</div>
                                <div class="value-text">${studentId}</div>
                            </li>
                            <li class="list-group-item">
                                <div class="label-text">Programme</div>
                                <div class="value-text">${programme}</div>
                            </li>
                            <li class="list-group-item">
                                <div class="label-text">Email</div>
                                <div class="value-text">${email}</div>
                            </li>
                            <li class="list-group-item">
                                <div class="label-text">Hobbies</div>
                                <div class="value-text">${hobbies}</div>
                            </li>
                            <li class="list-group-item">
                                <div class="label-text">Self-Introduction</div>
                                <div class="value-text">${intro}</div>
                            </li>
                        </ul>

                        <div class="d-grid gap-2 mt-4">
                            <button type="button" class="btn btn-success" onclick="window.print()">Print Profile</button>
                            <a href="index.html" class="btn btn-outline-primary">&larr; Back to Form</a>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- My own JavaScript -->
    <script src="js/script.js"></script>
</body>
</html>