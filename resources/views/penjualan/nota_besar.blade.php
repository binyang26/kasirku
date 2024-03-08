<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Struk Pembayaran</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            width: 80mm;
            margin: 0 auto;
            padding: 10px;
        }
        .header {
            text-align: center;
            margin-bottom: 10px;
        }
        .info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px;
        }
        th, td {
            padding: 5px;
            border-bottom: 1px solid #ddd;
        }
        th {
            text-align: left;
        }
        .total {
            margin-top: 10px;
            font-weight: bold;
        }
        .footer {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body onload="window.print()">
    <div class="header">
        <h2>STRUK PEMBAYARAN</h2>
    </div>

    <table>
        <thead>
            <tr>
                <th>Item</th>
                <th>Qty</th>
                <th>Harga</th>
                <th>Subtotal</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($detail as $item)
                <tr>
                    <td>{{ $item->produk->nama_produk }}</td>
                    <td>{{ $item->jumlah }}</td>
                    <td>{{ format_uang($item->harga_jual) }}</td>
                    <td>{{ format_uang($item->jumlah * $item->harga_jual) }}</td>
                    
                </tr>
            @endforeach
        </tbody>
    </table>
    <div class="total">
        <p>Total Harga: {{ format_uang($penjualan->total_harga) }}</p>
        <p>Total Item: {{ format_uang($penjualan->total_item) }}</p>
        <p>Diskon: {{ format_uang($penjualan->diskon) }}</p>
        <p>Total Bayar: {{ format_uang($penjualan->bayar) }}</p>
        <p>Diterima: {{ format_uang($penjualan->diterima) }}</p>
        <p>Kembali: {{ format_uang($penjualan->diterima - $penjualan->bayar) }}</p>
        <div class="info">
            <p>{{ date('d-m-Y') }}</p>
        </div>
    </div>
    <div class="footer">
        <p>-- TERIMA KASIH --</p>
    </div>
</body>
</html>
