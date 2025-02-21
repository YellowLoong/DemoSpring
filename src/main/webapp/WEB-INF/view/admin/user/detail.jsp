<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>User Detail</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">
            <!-- <link rel="stylesheet" href="/css/main.css"> -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        </head>

        <body>
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 mx-auto">
                        <div class="d-flex justify-content-between">
                            <h2>User detail</h2>
                        </div>
                        <hr />

                        <div class="card" style="width: 60%;">
                            <div class="card-header">
                                User Information
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">ID: ${user.id}</li>
                                <li class="list-group-item">Email: ${user.email}</li>
                                <li class="list-group-item">Full name: ${user.fullName}</li>
                                <li class="list-group-item">Address: ${user.address}</li>
                                <li class="list-group-item">Phone: ${user.phone}</li>
                            </ul>
                        </div>

                        <a href="/admin/user" class="btn btn-success mt-3">Back</a>
                    </div>
                </div>

            </div>
        </body>

        </html>