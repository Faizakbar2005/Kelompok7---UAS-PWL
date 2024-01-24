<?php 
	require_once('../_header.php');
	include 'koneksi.php';

	$search = (isset($_GET['search'])) ? $_GET['search'] : '';

	// Menghitung total records
	$stmt = $koneksi->prepare("SELECT COUNT(*) AS total_records FROM master WHERE nama LIKE ?");
	$searchParam = "%$search%";
	$stmt->bind_param("s", $searchParam);
	$stmt->execute();
	$result = $stmt->get_result();
	$row = $result->fetch_assoc();
	$total_records = $row['total_records'];
	$stmt->close();

	$limit = 5; 
	$total_pages = ceil($total_records / $limit); 
	$page = (isset($_GET['page']) && is_numeric($_GET['page'])) ? $_GET['page'] : 1;
	$offset = ($page - 1) * $limit;

	$query = "SELECT * FROM master WHERE nama LIKE '%$search%' LIMIT $offset, $limit";
	$result_pagination = $koneksi->query($query);

	// Query data for current page
	$query_data = "SELECT * FROM master WHERE nama LIKE '%$search%' LIMIT $offset, $limit";
	$data_karyawan = query($query_data);
?>

<body>
	<div id="karyawan" class="main-content">
    <div class="container">
        <div class="baris">
            <div class="selamat-datang">
                <div class="col-header">
                    <h2 class="judul-md">Manajemen Karyawan</h2>
                </div>
                <div class="col-header txt-right">
                    <a href="<?=url('karyawan/tambah.php')?>" class="btn-lg bg-primary">+ Tambah Karyawan</a>
                </div>
            </div>
        </div>
        
			<div class="baris">
				<div class="col">
					<div class="card">
						<div class="card-title card-flex">
							<div class="card-col">
								<h2>Daftar Karyawan</h2>
								<form action="karyawan.php" method="GET" class="mb-3">
								<div class="input-group">
									<input type="text" name="search" class="form-control" placeholder="Cari Nama Karyawan">
                						<div class="input-group-append">
                    						<button type="submit" class="btn btn-outline-primary">Cari</button>
                						</div>	
									</div>
									</form>
							</div>
						</div>

						<div class="card-body">
							<div class="tabel-kontainer">
								<table class="tabel-transaksi">
									<thead>
										<tr>
											<th class="sticky">No</th>
											<th class="sticky">Nama Karyawan</th>
											<th class="sticky">Username</th>
											<th class="sticky">Email</th>
											<th class="sticky">Action</th>
										</tr>
										
									</thead>

									<tbody>

										<?php $no = 1; ?>
										<?php foreach($data_karyawan as $karyawan) : ?>
											<tr>
												<td><?= $no ?></td>
												<td><?= $karyawan['nama'] ?></td>
												<td><?= $karyawan['username'] ?></td>
												<td><?= $karyawan['email'] ?></td>
												<td>
													<a href="<?=url('karyawan/edit.php')?>?id_user=<?=$karyawan['id_user']?>" class="btn btn-edit">Edit</a>
													<a href="<?=url('karyawan/hapus.php')?>?id_user=<?=$karyawan['id_user']?>" onclick="return confirm('Yakin akan menghapus?');"  class="btn btn-hapus">Hapus</a>
												</td>
											</tr>										
											<?php $no++ ?>
										<?php endforeach; ?>										
									</tbody>					
								</table>
							</div>
							<div class="pagination">
								<ul class="pagination">
									<?php for ($i = 1; $i <= $total_pages; $i++) : ?>
										<li class="page-item <?php if($i==$page) echo 'active'; ?>"><a class="page-link" href="?page=<?= $i ?>&search=<?= $search ?>"><?= $i ?></a></li>
									<?php endfor; ?>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			
			<!-- Pagination -->
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
<?php require_once('../_footer.php'); ?>
