-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2018 at 04:16 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `cat_id` int(11) NOT NULL,
  `cat_judul` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`cat_id`, `cat_judul`) VALUES
(5, 'python3'),
(6, 'JavaScript'),
(7, 'Go Lang'),
(8, 'MySQL'),
(91, 'C#'),
(99, 'C++'),
(100, 'Php');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_author` varchar(25) NOT NULL,
  `post_comment` text NOT NULL,
  `post_content` text NOT NULL,
  `post_date` date NOT NULL,
  `post_id` int(25) NOT NULL,
  `post_image` varchar(20) NOT NULL,
  `pst_judul` varchar(25) NOT NULL,
  `post_kategori` varchar(25) NOT NULL,
  `post_tags` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_author`, `post_comment`, `post_content`, `post_date`, `post_id`, `post_image`, `pst_judul`, `post_kategori`, `post_tags`) VALUES
('Danil', ' ', 'Dalam beberapa tahun terakhir, git telah berkembang pesat menjadi salah satu sistem kontrol versi yang paling banyak digunakan oleh para developer. Oleh karena itu, pada artikel ini saya akan berbagi beberapa tips singkat yang dapat meningkatkan pengalaman alur kerja kita.\r\n\r\nBerikut adalah 10 tips singkat dalam menggunakan git:\r\n\r\ngit log --no-merges\r\nPerintah git ini digunakan untuk menampilkan seluruh history commit yang kita lakukan, tetapi me-skip commit yang menggabungkan dua branch (cabang) secara bersama.\r\n\r\ngit revert --no-commit [commit]\r\nGit revert menghasilkan commit baru yang membatalkan perubahan yang dibuat oleh commit yang ada dan menghasilkan commit baru dengan konten yang dihasilkan. Jika kita ingin mengembalikan commit yang telah disebutkan dan menghindari commit otomatis, kita dapat menggunakan tanda - no-commit atau steno -n.\r\n\r\ngit diff -w\r\nGit diff menampilkan perubahan antara dua commit, dua trees yang sedang bekerja dan dua file pada disk. Ketika banyak orang mengerjakan proyek yang sama, seringkali ada perubahan. Entah itu karena tab editor teks atau pengaturan ruang. Untuk mengabaikan perbedaan tersebut, kita dapat menggunakan -w.\r\n\r\ngit diff --stat\r\nMenampilkan bagaimana setiap file telah berubah dari waktu ke waktu. Kita juga dapat menambahkan 3 parameter ke dalamnya, seperti: width untuk menimpa lebar keluaran default, name-width untuk mengatur lebar nama file dan count untuk membatasi keluaran ke jumlah baris pertama.\r\n\r\n\r\n\r\ngit reset --soft HEAD^\r\nReset head ke commit tertentu tanpa menyentuh file indeks dan trees yang sedang bekerja. Semua perubahan yang dilakukan setelah commit dipindahkan ke stage \"staged for commit\". Setelah itu, kita hanya peru menjalankan git commit untuk menambahkannya kembali.\r\n\r\ngit stash branch\r\nPerintah ini membuat sebuah branch baru bernama branch-name, kemudian menerapkan perubahan dari simpanan yang diberikan. Jika tidak ada simpanan yang diberikan, gunakan yang terbaru. Hal ini memungkinkan kita untuk menerapkan perubahan ke tempat yang lebih aman.\r\n\r\ngit branch -a\r\nIni menunjukkan daftar semua branch jarak jauh dan branch lokal. Branch jarak jauh adalah proyek kita yang disiarkan di Internet atau di jaringan. KIta juga dapat menggunakan --merged untuk melihat branch yang sepenuhnya digabungkan ke branch induk. Dengan cara ini kita dapat melacak cabang kita dan mencari tahu mana yang tidak digunakan lagi dan dapat dihapus.\r\n\r\ngit commit --amend\r\nDengan git commit --amend, kita dapat mengubah commit sebelumnya, alih-alih membuat yang baru. Jika kita belum mem-push perubahan ke remote branch, kita dapat menggunakan perintah ini untuk mengubah commit terbaru, menambahkan perubahan terbaru dan bahkan mengubah pesan commit kita.\r\n\r\ngit pull --rebase\r\nGit pull --rebase memaksa git untuk terlebih dahulu mem-pull perubahan dan kemudian rebase commit yang tidak dipush ke atas versi terbaru dari remote branch. Opsi --rebase dapat digunakan untuk memastikan sejarah linier dengan mencegah penggabungan yang tidak perlu dilakukan.\r\n\r\ngit add -p\r\nBila kita menggunakan perintah ini, alih-alih menambahkan semua perubahan ke indeks, ia melewati setiap perubahan dan menanyakan apa yang ingin kita lakukan dengannya. Dengan cara ini, memungkinkan kita untuk secara interaktif memilih apa yang ingin kita lakukan.', '2018-01-07', 21, 'Untitled-1_4.jpg', '10 Tips Menggunakan Git', 'Version Control', 'Git'),
('Danil', ' ', 'Beberapa tahun terakhir merupakan tahun-tahun yang sulit bagi jQuery UI dan jQuery Mobile. Kedua proyek inikesulitan karena kurangnya sumberdaya, pembiayaan dan perginya developer karena berbagai macam alasan. Faktor-faktor tadi sudah hampir membuat pengembangan mereka terhenti. Untuk menangani situasi yang sulit ini pihak jQuery akhirnya memutuskan untuk mengubah komposisi tim dan cara kerja mereka.\r\n\r\nScott Gonzalez yang sudah memimpin proyek jQuery UI selama bertahun-tahun dan sudah membantu meningkatkan banyak hal akhirnya memutuskan untuk mundur sebagai pimpinan proyek, namun masih tetap akan membantu pengembangan. Kemudian untuk mengefisienkan penggunakan sumberdaya yang ada diputuskanlah untuk menggabungkan 2 tim (UI dan Mobile) menjadi satu di bawah kepemimpinan Alex Schmitz, seorang kontributor jQuery UI senior juga pimpinan di tim jQuery Mobile. Karena penggabungkan ini diharapkan project akan berjalan dengan lebih baik karena sebetulnya kedua project ini saling berhubungan (jQuery Mobile bergantung pada jQuery UI). Penggabungan tim pengembang ini bukan berarti kedua project juga akan digabungkan. Keduanya masih akan berjalan di repositori masing-masing seperti biasa.\r\n\r\nDulu saat seseorang ingin bergabung kedalam tim jQuery UI atau jQuery Mobile mereka harus melakukan kontribusi ke kedua library. Sekarang kebijakan tersebut dirubah sehingga siapapun boleh bergabung hanya untuk berkontribusi ke salah satu saja sehingga waktu yang mereka butuhkan untuk berkontribusi bisa lebih pendek. Jadi, orang yang hanya tertarik untuk mengerjakan sortable dapat berkontribusi di widget itu saja tanpa harus berkontribusi di bagian lain dari kedua library tersebut.\r\n\r\nSebelumnya juga seluruh komunikasi dilakukan via IRC. Seiring berjalannya waktu semakin banyak orang yang beralih ke platform lain yang lebih mudah seperti Slack. Oleh karena itu, tim jQuery UI akan menggunakan Slack sebagai sarana komunikasi harian juga untuk meeting. Harapan dari perubahan ini ialah untuk memudahkan kontribusi juga interaksi dengan calon anggota tim yang baru. Semua orang dapat bergabung ke channel Slack melalui tautan berikut https://join.slack.com/t/jqueryui-dev/shared_invite/enQtMjY5MzYwMDY0NDY1LWQzZGQ4ODE2OTY1MTE2MDUxOGYyMGJmZDIyNzMzYmRmMzk3YTg4YWU2NmI2ODE2NmUzOWQzZjFlNGI5NzBiMmM\r\n\r\nSumber: jQuery UI Blog', '2018-01-04', 22, 'jquery.png', 'Masa Depan jQuery UI', 'Programming', 'JavaScript'),
('Daffa', ' ', ' Siapa sih yang tidak mengenal VueJS? Salah satu framework Javascript yang sedang populer ini karena daya tariknya yang memesona. VueJS merupakan progressive framework untuk membangun user interface di desain untuk beradaptasi dengan core library-nya dan hanya fokus di view layer saja. Nah, bagi kamu yang tertarik untuk belajar VueJS tapi kesulitan untuk mencari referensi untuk belajar secara bertahap, berikut kami bagikan informasi 4 tempat keren untuk belajar VueJS 2 secara gratis.\r\n\r\nBaca Juga: Antara AngularJS, ReactJS, atau VueJS dalam Javascript War\r\n\r\nLaracast.com: Learn VueJS 2 Step by Step\r\nJeffrey Way selain sebagai seorang instruktur dalam materinya tentang VueJS 2 dalam bentuk screencast, juga dikenal sebagai seorang developer yang melegenda dibalik pertumbuhan Nettuts+ atau sekarang dikenal sebagai tutsplus.com, serta memiliki pengaruh yang besar dalam komunitas web developer.\r\n\r\nPenyampaian yang sangat jelas serta mudah dipahami, diulas satu persatu dari basic. Maka jika anda sedang mencari referensi belajar VueJS, tidak ada salahnya untuk mampir discreencast ini.\r\n\r\nYoutube: VueJS Fundamentals\r\nDevmarketer membuat video tutorial belajar VueJS tak kalah menarik, sebab penyampaiannya yang dimulai dari basic VueJS 2 dan beralih ketingkat advanced functionality, seperti request API eksternal menggunakan Axios. Sangat bagus bagi anda yang baru mengenal VueJS dan View Model pattern.\r\n\r\nBaca Juga: Simplert, Alternatif Sweetalert untuk Framework VueJS\r\n\r\nVueJS.org: VueJS User Guide\r\nBagi anda yang tidak suka atau tidak terbiasa belajar menggunakan video, maka opsi lainnya bisa belajar menggunakan teks. Tak perlu jauh melirik sebab ada dipelupuk mata, yes! VueJS.org adalah official website dari VueJS yang dilengkapi dengan dokumentasi yang sangat lengkap dan tertata rapi sehingga mudah dipahami.\r\n\r\nSitepoint: Getting Up & Running with the Vue.js 2.0\r\nMenambahkan referensi bagi anda yang tidak terbiasa belajar menggunakan video, maka sitepoint dapat menjadi pilihan referensi untuk belajar VueJS. Tutorial yang disampaikan berada pada level advanced, seperti workflow untuk membuat custom components dan menggabungkannya dengan webpack dan vue-loader. Perlu diperhatikan, bahwa anda membutuhkan pengetahuan tentang ECMAScript 2015 (ES6) untuk dapat mengikutinya, akan tetapi kabar gembiranya Laracast sudah membahasnya, jadi bisa dikategorikan bahwa ini adalah materi lanjutan yang menarik untuk diikuti.\r\n\r\nCukup lengkap bukan? Lalu untuk alasan apa lagi kamu untuk tidak belajar? Menjadi seorang programmer harus memegang prinsip: Bertumbuh atau tertinggal.', '2018-01-07', 23, 'vuejs.jpg', 'Referensi Belajar VueJS', 'Programming', 'JavaScript'),
('Khadijah', ' ', ' Mungkin sebagian dari kita bertanya-tanya, apa sih kegunaan API itu? Apa yang menyebabkan API itu begitu populer dan banyak digunakan? Bagaimana cara kerja API tersebut? Untuk menjawab pertanyaan-pertanyaan ini maka mari kita bahas satu persatu secara mendetail.\r\n\r\nAPI adalah singkatan dari Application Programming Interface, dan memungkinkan developer untuk mengintegrasikan dua bagian dari aplikasi atau dengan aplikasi yang berbeda secara bersamaan. API terdiri dari berbagai elemen seperti function, protocols, dan tools lainnya yang memungkinkan developers untuk membuat aplikasi. Tujuan penggunaan API adalah untuk mempercepat proses development dengan menyediakan function secara terpisah sehingga developer tidak perlu membuat fitur yang serupa. Penerapan API akan sangaat terasa jika fitur yang diinginkan sudah sangat kompleks, tentu membutuhkan waktu untuk membuat yang serupa dengannya. Misalnya: integrasi dengan payment gateway. Terdapat berbagai jenis sistem API yang dapat digunakan, termasuk sistem operasi, library, dan web. \r\n\r\nAPI yang bekerja pada tingkat sistem operasi membantu aplikasi berkomunikasi dengan layer dasar dan satu sama lain mengikuti serangkaian protokol dan spesifikasi. Contoh yang dapat menggambarkan spesifikasi tersebut adalah POSIX (Portable Operating System Interface). Dengan menggunakan standar POSIX, aplikasi yang di-compile untuk bekerja pada sistem operasi tertentu juga dapat bekerja pada sistem lain yang memiliki kriteria yang sama. Software library juga memiliki peran penting dalam menciptakan compatibility antar sistem yang berbeda.\r\n\r\nAplikasi yang berinteraksi dengan library harus mengikuti serangkaian aturan yang ditentukan oleh API. Pendekatan ini memudahkan software developer untuk membuat aplikasi yang berkomunikasi dengan berbagai library tanpa harus memikirkan kembali strategi yang digunakan selama semua library mengikut API yang sama. Kelebihan lain dari metode ini menunjukkan betapa mudahnya menggunakan library yang sama dengan bahasa pemrograman yang berbeda.\r\n\r\nSeperti namanya, Web API dalam diakses melalui protokol HTTP, ini adalah konsep bukan teknologi. Kita bisa membuat Web API dengan menggunakan teknologi yang berbeda seperti PHP, Java, .NET, dll. Misalnya Rest API dari Twitter menyediakan akses read dan write data dengan mengintegrasikan twitter kedalam aplikasi kita sendiri.\r\n\r\nBaca Juga: API Otentikasi Menggunakan Passport Laravel\r\n\r\nFitur Web API\r\nUntuk membuat Web API, beberapa hal yang harus disediakan adalah:\r\n\r\nMendukung fungsi CRUD yang bekerja melalui HTTP protocol dengan method GET, POST, PUT dan DELETE\r\nMemiliki response Accept Header dan HTTP status code\r\nResponse dengan format JSON, XML atau format apapun yang kamu inginkan. Akan tetapi kebanyak digunakan kedalam format JSON.\r\nMendukung fitur MVC seperti routing, controllers, action results, filter, model, IOC container, dll.\r\nWeb API dapat berjalan di Apache atau web server lainnya yang didukung sesuai bahasa pemrograman yang digunakan.\r\nWeb API seperti sebuah alamat web (end point) yang dibuat untuk menangani beberapa task sesuai request yang diterima, juga terkadang memiliki parameter sebagai data yang dibutuhkan agar dapat menampilkan hasil yang diinginkan, juga pada beberapa kasus untuk mengakses API dibutuhkan kode otentikasi yang telah diizinkan untuk melihat data yang diinginkan. Semua rule ini ditentukan oleh programmer yang membuatnya.\r\n\r\nPerbedaan Web API dan Web Service\r\nSeringkali saya mendapat pertanyaan tentang apa sih perbedaan antara web API dan web service? Berikut adalah perbedaan diantara keduanya:\r\n\r\nSemua web service menggunakan API tapi tidak semua API digunakan sebagai web service\r\nWeb service memfasilitasi untuk melakukan interaksi antara dua perangkat atau aplikasi melalui jaringan. Sedangkan API bertindak sebagai penghubung antara dua aplikasi berbeda sehingga bisa berkomunikasi satu sama lain baik dengan ataupun tanpa jaringan.\r\nWeb service hanya menggunakan 3 style yaitu SOAP, REST, atau XML-RPC untuk berkomunikasi sedangkan API dapat menggunakan style apapun.\r\nWeb service selalu membutuhkan jaringan untuk pengoperasiannya sedangkan API tidak selalu memerlukan jaringan untuk operasinya.\r\n\r\n\r\nKesimpulan\r\nDengan artikel yang singkat ini setidaknya anda sudah paham untuk keperluan apa API digunakan. Metode pendekatan yang digunakan untuk berkomunikasi dengan API menggunakan protokol yang telah kami tuliskan diatas masih tergolong protokol yang umum digunakan, masih ada banyak lagi yang belum kami tuliskan seiring perkembangan. Sedangkan bagaimana cara membuat API akan dibahas di artikel selanjutnya tergantung bahasa pemrograman apa yang digunakan.', '2018-01-07', 24, 'api.jpg', 'Mengenal Apa itu Web API', 'Programming', 'API');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstName` varchar(255) NOT NULL,
  `user_lastName` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_firstName`, `user_lastName`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(3, 'admin', 'admin123', 'admin', 'admin', 'admin@gmail.com', '', 'admin', ''),
(5, 'danil', 'danil123', 'muhamad danil', 'rafiqi', 'danil@gmail.com', '', 'root', ''),
(7, 'as', 'as', 'asa', 'as', 'as@gmail.com', '', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
