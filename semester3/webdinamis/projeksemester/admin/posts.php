<?php include '../include/db.php'; ?>  
<?php include 'include/navadmin.php'; ?>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
            <?php include 'include/useradmin.php'; ?>  
                <div class="row">
                    <div class='col-xs-12'>
                        <?php
                            if(isset($_GET['post'])){
                                $source = $_GET['post'];
                            }else{
                                $source = "";
                            }
                            switch ($source) {
                                case 'add':
                                    include 'include/addpost.php';
                                    break;
                                case 'edit':
                                    include 'include/editpost.php';
                                    break;
                                default:
                                    include 'include/viewallpost.php';
                                    break;
                            }
                        ?>
                    </div>
                </div>     
                 <!-- /. ROW  -->           
            </div>
             <!-- /. PAGE INNER  -->
        </div>
         <!-- /. PAGE WRAPPER  -->
<?php include 'include/footeradmin.php'; ?>  