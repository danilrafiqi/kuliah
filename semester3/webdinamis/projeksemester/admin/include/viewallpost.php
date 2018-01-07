<table class="table table-bordered">
    <thead>
      <tr>
        <th>Id</th>
        <th>Author</th>
        <th>Comment</th>
        <th>Content</th>
        <th>Date</th>
        <th>Image</th>
        <th>Title</th>
        <th>Categories</th>
        <th>Tags</th>
      </tr>
    </thead>
    <tbody>
        <?php 
            $query="SELECT * FROM post ORDER BY post_id DESC";
            $runquery = mysqli_query($koneksi, $query);

            while ( $row = mysqli_fetch_assoc($runquery)) {
                $post_id = $row['post_id'];
                $post_author = $row['post_author'];
                $post_comment = $row['post_comment'];
                $post_content = substr($row['post_content'],0,150);
                $post_date = $row['post_date'];
                $post_judul = $row['pst_judul'];
                $post_kategori = $row['post_kategori'];
                $post_tags = $row['post_tags'];
                $post_image = $row['post_image'];
                echo "<tr>";
                echo "<td>{$post_id}</td>";
                echo "<td>{$post_author}</td>";
                echo "<td>{$post_comment}</td>";
                echo "<td>{$post_content}</td>";
                echo "<td>{$post_date}</td>";
                echo "<td><img width=100 src='../images/{$post_image}'></td>";
                echo "<td>{$post_judul}</td>";
                echo "<td>{$post_kategori}</td>";
                echo "<td>{$post_tags}</td>";
                echo "<td><a href='posts.php?post=edit&idpost={$post_id}'>Edit</a></td>";
                echo "<td><a href='posts.php?delete={$post_id}'>Delete</a></td>";
                echo "</tr>";
            }
        ?> 

        <?php 
            if (isset($_GET['delete'])) {
                $idku = $_GET['delete'];
                $query="DELETE FROM post where post_id = {$idku}";
                $runquery = mysqli_query($koneksi, $query);
                header("Location: posts.php");
            }
        ?> 
    </tbody>
</table>