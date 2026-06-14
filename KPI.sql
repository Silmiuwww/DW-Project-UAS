-- KPI 1 – Total Penjualan per Bulan
-- Query SQL
SELECT
    w.bulan,
    SUM(f.total_belanja) AS total_penjualan
FROM fakta_penjualan f
JOIN dim_waktu w
ON f.id_dim_waktu = w.id_dim_waktu
GROUP BY w.bulan
ORDER BY w.bulan;

-- KPI 2 – Total Penjualan per Kategori Produk
-- Query SQL
SELECT
    p.kategori_produk,
    SUM(f.total_belanja) AS total_penjualan
FROM fakta_penjualan f
JOIN dim_produk p
ON f.id_dim_produk = p.id_dim_produk
GROUP BY p.kategori_produk
ORDER BY total_penjualan DESC;

-- KPI 3 – Total Pendapatan Kotor per Bulan
-- Query SQL
SELECT
    w.bulan,
    SUM(f.pendapatan_kotor) AS total_pendapatan_kotor
FROM fakta_penjualan f
JOIN dim_waktu w
ON f.id_dim_waktu = w.id_dim_waktu
GROUP BY w.bulan
ORDER BY w.bulan;