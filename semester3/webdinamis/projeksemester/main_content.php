
<div class="container">
      <div class="row">
        <div class="col-lg-10 col-md-10 mx-auto">
		
		<?php 
        if(isset($_GET['id'])){
          $aidi = $_GET['id'];
    			$query="SELECT * FROM post WHERE post_id = $aidi";
    			$runquery =mysqli_query($koneksi, $query);
        }else{
          $query="SELECT * FROM post ORDER BY post_id desc";
          $runquery =mysqli_query($koneksi, $query);
        }

  			while ( $row =@mysqli_fetch_assoc($runquery)) {
  			    $penulis = $row['post_author'];
  			    $koment = $row['post_comment'];
  			    $kontent = $row['post_content'];
  			    $tanggal = $row['post_date'];
  			    $id = $row['post_id'];
  			    $gambar = $row['post_image'];
    				$judul = $row['pst_judul'];

            if(isset($_GET['id'])){
    ?>
          <div class="post-preview">

          </div>
          <h1><?php echo $judul; ?></h1>
              <p class="post-meta">Posted by 
                <a href="#"><?php echo $penulis ?></a>
                on <?php echo $tanggal ?></p>

          <img src='images/<?php echo $gambar ?>' class='img-responsive image8' style='width: 100%;height: 400px;object-fit: cover;'/>    
          <p><?php echo $kontent; ?></p>
          <?php break; ?>
              
    <?php
            }else{
		?>		
          <div class="post-preview">
            <img src='images/<?php echo $gambar ?>' class='img-responsive image8' style='float:left; width: 250px;height: 200px;object-fit: cover;margin-right: 15px;'/>
            <div style="" class='kontenwrap'>
              <a href="?id=<?php echo $id ?>">
                <h2 class="post-title">
                  <?php echo $judul ?>
                </h2>
              </a>
                <div class="post-subtitle">
                  <?php echo substr($kontent,0,150); ?>
                </div>
              <p class="post-meta">Posted by 
                <a href="#"><?php echo $penulis ?></a>
                on <?php echo $tanggal ?></p>
              </div>
          </div>
          <hr>
          <div style='clear: both;'></div>
			<?php } } ?>