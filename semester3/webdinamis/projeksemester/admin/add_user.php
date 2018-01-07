<?php include '../include/db.php'; ?>  
<?php include 'include/navadmin.php'; ?>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
            <?php include 'include/useradmin.php'; ?>  
                <div class="row">
                        <div class='col-xs-12'>
                            <?php
                                if(isset($_POST['adduser'])){
                                    $firstName = $_POST['firstName'];
                                    $lastName = $_POST['lastName'];
                                    $username = $_POST['username'];
                                    $role = $_POST['role'];
                                    $email = $_POST['email'];
                                    $password = $_POST['password'];

                                    $query ="INSERT INTO users (user_firstName, user_lastName, user_name, user_role,";
                                    $query .="user_email, user_password";
                                    $query .=") ";
                                    $query .="VALUES (";
                                    $query .=" '{$firstName}',";
                                    $query .=" '{$lastName}',";
                                    $query .=" '{$username}',";
                                    $query .=" '{$role}',";
                                    $query .=" '{$email}',";
                                    $query .=" '{$password}'";
                                    $query .=");";

                                    $insertuser = mysqli_query($koneksi, $query);
                                    if(!$insertuser){
                                        die("Query Error ".mysqli_error($koneksi));
                                    }else{
                                        header("Location: view_user.php");
                                    }                                    
                                }
                            ?>

                            <form class="form-group" action="add_user.php" method="post" enctype="multipart/form-data">
                                <label for="usr">First Name</label>
                                <input type="text" class="form-control" id="usr" name="firstName">
                                <label for="usr">Last Name</label>
                                <input type="text" class="form-control" id="usr" name="lastName">
                                <label for="usr">Username</label>
                                <input type="text" class="form-control" id="usr" name="username">
                                <label for="usr">Role</label>
                                <select class="form-control" id="" name="role">
                                    <?php 
                                        $query="SELECT DISTINCT user_role FROM users";
                                        $runquery = mysqli_query($koneksi, $query);
                                        while ( $row = mysqli_fetch_assoc($runquery)) {
                                            $user_role = $row['user_role'];
                                    ?>
                                    <option><?php echo $user_role ?></option>
                                    <?php } ?>
                                </select>
                                <label for="usr">Email</label>
                                <input type="email" name="email" class="form-control" id="usr">
                                <label for="usr">Password</label>
                                <input type="password" name="password" class="form-control" id="usr"><br>
                                <input type="submit" name="adduser" class="btn btn-primary" >
                            </form>
                        </div>
                </div>     
                 <!-- /. ROW  -->           
            </div>
             <!-- /. PAGE INNER  -->
        </div>
         <!-- /. PAGE WRAPPER  -->
<?php include 'include/footeradmin.php'; ?>  

