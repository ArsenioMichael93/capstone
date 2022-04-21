<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset ="utf-8">
    <title>Sample Project</title>


    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="../../../pub/css/style.css">

</head>



<body>

<div class="page-top">
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark" >
        <div class="container-fluid" style="width: 100%">
            <a class="navbar-brand" href="/index">Shiny Pools</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="mynavbar">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/ajax">AJAX Example</a>
                    </li>
                    <li class="nav-item">
                        <sec:authorize access="hasAuthority('ADMIN')">
                        <a class="nav-link" href="/upload">Upload Example</a>
                        </sec:authorize>
                    </li>
                </ul>
                    <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <sec:authorize access="!isAuthenticated()">
                        <a class="nav-link" href="/user/register">Sign Up</a>
                        </sec:authorize>
                    </li>
                    <li class="nav-item">
                        <sec:authorize access="hasAuthority('ADMIN')">
                            <a class="nav-link" href="/user/search">Search</a>
                        </sec:authorize>
                    </li>
                    <li class="nav-item">
                        <sec:authorize access="!isAuthenticated()">
                             <a class="nav-link" href="/login/login">Login</a>
                        </sec:authorize>
                    </li>
                    <li class="nav-item">
                        <sec:authorize access="isAuthenticated()">
                             <a class="nav-link" href="/login/logout">Logout</a>
                        </sec:authorize>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>


</body>