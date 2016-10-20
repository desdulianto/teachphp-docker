use `web`;

create table if not exists `produk` (
    `id` int primary key auto_increment,
    `nama` varchar(256),
    `harga` int,
    `image` varchar(1024)
);
