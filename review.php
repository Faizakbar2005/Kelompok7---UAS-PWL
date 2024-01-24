<?php require_once('_header.php'); ?>

<div class="baris">
    <div class="col">
        <div class="card-review">
            <div class="card-title card-flex">
                <div class="card-col">
                    <h1>Ulasan Laundry</h1>
                    <form id="reviewForm">
                        <label for="customerName">Nama:</label>
                        <input type="text" id="customerName" name="customerName"><br><br>
                        <label for="review">Ulasan:</label><br>
                        <textarea id="review" name="review" rows="4" cols="50"></textarea><br><br>
                        <input type="submit" value="Kirim Ulasan">
                    </form>
                    <div id="response"></div>
                </div>
            </div>
        </div>
        <div class="card">
						<div class="card-title card-flex">
							<div class="card-col">
        <div class="card-body">
        <div class="tabel-kontainer">
            <table class="tabel-transaksi">
                <thead>
                    <tr>
                        <th class="sticky">Nama</th>
                        <th class="sticky">Ulasan</th>
                    </tr>
                </thead>
                <tbody id="reviewTableBody">
                    <?php
                    $reviews = json_decode(file_get_contents('review.json'), true);
                    foreach ($reviews as $review) {
                        echo '<tr>';
                        echo '<td>' . $review['customerName'] . '</td>';
                        echo '<td>' . $review['review'] . '</td>';
                        echo '</tr>';
                    }
                    ?>
                </tbody>
            </table>
  
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('#reviewForm').submit(function(e) {
            e.preventDefault();
            var formData = $(this).serialize();

            $.ajax({
                type: 'POST',
                url: 'submit_review.php',
                data: formData,
                success: function(response) {
                    $('#response').html(response);
                    // Setelah berhasil menambahkan ulasan baru, kita memuat kembali seluruh data ulasan
                    $.getJSON('review.json', function(data) {
                        var tableBody = $('#reviewTableBody');
                        tableBody.empty();
                        $.each(data, function(index, review) {
                            tableBody.append('<tr><td>' + review.customerName + '</td><td>' + review.review + '</td></tr>');
                        });
                    });
                }
            });
        });
    });
</script>
