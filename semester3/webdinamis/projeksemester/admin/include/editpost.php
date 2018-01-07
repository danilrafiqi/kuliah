<?php 
    if (isset($_GET['idpost'])) {
        $idpost = $_GET['idpost'];

        $query="SELECT * FROM post WHERE post_id = {$idpost}";
        $runquery = mysqli_query($koneksi, $query);
        while ( $row = mysqli_fetch_assoc($runquery)) {
            $post_author = $row['post_author'];
            $post_comment = $row['post_comment'];
            $post_content = $row['post_content'];
            $post_date = $row['post_date'];
            $post_judul = $row['pst_judul'];
            $post_kategori = $row['post_kategori'];
            $post_tags = $row['post_tags'];
            $post_image = $row['post_image'];
?>


<form class="form-group" action="" method="post" enctype="multipart/form-data">
    <label for="usr">Penulis</label>
    <input value="<?php echo $post_author ?>" type="text" class="form-control" id="usr" name="author">
    <label for="usr">Judul</label>
    <input value="<?php echo $post_judul ?>" type="text" class="form-control" id="usr" name="judul">
    <label for="usr">Kategori</label>
    <input value="<?php echo $post_kategori ?>" type="text" class="form-control" id="usr" name="kategori">
    <label for="usr">Tags</label>
    <input value="<?php echo $post_tags ?>" type="text" class="form-control" id="usr" name="tag">
    <label for="usr">Date</label>
    <input value="<?php echo $post_date ?>" type="date" class="form-control" id="usr" name="tanggal">
    <label for="usr">Image</label><br>
    <img src="../images/<?php echo $post_image ?>" class='img-responsive' width=300px><br>
    <input type="file" name="image" class="form-control" id="usr">
    <label for="usr">Komentar</label>
    <textarea name="comment" class="form-control"><?php echo $post_comment ?></textarea><br>
    <label for="usr">Konten</label>
    <textarea name="content" class="form-control"><?php echo $post_content ?></textarea><br>
    <br>
    <input type="submit" name="updatepost" class="btn btn-primary" >
</form>
<?php } } ?>

<?php
    if(isset($_POST['updatepost'])){
        $author = $_POST['author'];
        $judul = $_POST['judul'];
        $kategori = $_POST['kategori'];
        $tag = $_POST['tag'];
        $date = $_POST['tanggal'];
        $image = $_FILES['image']['name'];
        $imagetmp = $_FILES['image']['tmp_name'];
        $comment = $_POST['comment'];
        $content = $_POST['content'];
        
        if(move_uploaded_file($imagetmp, "../images/$image")){
            echo "Berhasil";
        }else{
            echo "GAGAL";
        }
        if(empty($image)){
            $queryimage = "SELECT * FROM post WHERE post_id = {$idpost}";
            $insertimage = mysqli_query($koneksi, $queryimage);
            while ($row = mysqli_fetch_assoc($insertimage)) {
                $image = $row['post_image'];
            }
        }

        $query ="UPDATE post SET ";
        $query .= "post_author = '{$author}', ";
        $query .= "pst_judul = '{$judul}', ";
        $query .= "post_kategori = '{$kategori}', "; 
        $query .= "post_tags = '{$tag}', ";
        $query .= "post_date = '{$date}', ";
        $query .= "post_image = '{$image}', ";
        $query .= "post_comment = '{$comment}', ";
        $query .= "post_content = '{$content}' ";
        $query .= "WHERE post_id = '{$idpost}'";


        $updatepost = mysqli_query($koneksi, $query);
        if(!$updatepost){
            die("Query Error ".mysqli_error($koneksi));
        }else{
            header("Location: posts.php");
        }                                    
    }
?>

