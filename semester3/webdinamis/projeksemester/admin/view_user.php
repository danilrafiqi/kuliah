<?php include '../include/db.php'; ?>  
<?php include 'include/navadmin.php'; ?>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
            <?php include 'include/useradmin.php'; ?>  
                <div class="row">
                        <div class='col-xs-12'>
                          <table class="table table-bordered">
                            <thead>
                              <tr>
                                <th>Id</th>
                                <th>Username</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Role</th>
                              </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $query="SELECT * FROM users ORDER BY user_id DESC";
                                    $runquery = mysqli_query($koneksi, $query);

                                    while ( $row = mysqli_fetch_assoc($runquery)) {
                                        $user_id = $row['user_id'];
                                        $username = $row['user_name'];
                                        $user_password = $row['user_password'];
                                        $user_firstName = $row['user_firstName'];
                                        $user_lastName = $row['user_lastName'];
                                        $user_email = $row['user_email'];
                                        $user_role = $row['user_role'];
                                        echo "<tr>";
                                        echo "<td>{$user_id}</td>";
                                        echo "<td>{$username}</td>";
                                        echo "<td>{$user_firstName}</td>";
                                        echo "<td>{$user_lastName}</td>";
                                        echo "<td>{$user_email}</td>";
                                        echo "<td>{$user_role}</td>";
                                        echo "<td><a href='view_user.php?edit={$user_id}'>Edit</a></td>";
                                        echo "<td><a href='view_user.php?delete={$user_id}'>Delete</a></td>";
                                        echo "</tr>";
                                    }
                                ?> 

                                <?php 
                                    if (isset($_GET['delete'])) {
                                        $idku = $_GET['delete'];
                                        $query="DELETE FROM users where user_id = {$idku}";
                                        $runquery = mysqli_query($koneksi, $query);
                                        header("Location: view_user.php");
                                    }
                                ?> 
                            </tbody>
                          </table>
                        </div>
                </div>     
                 <!-- /. ROW  -->           
            </div>
             <!-- /. PAGE INNER  -->
        </div>
         <!-- /. PAGE WRAPPER  -->
<?php include 'include/footeradmin.php'; ?>  