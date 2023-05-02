<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="de">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Taubenschlag AG - Client-Server - Login</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <div class="container px-4">
                <a class="navbar-brand" href="login.jsp">Taubenschlag AG</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#client-server">Client-Server</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-primary bg-gradient text-white">
            <div class="container px-4 text-center">
                <h1 class="fw-bolder">Wilkommen zur Literaturverwaltung</h1>
                <p class="lead">Ein Projekt von: </br>
                 Lisa Fritze, Max Schwarzer, Merle Deike,
                </br>
                 Fabian Röske, Marc Franke, Frederick Mainzer
                </p>
                <a class="btn btn-lg btn-light" href="#Client-Server">Viel Spaß!</a>
            </div>
        </header>
        <section id="Client-Server">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                            <title>Login</title>
                            <h1>
                                <center>
                                    Login
                                </center>
                            </h1>
                            <p>
                                <center>
                                    ID:
                                    <input type="text" name="TILoginID" value="" /> <br>
                                    Passwort:
                                    <input type="password" name="TIPasswort" value="" /> <br>
                                    <input type="radio" id="Mitarbeiter" name="RBGLogin" />
                                    <label for="Mitarbeiter">Mitarbeiter</label>            
                                    <input type="radio" id="Verantwortlicher" name="RBGLogin" />
                                    <label for="Verantwortlicher">Verantwortlicher</label>       
                                    <input type="radio" id="Admin" name="RBGLogin" />
                                    <label for="Admin">Admin</label> <br>

                                    <input type="button" value="Login" name="BLogin" onclick="nextgui()"/>
                                </center>
                            </p>

                            <script>
                                function nextgui() {
                                    var link = "";

                                    if (document.getElementById("Mitarbeiter").checked) {
                                        link = "MitarbeiterGUI.jsp";
                                    } else if (document.getElementById("Verantwortlicher").checked) {
                                        link = "VerantwortlicherGUI.jsp";
                                    } else if (document.getElementById("Admin").checked) {
                                        link = "AdminGUI.jsp";
                                    }
                                    
                                    window.location.replace(link);
                                } 
                            </script>   
                       
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            
            <div class="container px-4">
                <center>
                    <iframe src="footer.html">
                    </iframe>
                </center>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
