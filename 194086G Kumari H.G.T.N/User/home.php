<?php require_once "controllerUserData.php"; ?>
<?php 
$email = $_SESSION['email'];
$password = $_SESSION['password'];
if($email != false && $password != false){
    $sql = "SELECT * FROM sign WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
        $fetch_info = mysqli_fetch_assoc($run_Sql);
        $status = $fetch_info['status'];
        $code = $fetch_info['code'];
        if($status == "verified"){
            if($code != 0){
                header('Location: reset-code.php');
            }
        }else{
            header('Location: user-otp.php');
        }
    }
}else{
    header('Location: login-user.php');
}
$query = "SELECT quarantine, count(*) as number FROM patient GROUP BY quarantine";  
$result = mysqli_query($con, $query); 
$query1 = "SELECT gender, count(*) as number FROM user GROUP BY gender";  
$result1 = mysqli_query($con, $query1); 
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>User Home page</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
</head>

<body id="reportsPage">
    <div class="" id="home">
        <nav class="navbar navbar-expand-xl">
            <div class="container h-100">
                <a class="navbar-brand" href="">
                    <h1 class="tm-site-title mb-0">User</h1>
                </a>
                <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link active" href="http://localhost/webproject/user/Signup&login/home.php">
                                <i class="fas fa-home"></i>
                                Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-file-alt"></i>
                                <span>
                                    User <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="http://localhost/webproject/User/Add%20user/input.php">Add user</a>
                                <a class="dropdown-item" href="http://localhost/webproject/User/Add%20user/test.php">View user</a>
                            </div>
                        </li>
                        <li class="nav-item">
								<a class="nav-link" href="http://localhost/webproject/User/review/input.php">
									<i class="far fa-star"></i>
									Review
								</a>
								</li>

                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost/webproject/User/profile/home.php">
                                <i class="far fa-user"></i>
                                Profile
                            </a>
                            </li>
                        <li class="nav-item dropdown">
                        <a class="nav-link" href="http://localhost/Webproject/Admin&User/Front%20page.html">
                                <i class="fas fa-cog"></i>
                                Sign Out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="text-white mt-5 mb-5">Welcome back,  <?php echo $fetch_info['name'] ?></p>
                </div>
            </div>
            <!-- row -->
            <div class="row tm-content-row">
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block">
                        <h2 class="tm-block-title">Users Information(Gender)</h2>
                        <div id="pieChartContainer">   
                                 <div id="piechart1" style="width: 450px; height: 300px;"></div>  
                        </div>                                                               
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller">
                    <h2 class="tm-block-title">Quarantine Patients Information</h2>
                        <div id="pieChartContainer">   
                                <div id="piechart" style="width: 450px; height: 300px;"></div>  
                        </div>                                           
                    </div>
                </div>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="js/Chart.min.js"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="js/tooplate-scripts.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
           <script type="text/javascript">  
           google.charts.load('current', {'packages':['corechart']});  
           google.charts.setOnLoadCallback(drawChart);  
           function drawChart()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Quarantine', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo "['".$row["quarantine"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {
                };
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));  
                chart.draw(data, options);  

                var data = google.visualization.arrayToDataTable([  
                          ['Gender', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($result1))  
                          {  
                               echo "['".$row["gender"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {
                };
                var chart = new google.visualization.PieChart(document.getElementById('piechart1'));  
                chart.draw(data, options);  
           }  
           </script>     
</body>
</html>