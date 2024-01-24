	<footer>
		<p>&copy; Kelompok 7 | Sistem Pemesanan Laundry <span id="tahun"></span> All Rights Reserved.</p>
		<script>
		// mengambil tanggal hari ini
		var now = new Date();
		var tahun = now.getFullYear();
		// menampilkan tahun di dalam elemen HTML
		document.getElementById("tahun").innerHTML = tahun;
		</script>
		
	</footer>

	<script src="<?=url('_assets/js/rumah_laundry.js')?>"></script>
</body>
</html>