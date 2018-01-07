<?php 
    $koneksi = mysqli_connect('localhost', 'root', '', 'cms');
?>
<?php
    if(isset($_POST['addpost'])){
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

        $query ="INSERT INTO post (post_id, post_author, pst_judul,post_kategori, ";
        $query .="post_tags, post_date, post_image, post_comment, post_content";
        $query .=") ";
        $query .="VALUES (";
        $query .=" NULL,";
        $query .=" '{$author}',";
        $query .=" '{$judul}',";
        $query .=" '{$kategori}',";
        $query .=" '{$tag}',";
        $query .=" '{$date}',";
        $query .=" '{$image}',";
        $query .=" '{$comment}',";
        $query .=" '{$content}'";
        $query .=");";

        $insertpost = mysqli_query($koneksi, $query);
        if(!$insertpost){
            die("Query Error ".mysqli_error($koneksi));
        }else{
            header("Location: ../posts.php");
        }                                    


        /*if(empty($author)  ){
            echo "Tidak Boleh Kosong";
        }
        else{
            $category = $_POST['kategoriku'];
            $query = "INSERT INTO `kategori` (`cat_id`, `cat_judul`) 
            VALUES (NULL, '{$category}');";
            $queryinsert = mysqli_query($koneksi, $query);
            if(!$queryinsert){
                die("Query Error");
            }else{
                header("Location: categories.php");
            }
        }*/
    }
?>

<form class="form-group" action="include/addpost.php" method="post" enctype="multipart/form-data">
    <label for="usr">Penulis</label>
    <input type="text" class="form-control" id="usr" name="author">
    <label for="usr">Judul</label>
    <input type="text" class="form-control" id="usr" name="judul">
    <label for="usr">Kategori</label>
    <input type="text" class="form-control" id="usr" name="kategori">
    <label for="usr">Tags</label>
    <input type="text" class="form-control" id="usr" name="tag">
    <label for="usr">Date</label>
    <input type="date" class="form-control" id="usr" name="tanggal">
    <label for="usr">Image</label>
    <input type="file" name="image" class="form-control" id="usr">
    <label for="usr">Komentar</label>
    <textarea name="comment" class="form-control"> </textarea><br>
    <label for="usr">Konten</label>
    <textarea name="content" class="form-control"> </textarea><br>
    <br>
    <input type="submit" name="addpost" class="btn btn-primary" >
</form>