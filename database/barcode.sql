-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 12:55 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama_lengkap_akun` varchar(255) NOT NULL,
  `nama_pengguna_akun` varchar(255) NOT NULL,
  `kata_sandi_akun` text NOT NULL,
  `email_akun` varchar(255) NOT NULL,
  `telepon_akun` varchar(255) NOT NULL,
  `whatsapp_akun` varchar(255) NOT NULL,
  `kode_referensi_akun` varchar(255) NOT NULL,
  `level_akun` enum('Admin','Anggota') NOT NULL DEFAULT 'Anggota',
  `status_akun` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `nama_lengkap_akun`, `nama_pengguna_akun`, `kata_sandi_akun`, `email_akun`, `telepon_akun`, `whatsapp_akun`, `kode_referensi_akun`, `level_akun`, `status_akun`) VALUES
(1, 'Admin', 'admin', '123', 'admin@gmail.com', '6287729434231', '6287729434231', 'kLaahst', 'Admin', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id_deposit` int(11) NOT NULL,
  `id_akun_deposit` int(11) NOT NULL,
  `kode_deposit` varchar(255) NOT NULL,
  `kategori_rekening_deposit` enum('bank','emoney','pulsa') NOT NULL,
  `id_rekening_anggota_deposit` int(11) NOT NULL,
  `id_rekening_admin_deposit` int(11) NOT NULL,
  `jumlah_deposit` varchar(255) NOT NULL,
  `nomor_referensi_deposit` varchar(255) NOT NULL,
  `tanggal_deposit` datetime NOT NULL,
  `status_deposit` enum('proses','batal','selesai') NOT NULL DEFAULT 'proses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id_games` int(11) NOT NULL,
  `id_sub_menu_games_games` int(11) NOT NULL,
  `gambar_games` varchar(255) NOT NULL,
  `nama_games` varchar(255) NOT NULL,
  `link_games` varchar(255) NOT NULL,
  `link_asli_games` text NOT NULL,
  `link_demo_games` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id_games`, `id_sub_menu_games_games`, `gambar_games`, `nama_games`, `link_games`, `link_asli_games`, `link_demo_games`) VALUES
(1, 1, 'vs20olympgate.jpg', 'Gates of Olympus', 'gates_of_olympus', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&amp;cur=IDR&amp;gameSymbol=vs20olympgate&amp;websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&amp;jurisdiction=99&amp;lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(2, 1, 'vs20phoenixf.jpg', 'Phoenix Forge', 'phoenix_forge', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20phoenixf&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(3, 1, 'vs40wildwest.jpg', 'Wild West Gold', 'wild_west_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs40wildwest&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(4, 1, 'vs20fruitsw.jpg', 'Sweet Bonanza', 'sweet_bonanza', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fruitsw&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(5, 1, 'vs243ckemp.jpg', 'Cheeky Enperor', 'cheeky_enperor', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs243ckemp&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(6, 1, 'vs20underground.jpg', 'Down the Rails', 'down_the_rails', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20underground&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(7, 1, 'vs10coffee.jpg', 'Coffee Wild', 'coffee_wild', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10coffee&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(8, 1, 'vs20wolfie.jpg', 'Greedy Wolf', 'greedy_wolf', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20wolfie&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(9, 1, 'vs1024mahjpanda.jpg', 'Mahjong Panda', 'mahjong_panda', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=ID&cur=IDR&gameSymbol=vs1024mahjpanda&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F'),
(10, 1, 'vs1024gmayhem.jpg', 'Gorilla Mayhem', 'gorilla_mayhem', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs1024gmayhem&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(11, 1, 'vswaysjkrdrop.jpg', 'Tropical Tiki', 'tropical_tiki', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysjkrdrop&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(12, 1, 'vs25bomb.jpg', 'Bomb Bonanza', 'bomb_bonanza', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25bomb&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(13, 1, 'vs243koipond.jpg', 'Koi Pond', 'koi_pond', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs243koipond&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(14, 1, 'vs10egrich.jpg', 'Queen of Gods', 'queen_of_gods', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10egrich&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(15, 1, 'vs40samurai3.jpg', 'Rise of Samurai 3', 'rise_of_samurai_3', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40samurai3&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(16, 1, 'vs20sugarrush.jpg', 'Sugar Rush', 'sugar_rush', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sugarrush&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(17, 1, 'vswayszombcarn.jpg', 'Zombie Carnival', 'zombie_carnival', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayszombcarn&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(18, 1, 'vs20cleocatra.jpg', 'Cleocatra', 'cleocatra', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20cleocatra&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(19, 1, 'vs10firestrike2.jpg', 'Fire Strike 2', 'fire_strike_2', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10firestrike2&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(20, 1, 'vs20mustanggld2.jpg', 'Clover Gold', 'clover_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20mustanggld2&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(21, 1, 'vs20gobnudge.jpg', 'Goblin Heist Powernudge', 'goblin_heist_powernudge', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20gobnudge&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(22, 1, 'vswayswildwest.jpg', 'Wild West Gold Megaways', 'wild_west_gold_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayswildwest&jurisdiction=99&lobbyUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fid%2F&lang=ID&cur=IDR'),
(23, 1, 'vs20stickysymbol.jpg', 'The Great Stick Up', 'the_great_stick_up', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20stickysymbol&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(24, 1, 'vs40cleoeye.jpg', 'Eye of Cleopatra', 'eye_of_cleopatra', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40cleoeye&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(25, 1, 'vs10chkchase.jpg', 'Chicken Chase', 'chicken_chase', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10chkchase&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(26, 1, 'vs50northgard.jpg', 'North Guardians', 'north_guardians', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs50northgard&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(27, 1, 'vs20farmfest.jpg', 'Barn Festival', 'barn_festival', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20farmfest&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(28, 1, 'vs20drtgold.jpg', 'Drill That Gold', 'drill_that_gold', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20drtgold&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(29, 1, 'vs10bookazteck.jpg', 'Book of Aztec King', 'book_of_aztec_king', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10bookazteck&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(30, 1, 'vs25bullfiesta.jpg', 'Bull Fiesta', 'bull_fiesta', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25bullfiesta&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(31, 1, 'vs25copsrobbers.jpg', 'Cash Patrol', 'cash_patrol', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25copsrobbers&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(32, 1, 'vs20rainbowg.jpg', 'Rainbow Gold', 'rainbow_gold', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20rainbowg&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(33, 1, 'vs20bchprty.jpg', 'Wild Beach Party', 'wild_beach_party', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20bchprty&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(34, 1, 'vs10wildtut.jpg', 'Mysterious Egypt', 'mysterious_egypt', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10wildtut&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(35, 1, 'vswayswerewolf.jpg', 'Curse Werewolf Megaways', 'curse_werewolf_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayswerewolf&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(36, 1, 'vswaysxjuicy.jpg', 'Extra Juicy Megaways', 'extra_juicy_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysxjuicy&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(37, 1, 'vs50mightra.jpg', 'Might of Ra', 'might_of_ra', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs50mightra&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(38, 1, 'vs25gldox.jpg', 'Golden Ox', 'golden_ox', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25gldox&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(39, 1, 'vswayselements.jpg', 'Elemental Gems Megaways', 'elemental_gems_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayselements&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(40, 1, 'vs10runes.jpg', 'Gates of Valhalla', 'gates_of_valhalla', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10runes&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(41, 1, 'vs20colcashzone.jpg', 'Colossal Cash Zone', 'colossal_cash_zone', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20colcashzone&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(42, 1, 'vs20ultim5.jpg', 'The Ultimate 5', 'the_ultimate_5', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20ultim5&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(43, 1, 'vs40wanderw.jpg', 'Wild Depths', 'wild_depths', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40wanderw&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(44, 1, 'vs243empcaishen.jpg', 'Emperor Caishen', 'emperor_caishen', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs243empcaishen&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(45, 1, 'vs4096magician.jpg', 'Magician Secrets', 'magician_secrets', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs4096magician&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(46, 1, 'vs25tigeryear.jpg', 'Lucky New Year Tiger', 'lucky_new_year_tiger', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25tigeryear&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(47, 1, 'vs40pirgold.jpg', 'Pirate Gold Deluxe', 'pirate_gold_deluxe', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs40pirgold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(48, 1, 'vs10goldfish.jpg', 'Fishin Reels', 'Fishin Reels', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10goldfish&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(49, 1, 'vs40voodoo.jpg', 'VooDoo Magic', 'voodoo_magic', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs40voodoo&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(50, 1, 'vs88hockattack.jpg', 'Hockey Attack', 'hockey_attack', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs88hockattack&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(51, 1, 'vs5drmystery.jpg', 'Dragon Kingdom Eyes of Fire', 'dragon_kingdom_eyes_of_fire', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs5drmystery&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(52, 1, 'vswayscryscav.jpg', 'Crystal Caverns Megaways', 'crystal_caverns_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayscryscav&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(53, 1, 'vs10bblpop.jpg', 'Bubble Pop', 'bubble_pop', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10bblpop&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(54, 1, 'vswayssamurai.jpg', 'Rise of Samurai Megaways', 'rise_of_samurai_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayssamurai&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(55, 1, 'vs20bermuda.jpg', 'Bermuda Riches', 'bermuda_riches', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20bermuda&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(56, 1, 'vswaysyumyum.jpg', 'Yum Yum Powerways', 'yum_yum_powerways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysyumyum&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(57, 1, 'vs20tweethouse.jpg', 'The Tweety House', 'the_tweety_house', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20tweethouse&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(58, 1, 'vs243chargebull.jpg', 'Raging Bull', 'raging_bull', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs243chargebull&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(59, 1, 'vs25walker.jpg', 'Wild Walker', 'wild_walker', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25walker&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(60, 1, 'vswayslions.jpg', '5 Lions Megaways', '5_lions_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayslions&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(61, 1, 'vs20chickdrop.jpg', 'Chicken Drop', 'chiken_drop', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20chickdrop&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(62, 1, 'vs10nudgeit.jpg', 'Rise of Giza', 'rise_of_giza', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10nudgeit&lang=en&cur=IDR&lobbyUrl=js://window.close()'),
(63, 1, 'vs20wildboost.jpg', 'Wild Booster', 'wild_booster', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20wildboost&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(64, 1, 'vs20starlight.jpg', 'Starlight Princess', 'starlight_princess', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20starlight&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(65, 1, 'vs20pbonanza.jpg', 'Pyramid Bonanza', 'pyramid_bonanza', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20pbonanza&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(66, 1, 'vswayshammthor.jpg', 'Power Thor Megaways', 'power_thor_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayshammthor&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(67, 1, 'vs75bronco.jpg', 'Bronco Spirit', 'bronco_spirit', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs75bronco&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(68, 1, 'vs5joker.jpg', 'Joker Jewels', 'joker_jewels', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5joker&lang=en&cur=IDR&lobbyUrl=js://window.close()'),
(69, 1, 'vswaysbankbonz.jpg', 'Cash Bonanza', 'cash_bonanza', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysbankbonz&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(70, 1, 'vs20doghouse.jpg', 'The Dog House', 'the_dog_house', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20doghouse&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(71, 1, 'vs5aztecgems.jpg', 'Aztec Gems', 'aztec_gems', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5aztecgems&lang=en&cur=IDR&lobbyUrl=js://window.close()'),
(72, 1, 'vs20magicpot.jpg', 'Magic Cauldron', 'magic_cauldron', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20magicpot&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(73, 1, 'vs20fparty2.jpg', 'Fruit Party 2', 'fruit_party_2', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fparty2&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(74, 1, 'vs50juicyfr.jpg', 'Juicy Fruits', 'juicy_fruits', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs50juicyfr&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(75, 1, 'vswaysmadame.jpg', 'Madame Destiny Megaways', 'madame_destiny_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysmadame&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(76, 1, 'vs20trsbox.jpg', 'Treasure Wild', 'treasure_wild', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20trsbox&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(77, 1, 'vs20sbxmas.jpg', 'Sweet Bonanza Xmas', 'sweet_bonanza_xmas', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sbxmas&&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(78, 1, 'vswaysbufking.jpg', 'Buffalo King Megaways', 'buffalo_king_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysbufking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(79, 1, 'vs9aztecgemsdx.jpg', 'Aztec Gems Deluxe', 'aztec_gems_deluxe', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs9aztecgemsdx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(80, 1, 'vs9piggybank.jpg', 'Piggy Bank Bill', 'piggy_bank_bill', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs9piggybank&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(81, 1, 'vs25jokerking.jpg', 'Joker King', 'joker_king', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25jokerking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(82, 1, 'vs10cowgold.jpg', 'Cowboys Gold', 'cowboys_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10cowgold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(83, 1, 'vs20emptybank.jpg', 'Empty the Bank', 'empty_the_bank', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20emptybank&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(84, 1, 'vs20daydead.jpg', 'Day of Dead', 'day_of_dead', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20daydead&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(85, 1, 'vs20bonzgold.jpg', 'Bonanza Gold', 'bonanza_gold', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20bonzgold&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(86, 1, 'vs7776aztec.jpg', 'Aztec Bonanza', 'aztec_bonanza', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs7776aztec&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(87, 1, 'vswayswest.jpg', 'Mystic Chief', 'mystic_chief', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayswest&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(88, 1, 'vs20candvil.jpg', 'Candy Village', 'candy_village', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20candvil&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(89, 1, 'vswaysaztecking.jpg', 'Aztec King Megaways', 'aztec_king_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysaztecking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(90, 1, 'vs25hotfiesta.jpg', 'Hot Fiesta', 'hot_fiesta', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25hotfiesta&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(91, 1, 'vs20midas.jpg', 'Hand of Midas', 'hand_of_midas', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20midas&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(92, 1, 'vswaysrhino.jpg', 'Great Rhino Megaways', 'great_rhino_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysrhino&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(93, 1, 'vs20xmascarol.jpg', 'Christmas Carol Megaways', 'christmas_carol_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20xmascarol&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(94, 1, 'vs20fruitparty.jpg', 'Fruit Party', 'fruit_party', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fruitparty&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(95, 1, 'vs25btygold.jpg', 'Bounty Gold', 'bounty_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25btygold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(96, 1, 'vs20superx.jpg', 'Super X', 'super_x', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20superx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(97, 1, 'vs25rio.jpg', 'Heart of Rio', 'heart_of_rio', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25rio&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(98, 1, 'vs20santawonder.jpg', 'Santa Wonderland', 'santa_wonderland', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20santawonder&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(99, 1, 'vs243fortune.jpg', 'Caishen Gold', 'caishen_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs243fortune&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(100, 1, 'vswaysdogs.jpg', 'The Dog House Megaways', 'the_dog_house_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysdogs&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(101, 1, 'vs15diamond.jpg', 'Diamond Strike', 'diamond_strike', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs15diamond&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(102, 1, 'vs20goldfever.jpg', 'Gems Bonanza', 'gems_bonanza', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20goldfever&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(103, 1, 'vswayschilheat.jpg', 'Chilli Heat Megaways', 'chilli_heat_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayschilheat&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(104, 1, 'vs10bookfallen.jpg', 'Book of the Fallen', 'book_of_the_fallen', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10bookfallen&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(105, 1, 'vs25pandatemple.jpg', 'Panda Fortune 2', 'panda_fortune_2', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25pandatemple&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(106, 1, 'vs20smugcove.jpg', 'Smugglers Cove', 'smugglers_cove', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20smugcove&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(107, 1, 'vs20kraken.jpg', 'Release the Kraken', 'release_the_kraken', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20kraken&lang=id&cur=IDR&lobbyUrl=js://window.close()');

-- --------------------------------------------------------

--
-- Table structure for table `menu_games`
--

CREATE TABLE `menu_games` (
  `id_menu_games` int(11) NOT NULL,
  `judul_menu_games` varchar(255) NOT NULL,
  `link_menu_games` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_games`
--

INSERT INTO `menu_games` (`id_menu_games`, `judul_menu_games`, `link_menu_games`) VALUES
(1, 'Slots', 'slots'),
(2, 'Live Casino', 'live_casino'),
(3, 'Sports', 'sports'),
(4, 'Arcade', 'arcade'),
(5, 'Poker', 'poker'),
(6, 'Togel', 'togel');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id_pengaturan` int(11) NOT NULL,
  `nama_pengaturan` varchar(255) NOT NULL,
  `isi1_pengaturan` text NOT NULL,
  `isi2_pengaturan` text NOT NULL,
  `isi3_pengaturan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id_pengaturan`, `nama_pengaturan`, `isi1_pengaturan`, `isi2_pengaturan`, `isi3_pengaturan`) VALUES
(1, 'livechat', 'live-chat.svg', 'Dukungan LiveChat 24 Jam', 'https://direct.lc.chat/14249400/'),
(2, 'whatsapp', 'whatsapp.svg', '6287729434211', 'Text Whatsapp'),
(3, 'footer', '<u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">IBOPlay situs Slot online & Judi bola Terlengkap</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            <strong>IBOPlay <a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">situs slot online</a></strong> & <strong><a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">judi bola </a></strong> terlengkap dengan RTP tinggi 97% Kemenangan.IBOPlay kini menjadi salah satu pilihan bermain judi online paling dipercaya dan juga paling lengkap tahun 2021 sampai 2023.IBOPlay menyediakan permainan slot online,togel online,live casino,poker online,sabung ayam sampai pancing ikan.\r\n          </p>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">MENGAPA IBOPLAY MENJADI PILIHAN SEBAGAI WEBSITE SLOT ONLINE PALING POPULER</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            IBOPlay memiliki banyak hal yang membuat website ini menjadi salah satu tempat bermain paling populer dikalangan remaja sampai dengan orang tua.Salah satunya permainan slot online yang sangat mudah dimainkan dan dimenangkan.Dengan <strong><a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">RTP live tinggi</a></strong> 97% IBOPlay memberikan kemudahan MAXWIN.Dengan modal 10 ribu rupiah kita bisa memainkan slot online dan memenangkan JACKPOT sampai dengan ratusan juta hanya dengan satu kali spin.Permainan slot juga sangat mudah dan asyik untuk dimainkan karena dilengkapi dengan tampilan grafis terbaik.\r\n          </p>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">29 Slot online yang tersedia dan paling populer di judi online</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            <ol>\r\n              <li>Slot Online Pragmatic play</li>\r\n              pragmatic play merupakan provider judi slot online yang memiliki banyak permainan populer di kalangan komunitas slot online.Untuk saat ini pasaran market Slot online di indonesia di rajai oleh Pragmatic play sebagai slot gampang menang.\r\n              <li>Slot Online PGSOFT</li>\r\n              PGsoft merupakan provider yang mulai mengungguli pasar indonesia belakangan ini,dengan slot online dengan grafik menarik PGsoft ini hampir mengimbangi kepopuleran Provider slot online pragmatic play di indonesia.\r\n              <li>Slot Online Joker gaming</li>\r\n              Joker gaming merupakan provider bagus sangat banyak dicari dengan kepopuleran game Rome yang menarik minat para pemain slot online.\r\n              <li>Slot Online Habanero</li>\r\n              Habanero merupakan provider slot online asli cina yang banyak sekali dimainkan oleh banyak orang di komunitas. Dengan sebutna slot anti nyedot ini juga memiliki grafik memukau mata.\r\n              <li>Slot Online PlaynGO</li>\r\n              Play nGo merupakan provider belum lama menyediakan game slot online yang mulai banyak diminati oleh para komunitas slot dengan maximal jackpot Major x10000.\r\n              <li>Slot Online Slot88</li>\r\n              Slot88 merupakan perusahaan baru menekuni dunia slot dengan game sedikit tetapi banyak dimainkan oleh banyak orang.Hanya dengan waktu setahun provider ini berhasil mengumpulkan peminat slot nya.\r\n              <li>Slot Online Flow gaming</li>\r\n              Flow gaming merupakan provider slot baru sangat mudah untuk dimainkan dengan grafik memanjakan mata ,Flow Gaming dipastikan menjadi provider slot online yang sangat mudah untuk dimainkan.\r\n              <li>Slot Online RTG slot</li>\r\n              Slot online RTG slot merupakan provider Asli china lama menciptakan slot online.Dengan permainan dengan grafik fantastis RTG slot dikenal oleh banyak sekali komunitas slot online di indonesia.\r\n              <li>Slot Online Yggdrasil</li>\r\n              Slot online Yggdrasil merupakan provider slot online yang mengumpulkan slot dengan tema tema negara china.Provider ini juga mulai banyak dimainkan oleh para pemain slot baru.\r\n              <li>Slot Online Live22</li>\r\n              Live22 menjadi pilihan provider slot online dengan menawarkan RTP Tinggi sampai dengan 95% di tiap gamenya.Bagaimana tidak menarik para pemain slot jika RTP saja rata 95%.\r\n              <li>Slot Online Microgaming</li>\r\n              Microgaming merupakan provider slot online yang memiliki banyak sekali game .Provider ini memiliki banyak sekali slot online yang bisa kita mainkan diiringi dengan grafik terbaik.\r\n              <li>Slot Online One touch</li>\r\n              One touch merupakan provider online slot yang sangat mudah untuk dimainkan,dengan menerapkan kesederhanaan dalam bermain One touch bisa menggarap member dalam bermain.\r\n              <li>Slot Online JILI</li>\r\n              JILI slot online merupakan Provider baru yang berasal dari china yang menawarkan Perkalian tinggi di setiap game nya .Tidak hanya perkalian yang tinggi JILI juga menawarkan RTP tinggi sampai dengan 96% di setiap Game nya.\r\n              <li>Slot Online CQ9</li>\r\n              CQ9 merupakan slot asli negara bambu atau china yang menunjukkan grafik permainan HD dna juga kemudahan dalam memenangkan Jackpot yang besar.\r\n              <li>Slot Online JDB</li>\r\n              JDB gaming merupakan provider slot yang kurang dikenal slot pemula,Memang kurang dikenal tetapi JDB bisa memastikan para pemain setianya dengan RTP 98% pasti akurat.\r\n              <li>Slot Online AdvantPlay</li>\r\n              Advantplay merupakan provider slot online menawarkan banyak sekali game yang memanjakan mata anda juga membuat kita tidak jenuh dalam bermain slot online.\r\n              <li>Slot Online Astrotech</li>\r\n              Astro tech merupakan provider slot lama mulai naik daun berkat game gamenya di update dan juga ditambahkan.Tidak hanya dengan update game Astrotech juga menawarkan RTP live langsung dari pusat game.\r\n              <li>Slot Online Fachai</li>\r\n              Fachai merupakan provider slot online paling baru yang pastinya sangat tidak pelit memberikan BOnus dan kemenangan sampai dengan jutaan rupiah di tiap harinya.\r\n              <li>Slot Online Crowdplay</li>\r\n              Provider Crowd Play merupakan slot online berasal dari eropa yang dimasukkan ke dalam list slot gacor oleh nexus engine.Selain dari pilihan nexus engine provider ini juga menawarkan Live RTP langsung akurat.\r\n              <li>Slot Online Ambslot</li>\r\n              Ambslot merupakan provider slot online sudah lama berdiri,Selain dari pengalaman bermain dikembangkan Ambslot, Ambslot juga memberikan kepuasan dengan taju modal kecil menang besar.\r\n              <li>Slot Online Bigpot gaming</li>\r\n              Big Pot gaming merupakan provider slot online baru muncul dengan mengedepankan Jackpot besar di setiap game nya.\r\n              <li>Slot Online V Power</li>\r\n              Vpower merupakan provider slot online yang sangat mudah untuk dicari di website judi manapun.Bedanya V Power menawarkan IBOPlay sebagai partner dengan menambahkan RTP live di persen 98 di setiap game nya.\r\n              <li>Slot Online ION Slot</li>\r\n              IONSlot merupakan provider judi online yang berkecimpung di dunia slot online.Dengan game slot sudah banyak ditambahkan dalam list slot nya membuat IONSLOT sangat populer di kalangan pemain slot.\r\n              <li>Slot Online Playstar</li>\r\n              Playstar merupakan provider slot online yang banyak sekali dicari oleh para pemain slot online.Dikarenakan permainan slot online di provider ini sangat bagus dan juga mudah dimenangkan sangat jarang Playstar ditambahkan di situs judi lain.\r\n              <li>Slot Online Playtech</li>\r\n              Slot online Playtech juga mendapatkan gelar provider slot online yang sangat populer dengan game mudah untuk dimenangkan.Playtech juga memberikan jaminan Jackpot di 97% di awal game.\r\n              <li>Slot Online Spadegaming</li>\r\n              Spade gaming merupakan provider tertua yang ada di slot online dengan banyak nya slot online yang dibuat untuk membuat situs judi online semakin ramai dan juga membuat provider ini lebih dikenal lebih dalam lagi.\r\n              <li>Slot Online Betsoft</li>\r\n              Betsoft merupakan slot online baru yang langsung dimasukkan ke list slot gacor oleh nexus gaming. Dikarenakan tawaran provider ini dengan persenan 99% anti rungkad membuat provider ini termasuk slot gacor hari ini.\r\n              <li>Slot Online TopTrend Gaming</li>\r\n              TopTrend gaming merupakan slot online yang sangat mudah dimainkan dan juga memiliki grafik sangat bagus dan juga menawarkan Jackpot chance 96% di tiap harinya . Dengan ada nya RTP membantu kita dalam memilih game game di Toptrend gaming ini.\r\n              <li>Slot Online Funky gaming</li>\r\n              Funky Gaming merupakan provider slot online yang baru saja berdiri di tahun ini.Game game yang dibuat oleh Funky gaming sangatlah mudah dimainkan dan merupakan pilihan game tema terbaik dicontoh dari provider pendahulunya.\r\n            </ol>\r\n          </p>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">Cara memilih provider slot terbaik untuk mendapatkan profit</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            Pastikan Tujuan Bermain <strong><a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">slot online</a></strong> hanyalah meraih kemenangan dan menghilangkan kebosanan.Maka dari itu kita harus dengan detail mencari provider mana yang bisa memberikan kedua aspek tersebut.Berikut Tips Mencari Provider slot online yang memberikan kemenangan tanpa batas:\r\n          </p>\r\n          <ol>\r\n            <li>Pastikan Tujuan bermain slot online</li>\r\n            Pastikan Tujuan kita bermain slot online adalah kemenangan,Siapa yang tidak menginginkan kemenangan besar hanya dengan modal kecil?.Maka dari itu kita pastikan untuk mengetahui apa tujuan kita bermain slot online, apakah hanya bersenang senang atau hanya bermain untuk mencari jackpot.Percayalah bahwa MAXWIN pasti hadir kapan saja tanpa pandang waktu.Maka dari itu jangan berhenti untuk mencoba dan mencari MAXWIN.\r\n            <li>Pilih provider dengan RTP diatas 90%</li>\r\n            Cara memilih provider yang sedang gacor ataupun provider yang sangat terkenal dari RTP LIVE IBOPlay.Setelah melihat RTP tinggi maka kita harus seleksi lagi dengan cara melakukan riset di Komunitas IBOPlay.Setelah melakukan riset maka cobalah bermain dengan Pola ataupun jam gacor yang tersedia di RTP IBOPlay.\r\n            <li>Cari slot online yang banyak dimainkan player lain</li>\r\n            Pemain Slot online tidaklah sedikit, dengan komunitas aktif dengan kata kunci slot gacor hari ini sangat banyak di cari di mesin Google maupun Facebook.Membuktikan bahwa permainan ini sangat populer di kalangan semua umur .Maka dari itu kita juga harus lebih sering aktif di komunitas agar tahu update tentang Slot gacor hari ini di komunitas IBOPlay.\r\n            <li>Pilih permainan yang kita ketahui cara bermain dan perhitungannya</li>\r\n            Setelah mendapatkan rekomendasi kita hanya perlu mencoba bermain untuk mengetahui perhitungan jackpot dna juga cara bermain yang pantas untuk kita coba.Pola yang ada di RTP Belum tentu mantap dan juga pasti Jackpot maka dari itu kita perlu mencoba bermain dengan modal sangat minim yaitu 10 ribu atau dengan Demo Slot online.\r\n          </ol>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">4 Tips memilih situs judi online terpercaya</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            Bermain Judi Tidak hanya memikirkan Kemenangan besar yang akan kita raih,Hal paling penting dalam Bermain judi adalah Memilih situs terpercaya.Berikut rangkuman cara mencari <strong><a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">situs judi online</a></strong> yang terbukti membayar kemenangan:\r\n          </p>\r\n          <ol>\r\n            <li>Terkenal dan memiliki banyak member aktif</li>\r\n            Pastinya syarat atau tips dasar yang harus dipenuhi adalah Situs/Link yang memiliki banyak member aktif dan komunitas aktif.\r\n            <li>Memiliki permainan lengkap</li>\r\n            Tips kedua yang menjadi bukti bahwa situs judi online aman adalah memiliki permainan lengkap yang bisa dimainkan oleh semua orang.\r\n            <li>Memiliki promo dan event</li>\r\n            Pastinya setiap Situs judi online memiliki promo dan event yang selalu update setiap saat untuk menarik member bermain dan menjadi situs yang tidak pelit.\r\n            <li>Pelayanan cepat</li>\r\n            Situs Terpercaya pastinya memberikan pelayanan tercepat dalam menyelesaikan permasalahan dan juga persoalan yang ada.Seperti IBOPlay yang membalas Chat member tidak sampai 1 menit.\r\n            <li>Terlisensi Badan Resmi</li>\r\n            Situs judi online pastinya memiliki lisensi yang ditampilkan di situsnya.Seperti IBOPlay yang dilisensi oleh PAGCOR dna juga bmm testlabs yang menjadikan situs IBOPlay sebagai situs terpercaya.\r\n          </ol>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">Cara mendaftar di IBOPlay</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            Cara <strong><a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">mendaftar di IBOPlay</a></strong> sangatlah mudah hanya dengan menyediakan data diri dan juga saldo untuk bermain.\r\n          </p>\r\n          <ol>\r\n            <li>Klik daftar di bagian pojok menu</li>\r\n            <li>Lalu isi data lengkap dan benar sesuai yang diminta</li>\r\n          </ol>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">Alasan Mengapa harus memilih IBOPlay</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            Mengapa memilih IBOPlay sebagai tempat bermain judi ? Jawabanya karena aman cepat mudah dan nyaman.Dengan mendaftar di IBOPlay kita bisa mendapatkan semua aspek yang kita butuhkan mulai dari data yang aman,cepat dalam hal pelayanan,mudah dalam bermain dan melakukan deposit sampai nyaman karena sering diberi jackpot.Alasan lainnya memiliki IBOPlay sebagai <strong><a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">situs judi online</a></strong> adalah kelengkapan game yang bisa kita mainkan mulai dari game populer slot online,game poker online,domino qiu qiu,live casino,judi taruhan bola online, togel online,mancing ikan bisa kita mainkan dalam satu website saja.\r\n          </p>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">Bonus dan Promo terbaik untuk setiap member</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            Yang membedakan Situs IBOPlay dengan situs lainnya pastinya dari bonusnya.IBOPlay memberikan banyak sekali promo atau bonus yang bisa kita klaim dalam bermain di situs judi online IBOPlay:\r\n          </p>\r\n          <ol>\r\n            <li>Bonus new member 20%</li>\r\n            Untuk setiap New member yang mendaftar di IBOPlay pastinya akan mendapatkan Bonus 20% dari deposit pertama yang bisa kita mainkan di slot online .Bonus ini diberikan sebagai kepercayaan dalam memilih IBOPLay sebagai situs judi onlin terpercaya.\r\n            <li>Bonus Refferal seumur hidup</li>\r\n            Bonus Refferal seumur hidup yang dibagikan di tiap minggunya.Bonus ini Tidak memiliki syarat khusus.Dengan hanya berdiam diri dirumah kita bisa mendapatkan pasif income sampai ratusan juta tiap harinya.\r\n            <li>Bonus Turnover</li>\r\n            Bonus Turnover bisa didapatkan dari bermain setia di IBOPlay setiap minggunya .di tiap minggunya Pastinya IBOPlay membagikan bonus 0.5% dari total turnover mingguan yang akan otomatis masuk ke dalam dompet bermain.\r\n            <li>Bonus Cashback 5%</li>\r\n            Bonus Cashback ini merupakan Bonus kekalahan yang dibagikan bersamaan dengan Bonus Turnover.Menarik bukan mendapatkan Double cashback dalam satu hari sebanyak 5.5% tiap harinya dalam satu minggu.\r\n          </ol>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">Kemudahan yang ditawarkan IBOPlay dalam bermain judi online</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            Pastinya IBOPLay menawarkan kemudahan dalam bermain judi online, dengan hanya 1 ID kita bisa bermain segala jenis permainan yang ada.Selain dari Keuntungan diatas kita juga bisa melakukan metode deposit pulsa tanpa potongan .Sebagai situs yang memudahkan bermain judi online IBOPlay menawarkan <strong><a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">Deposit pulsa Telkomsel</a></strong> dan <strong><a href=\"#\" class=\"text-decoration-none\" style=\"color: #FFFF00;\">Deposit pulsa XL</a></strong> dengan tanpa potongan dengan TO rendah,Deposit dana , E Wallet dan segala jenis bank termasuk bank digital.\r\n            <br><br>\r\n            Selain dari metode deposit yang beragam IBOPlay juga menawarkan Pelayanan Customer service 24 jam tanpa offline.Customer service 24 jam yang dipilih pastinya dapat mengatasi dan menyelesaikan permasalahan yang muncul ketika bermain judi online.\r\n          </p>\r\n          <u class=\"d-block\" style=\"font-size: 36px; font-weight: 500; color: #FF0000;\">FAQ Seputar Slot online</u>\r\n          <p style=\"font-size: 14.4px;\">\r\n            Apa itu slot online?\r\n            <br><br>\r\n            slot online merupakan Jenis permainan mesin slot yang biasa ditemukan di kasino, dengan perkembangan zaman Slot bisa dimainkan dengan online hanya bermodalkan kuota dna 10 ribu rupiah.\r\n            <br>\r\n            Bagaimana cara bermain slot online?\r\n            <br><br>\r\n            Bermain slot online sangatlah mudah hanya perlu mendaftarkan diri di Bagian menu daftar dan menyediakan kuota dan modal 10 ribu kita bisa mendapatkan keuntungan yang fantastis.\r\n            <br>\r\n            Apa itu RTP slot?\r\n            <br><br>\r\n            RTP slot online merupakan tingkatan Return to player ke pemain , simpelnya RTP biasa dilihat sebagai indikasi bahwa slot yang kita lihat lagi bagus atau tidaknya.Maka dari itu pentingnya melihat RTP dalam bermain slot online.\r\n            <br>\r\n            Provider apa yang bisa kita mainkan ?\r\n            <br><br>\r\n            Banyak provider yang sudah kami jelaskan diatas merupakan provider Pilihan Nexus engine.Tetapi untuk Provider terbaik dan dikenal orang banyak seperti Pragmatic play,PG soft,Slot88,Live22,Microgaming,Habanero dan CQ9 Bagaimana bermain slot agar mudah menang?\r\n          </p>\r\n          <ol>\r\n            <li>Melihat RTP</li>\r\n            <li>Mengecek jam GAcor</li>\r\n            <li>Mengecek Pola gacor</li>\r\n          </ol>\r\n          <p style=\"font-size: 14.4px;\">\r\n            Apakah Slot online menguntungkan? Judi slot online sangat menguntungkan para pemain karena hadiah yang ditawarkan bisa sampai 10000x dari total bet.\r\n          </p>', '&copy; 2023 Iboplay menawarkan berbagai macam provider terbaik pilihan dan di dukung pelayanan customer service profesional 24/7 siap melayani anda.', ''),
(4, 'line', 'Nama LINE', '#', ''),
(5, 'twitter', 'Nama Twitter', '#', ''),
(6, 'instagram', 'Nama Instagram', '#', ''),
(7, 'facebook', 'Nama Facebook', '#', ''),
(8, 'livescore', 'lainnya-1.gif', 'link_livescore', ''),
(9, 'rtp_slot', 'lainnya-2.gif', 'link_rtp_slot', ''),
(10, 'popup_pengumuman', 'pengumuman.jpg', 'link_gambar', '<h2 class=\"text-center\" style=\"font-size: 30px; color: #777777; margin-top: 20px; margin-bottom: 10px;\">\r\n            <strong>Link Anti Blokir IBOPLAY</strong>\r\n            <br>\r\n            <span style=\"color: #FF0000;\">\r\n              <strong>https://iboplay.link/Slotgacor</strong>\r\n            </span>\r\n          </h2>\r\n          <h2 class=\"text-center\" style=\"font-size: 30px; color: #777777; margin-top: 20px; margin-bottom: 10px;\">\r\n            <strong>Donwload Aplikasi IBOPLAY</strong>\r\n            <br>\r\n            <a href=\"#\" class=\"text-decoration-none\" style=\"color: #D64444;\">\r\n              <strong>DISINI</strong>\r\n            </a>\r\n            <br>\r\n            <strong>Agar Bermain dengan mudah</strong>\r\n          </h2>\r\n          <h2 class=\"text-center\" style=\"font-size: 30px; color: #777777; margin-top: 20px; margin-bottom: 10px;\">&nbsp;</h2>\r\n          <h2 class=\"text-center\" style=\"font-size: 30px; color: #777777; margin-top: 20px; margin-bottom: 10px;\">&nbsp;</h2>\r\n          <h2 class=\"text-center\" style=\"font-size: 30px; color: #777777; margin-top: 20px; margin-bottom: 10px;\">&nbsp;</h2>'),
(11, 'pusat_bantuan', '<p style=\"font-size: 16px;\">FAQs</p>\r\n    <p style=\"font-size: 14px;\">Bagaimana Cara Membuat Akun di IBOPLAY?</p>\r\n    <p>Cara membuat akun di IBOPLAY sangat mudah, silahkan klik tombol \"Daftar\" yang terletak di bagian kanan atas pada halaman utama IBOPLAY . Lalu isi semua informasi yang dibutuhkan secara tepat dan benar. Anda harus mengkonfirmasi bahwa anda setidaknya berusia 18 tahun untuk melengkapi pendaftaran anda.</p>\r\n    <p class=\"mb-5\">Kolom nama belakang anda tidak dapat dikosongkan. Jika anda tidak memiliki nama belakang (nama keluarga), maka anda dapat mengulang penulisan nama depan anda. Cotoh: Andi Andi.</p>\r\n    <p style=\"font-size: 14px;\">Mata Uang Apa Saja yang Diterima di IBOPLAY?</p>\r\n    <p>\r\n      Dibawah ini adalah daftar semua mata uang yang diterima oleh IBOPLAY :\r\n      <ol>\r\n        <li>Rupiah (IDR)</li>\r\n      </ol>\r\n    </p>\r\n    <p class=\"mb-5\">\r\n      <span class=\"d-block mb-2\">Catatan:</span>\r\n      1 Unit Rupiah (IDR) di IBOPLAY akan mewakili Rp. 1.000.\r\n    </p>\r\n    <p style=\"font-size: 14px;\">Bagaimana Cara Menyetor Dana Ke Akun IBOPLAY Saya?</p>\r\n    <p class=\"mb-5\">\r\n      Sebelum anda dapat bertaruh, anda perlu melakukan deposit dana ke akun anda menggunakan salah satu opsi deposit berikut ini:\r\n      <ol>\r\n        <li>Bank Lokal</li>\r\n        <li>Online Deposit</li>\r\n      </ol>\r\n    </p>\r\n    <p style=\"font-size: 14px;\">Adakah batasan minimal dalam melakukan betting?</p>\r\n    <p class=\"mb-5\">\r\n      Setiap permainan yang disediakan oleh IBOPLAY memiliki taruhan minimal sesuai permainan yang dipilih. Semua informasi tersedia ketika member sudah masuk ke dalam permainan.\r\n    </p>\r\n    <p style=\"font-size: 14px;\">Apakah situs kami terpercaya?</p>\r\n    <p class=\"mb-5\">\r\n      Situs kami merupakan situs resmi yang berkantor di Manila, Filipina dimana sebelum kami beroperasi kami sudah mendapatkan lisensi PACGOR sebagai tanda bahwa kami web terpercaya. Seluruh transaksi data keuangan dan privasi anda menjadi salah satu prioritas kami dan tidak ada satupun member kami yang tidak dibayar kemenangannya.\r\n    </p>', '', ''),
(12, 'syarat_dan_ketentuan', '<p style=\"font-size: 16px;\">TERMS & CONDITIONS</p>\r\n    <p style=\"font-size: 14px;\">Privacy Policy</p>\r\n    <p class=\"mb-5\">We recognize and respect your right to privacy. Keeping your data safe is our paramount concern. We will keep all of your personal data private and will not disclose this information to any third party unless required to do so by applicable laws and regulations or a court order; with the exception that we reserve the right to disclose and transfer your personal data to our respective payment settlement service providers and financial institutions to the extent necessary for the completion of payments for services provided through our website. All personal information supplied by users is transmitted via Secure Socket (SSL 128 bit encryption Standard) and is stored in secure operating environments that are not accessible by the public. Internal access to all data is limited and strictly monitored.</p>\r\n    <p style=\"font-size: 14px;\">Disclaimer</p>\r\n    <p class=\"mb-5\">The information contained in IBOPLAY .com is for general information purposes only. This information is provided by our site and while we strive to maintain up-to-date and correct information, we make no representations or warranties of any kind, express or implied, regarding the completeness, accuracy, reliability, suitability or availability with respect to the website or information , products, services or related images contained on the website for any purpose. Therefore, the risk is borne by you yourself about the dependence of placing that information.</p>', '', ''),
(13, 'responsible_gaming', '<p style=\"font-size: 16px;\">RESPONSIBLE GAMING</p>\r\n    <p style=\"font-size: 14px;\">KEBIJAKAN PERJUDIAN IBOPLAY</p>\r\n    <p>IBOPLAY  berkomitmen untuk mengesahkan taruhan yang bertanggung jawab seperti halnya mempromosikan kesadaran akan masalah judi dan meningkatkan pencegahan, intervensi dan pelayanan. Kebijakan Pertanggungjawaban Permainan IBOPLAY  menetapkan komitmennya untuk meminimalisir efek negatif dari masalah judi dan untuk mempromosikan praktek perjudian yang bertanggung jawab.</p>\r\n    <P>Kami percaya ini tanggung jawab kami untuk anda, pelanggan kami, untuk memastikan bahwa anda menikmati pengalaman bertaruh di situs kami, sementara tetap menyadari penuh terhadap kerugian sosial dan keuangan yang terkait dengan masalah perjudian.</P>\r\n    <p class=\"mb-5\">Dalam rangka membantu pemain kami dalam pertanggunjawaban perjudian, kami memastikan bahwa semua staf kami memiliki kesadaran pertanggunjawaban perjudian. Silahkan menghubungi kami jika anda membutuhkan informasi atau bantuan lebih lanjut.</p>\r\n\r\n    <p style=\"font-size: 14px;\">SELALU DALAM KENDALI</p>\r\n    <p class=\"mb-5\">\r\n      Sementara mayoritas dari pelanggan kami bermain dalam kemampuan mereka namun untuk beberapa orang akan lebih sulit membatasi diri. Untuk mengendalikan kebiasaan bermain anda kami meminta anda untuk mengingat beberapa poin di bawah ini:\r\n      <ol>\r\n        <li>Hindari mengejar kekalahan.</li>\r\n        <li>Hanya bertaruh jika anda yakin dapat menutup kekalahan anda.</li>\r\n        <li>Selalu perhatikan waktu dan mengamati penggunaan dana anda.</li>\r\n        <li>Jika anda ingin berbicara dengan seseorang yang berkaitan dengan taruhan anda, silahkan hubungi satu dari organisasi yang tertera di bawah ini.</li>\r\n      </ol>\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">APAKAH ANDA MEMILIKI MASALAH?</p>\r\n    <p>Jika taruhan anda berdampak buruk terhadap hidup anda atau hidup orang lain, maka pertanyaan berikut mungkin dapat membantu anda untuk mengenali.</p>\r\n    <p>\r\n      Apakah bertaruh mencegah anda untuk menghadiri pekerjaan atau kampus anda?<br>\r\n      Apakah anda bertaruh untuk menghabiskan waktu atau untuk lari dari kebosanan?<br>\r\n      Apakah anda bertaruh sendiri untuk periode waktu yang lama?<br>\r\n      Pernahkah orang lain mengkritik anda sehubungan dengan kebiasaan taruhan anda?<br>\r\n      Apakah anda kehilangan minat kepada keluarga, teman atau hobi anda karena taruhan?<br>\r\n      Apakah anda pernah berbohong untuk menutupi jumlah dana atau waktu yang anda habiskan untuk bertaruh?<br>\r\n      Apakah anda berbohong, mencuri atau meminjam untuk memelihara kebiasaan bertaruh anda?<br>\r\n      Apakah anda enggan untuk menggunakan dana taruhan anda untuk sesuatu yang lainnya?<br>\r\n      Apakah anda bertaruh sampai anda kehilangan semua uang anda?<br>\r\n      Setelah kalah, apakah anda merasa bahwa anda harus mencoba dan memenangkan kembali kekalahan anda secepatnya?<br>\r\n      Jika anda kehabisan uang ketika bertaruh, apakah anda merasa kalah dan dalam keputusasaan dan merasa butuh untuk bertaruh lagi secepatnya?<br>\r\n      Apakah argumentasi, frustasi atau kekecewaan membuat anda menginginkan untuk bertaruh lagi?<br>\r\n      Apakah bertaruh membuat anda merasa depresi atau bahkan ingin bunuh diri?\r\n    </p>\r\n    <p>Semakin banyak pertanyaan yang anda jawab \'ya\', semakin menunjukkan bahwa anda memiliki permasalahan dengan perjudian anda. Untuk berbicara dengan seseorang yang bisa memberikan nasihat dan dukungan, silahkan hubungi salah satu dari organisasi yang tertera di bawah ini.</p>\r\n    <p>Gamblers Anonymous adalah kumpulan dari pria dan wanita yang bergabung bersama untuk membantu masalah perjudian mereka masing-masing dan sesama pemain berat lainnya. Terdapat perkumpulan regional di seluruh dunia. Situs Pelayanan internasional Gamblers Anonymous ada di:<br>www.gamblersanonymous.org</p>\r\n    <p class=\"mb-5\">Gambling Therapy menyediakan bantuan dan bimbingan untuk siapapun yang terdampak buruk oleh perjudian. Situs ini bisa diakses di:<br>www.gamblingtherapy.org</p>\r\n\r\n    <p style=\"font-size: 14px;\">BERJUDI DIBAWAH UMUR</p>\r\n    <p class=\"mb-5\">Bertaruh dibawah batas umur 18 tahun merupakan tindakan ilegal di IBOPLAY . IBOPLAY memiliki tanggung jawab yang serius untuk masalah ini. IBOPLAY  mempunyai hak untuk meminta bukti umur dari pelanggan manapun dan untuk melakukan pengecekan untuk memverifikasi informasi yang disediakan. Akun pelanggan mungkin akan ditutup untuk sementara dan dana akan ditahan sampai tersedia bukti yang memadai mengenai umur anda.</p>\r\n\r\n    <p style=\"font-size: 14px;\">BATAS TARUHAN</p>\r\n    <p>Di IBOPLAY , kami mengakui pentingnya penerapan batas taruhan secara efektif untuk mengurangi masalah perjudian. Dengan demikian, kami menyediakan pengguna dengan sistem untuk mengontrol jumlah uang yang dapat anda gunakan untuk berjudi. Anda dapat mengatur batas taruhan anda untuk permainan olahraga/ sportsbook dan dapat disesuaikan pada setiap kesempatan yang anda inginkan. Cukup pilih Batas Taruhan dari halaman pengaturan akun. Setelah itu masukkan jumlah maksimum Batas Taruhan lalu klik update. Setelah pengaturan Batas Taruhan, aanda akan menerima pemberitahuan melalui email dimana anda perlu mengkonfirmasikan sebelum permintaan anda diproses. Perlu diketahui bahwa jumlah yang telah anda masukkan akan menjadi jumlah maksimum taruhan yang dapat anda pasang pada periode tujuh (7) hari berturut-turut.</p>\r\n    <p class=\"mb-5\">\r\n      Untuk membantu Anda dalam pengaturan batas yang tepat, cobalah untuk merenungkan beberapa hal :\r\n      <ol>\r\n        <li>Menetapkan apa yang merupakan kerugian yang diterima sebelum mulai untuk berjudi.</li>\r\n        <li>Perhatikan seberapa sering Anda bermain.</li>\r\n        <li>Perhatikan berapa lama Anda bermain dalam setiap permainan.</li>\r\n      </ol>\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">PENGECUALIAN DIRI</p>\r\n    <p>Untuk pelanggan kami yang menginginkan untuk membatasi dirinya dari berjudi, kami menyediakan fasilitas pengecualian diri yang memungkinkan pelanggan untuk menutup akunnya untuk minimum waktu 6 bulan sampai 5 tahun sesuai dengan permintaan. Silahkan hubungi Petugas Layanan Pelanggan melalui “Live Chat” yang ada di situs untuk informasi lebih lanjut.</p>', '', ''),
(14, 'tentang', '<p style=\"font-size: 16px;\">TENTANG KAMI</p>\r\n    <p style=\"font-size: 14px;\">IBOPLAY</p>\r\n    <p class=\"mb-5\">\r\n      Selamat datang di IBOPLAY , situs taruhan online terkemuka di Asia, yang menyediakan beragam produk permainan terbaik di Asia.\r\n      <br><br>\r\n      IBOPLAY adalah situs permainan taruhan olahraga hingga kasino terkemuka dan terpercaya di Asia, IBOPLAY menawarkan pengalaman judi online terbaik dengan berbagai variasi permainan kasino & sportsbook yang dapat dipilih dengan odds paling kompetitif dalam dunia judi sepak bola. Kami menawarkan rata-rata 10.000 permainan Olahraga yang berbeda setiap bulan dan berbagai kompetisi di seluruh dunia dalam IBOPLAY  Sportsbook, sementara total lebih dari 100 permainan kasino dari variasi bakarat, slot, roulette dan permainan kasino lainnya dapat dimainkan di IBOPLAY  Casino.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">KEAMANAN</p>\r\n    <p class=\"mb-5\">\r\n      Domain aman dan privat serta integritas produk kami adalah poros fundamental dari pengalaman taruhan online di IBOPLAY . Kami selalu mengutamakan keamanan tercanggih dan memperbaharui semua permainan serta proses-proses kami secara berkala, demi memastikan pengalaman permainan online Anda 100% aman dan adil. Kami selalu mengutamakan menjaga kerahasiaan informasi Anda, dan kami tidak akan pernah membagikannya ataupun menjualnya ke pihak ketiga, kecuali diharuskan sesuai dengan yang disebutkan di Kebijakan Privasi kami.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">PELAYANAN PELANGGAN</p>\r\n    <p class=\"mb-5\">\r\n      Didukung layanan pelanggan 24 jam, yang tersedia 7 hari seminggu, staf kami yang ramah dan profesional akan memastikan bahwa semua masalah yang Anda hadapi akan ditangani dengan cepat, efisien, dan secara ramah. Kami memberikan prioritas tinggi untuk memastikan sistem pembayaran yang aman dan memberikan kerahasiaan informasi pribadi.\r\n      <br><br>\r\n      Misi utama kami adalah selalu memberikan pengalaman taruhan online terbaik bagi pemain yang bertanggung jawab.\r\n      Silahkan hubungi kami melalui Livechat dan Whatsapp, dengan saran dan komentar Anda.\r\n      <br><br>\r\n      Kami memilki beberapa metode pembayaran yang mudah dan aman, demi kenyamanan Anda. Kami mengikuti kebijakan kenali pelanggan Anda (KYC) dan anti-pencucian uang (AML), dan kami bekerja sama dengan badan keuangan serta badan pengatur demi memastikan ketaatan berstandar tertinggi pada hukum dan peraturan.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">PROGRAM DAN HIBURAN</p>\r\n    <p class=\"mb-5\">\r\n      Di IBOPLAY , kami berusaha untuk memberikan yang terbaik dalam permainan dan layanan online untuk menawarkan pengalaman unik & terbaik bagi pelanggan kami. Kami memiliki beberapa program berhadiah, yang memberikan pelanggan kami berbagai hadiah yang benar-benar layak untuk para pemain. Bermain di IBOPLAY tidak hanya menyenangkan dan menghibur, tetapi juga sangat menguntungkan!\r\n    </p>', '', ''),
(15, 'marquee_pengumuman', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci recusandae non iusto sint? Recusandae est reiciendis iusto consectetur nesciunt reprehenderit nisi, enim, explicabo eaque culpa impedit quasi rerum, debitis vitae!', '', ''),
(16, 'logo', 'logo-frontend.png', '', ''),
(17, 'favicon', 'favicon.ico', '', ''),
(18, 'judul_website', 'SITUS AJA', '', ''),
(19, 'warna_utama', '#4a0a0a', '', ''),
(20, 'logo_admin_light', 'logo-light.png', '', ''),
(21, 'logo_admin_dark', 'logo-dark.png', '', ''),
(22, 'logo_admin_sm', 'logo-sm.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id_pengunjung` int(11) NOT NULL,
  `ip_pengunjung` varchar(255) NOT NULL,
  `tanggal_pengunjung` int(11) NOT NULL,
  `bulan_pengunjung` int(11) NOT NULL,
  `tahun_pengunjung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `promosi`
--

CREATE TABLE `promosi` (
  `id_promosi` int(11) NOT NULL,
  `gambar_promosi` varchar(255) NOT NULL,
  `judul_promosi` varchar(255) NOT NULL,
  `detail_promosi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promosi`
--

INSERT INTO `promosi` (`id_promosi`, `gambar_promosi`, `judul_promosi`, `detail_promosi`) VALUES
(1, '1.jpg', 'Promosi 1', 'Detail Promosi 1'),
(2, '2.jpg', 'Promosi 2', 'Detail Promosi 2'),
(3, '3.jpg', 'Promosi 3', 'Detail Promosi 3'),
(4, '4.jpg', 'Promosi 4', 'Detail Promosi 4'),
(5, '5.jpg', 'Promosi 5', 'Detail Promosi 5'),
(6, '6.jpg', 'Promosi 6', 'Detail Promosi 6');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id_provider` int(11) NOT NULL,
  `id_menu_games_provider` int(11) NOT NULL,
  `gambar_provider` varchar(255) NOT NULL,
  `nama_provider` varchar(255) NOT NULL,
  `link_provider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `kategori_rekening` enum('bank','emoney','pulsa') NOT NULL,
  `jenis_rekening` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `kategori_rekening`, `jenis_rekening`) VALUES
(1, 'bank', 'BCA'),
(2, 'bank', 'BNI'),
(3, 'emoney', 'DANA'),
(4, 'emoney', 'OVO'),
(5, 'pulsa', 'TELKOMSEL'),
(6, 'pulsa', 'XL'),
(7, 'pulsa', 'INDOSAT');

-- --------------------------------------------------------

--
-- Table structure for table `rekening_admin`
--

CREATE TABLE `rekening_admin` (
  `id_rekening_admin` int(11) NOT NULL,
  `kategori_rekening_admin` enum('bank','emoney','pulsa') NOT NULL,
  `id_rekening_rekening_admin` int(11) NOT NULL,
  `nama_rekening_admin` varchar(255) NOT NULL,
  `nomor_rekening_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening_admin`
--

INSERT INTO `rekening_admin` (`id_rekening_admin`, `kategori_rekening_admin`, `id_rekening_rekening_admin`, `nama_rekening_admin`, `nomor_rekening_admin`) VALUES
(1, 'bank', 1, 'MADE RIANA PRABANDARI', '0403221241'),
(2, 'bank', 2, 'I GEDE PUTU NOVAN ARIMBAWA', '1384720933'),
(3, 'emoney', 3, 'SRI WAHYUNI', '081375288901'),
(4, 'emoney', 4, 'SRIWIDODO', '081265814932'),
(5, 'pulsa', 5, 'SRI WAHYUNI', '081375288901'),
(6, 'pulsa', 6, 'SRIWIDODO', '087765814932'),
(7, 'pulsa', 7, 'SOGI MARDIANTO', '087729434231');

-- --------------------------------------------------------

--
-- Table structure for table `rekening_anggota`
--

CREATE TABLE `rekening_anggota` (
  `id_rekening_anggota` int(11) NOT NULL,
  `id_akun_rekening_anggota` int(11) NOT NULL,
  `kategori_rekening_anggota` enum('bank','emoney','pulsa') NOT NULL,
  `id_rekening_rekening_anggota` int(11) NOT NULL,
  `nama_rekening_anggota` varchar(255) NOT NULL,
  `nomor_rekening_anggota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id_saldo` int(11) NOT NULL,
  `id_akun_saldo` int(11) NOT NULL,
  `total_saldo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id_saldo`, `id_akun_saldo`, `total_saldo`) VALUES
(1, 1, '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu_games`
--

CREATE TABLE `sub_menu_games` (
  `id_sub_menu_games` int(11) NOT NULL,
  `id_menu_games_sub_menu_games` int(11) NOT NULL,
  `gambar_sub_menu_games` varchar(255) NOT NULL,
  `judul_sub_menu_games` varchar(255) NOT NULL,
  `link_sub_menu_games` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_menu_games`
--

INSERT INTO `sub_menu_games` (`id_sub_menu_games`, `id_menu_games_sub_menu_games`, `gambar_sub_menu_games`, `judul_sub_menu_games`, `link_sub_menu_games`) VALUES
(1, 1, 'pp.webp', 'Pragmatic Play', 'pragmatic_play'),
(2, 1, 'microgaming.webp', 'Micro Gaming', 'micro_gaming'),
(3, 1, 'reelkingdom.webp', 'ReelKingdom', 'reelkingdom'),
(4, 1, 'advantplay.webp', 'AdvantPlay', 'advantplay'),
(5, 1, 'fachai.webp', 'Fachai', 'fachai'),
(6, 1, 'crowdplay.webp', 'CrowdPlay', 'crowdplay'),
(7, 1, 'jili.webp', 'Jili', 'jili'),
(8, 1, 'amb.webp', 'AMB Slot', 'amb_slot'),
(9, 1, 'bigpot.webp', 'Bigpot', 'bigpot'),
(10, 1, 'vpower.webp', 'VPower', 'vpower'),
(11, 1, 'slot88.webp', 'Slot88', 'slot88'),
(12, 1, 'pgs.webp', 'ION Slot', 'ion_slot'),
(13, 1, 'joker.webp', 'Joker', 'joker'),
(14, 1, 'live22.webp', 'Live22', 'live22'),
(15, 1, 'playstar.webp', 'Playstar', 'playstar'),
(16, 1, 'spadegaming.webp', 'Spade Gaming', 'spade_gaming'),
(17, 1, 'fungaming.webp', 'Fun Gaming', 'fun_gaming'),
(18, 1, 'habanero.webp', 'Haba Nero', 'haba_nero'),
(19, 1, 'jdb.webp', 'JDB', 'jdb'),
(20, 1, 'sbocq9.webp', 'CQ9', 'cq9'),
(21, 1, 'ttg.webp', 'Top Trend Gaming', 'top_trend_gaming'),
(22, 1, 'betsoft.webp', 'BetSoft', 'betsoft'),
(23, 1, 'playtech.webp', 'Playtech', 'playtech'),
(24, 1, 'yggdrasil.webp', 'Yggdrasil', 'yggdrasil'),
(25, 1, 'playngo.webp', 'Play\'nGo', 'playngo'),
(26, 1, 'onetouch.webp', 'OneTouch', 'onetouch'),
(27, 1, 'sborealtimegaming.webp', 'Real Time Gaming', 'real_time_gaming'),
(28, 1, 'sboflowgaming.webp', 'Flow Gaming', 'flow_gaming'),
(29, 1, 'iconicgaming.webp', 'Astro Tech', 'astro_tech'),
(30, 1, 'sbofunkygame.webp', 'Funky Gaming', 'funky_gaming'),
(31, 2, 'trg.webp', 'ION Casino', 'ion_casino'),
(32, 2, 'pplivecasino.webp', 'PP Casino', 'pp_casino'),
(33, 2, 'mglivecasino.webp', 'MG Live', 'mg_live'),
(34, 2, 'evogaming.webp', 'Evo Gaming', 'evo_gaming'),
(35, 2, 'sbosexybaccarat.webp', 'Sexy Baccarat', 'sexy_baccarat'),
(36, 2, 'prettygaming.webp', 'Pretty Gaming', 'pretty_gaming'),
(37, 2, 'ag.webp', 'Asia Gaming', 'asia_gaming'),
(38, 2, 'allbet.webp', 'AllBet', 'allbet'),
(39, 2, 'pgslive.webp', 'PGS Live', 'pgs_live'),
(40, 2, 'dreamgaming.webp', 'Dream Gaming', 'dream_gaming'),
(41, 2, 'sbocasino.webp', '568Win Casino', '568win_casino'),
(42, 2, 'sv388.webp', 'SV388', 'sv388'),
(43, 3, 'sbo.webp', 'SBO Sportbook', 'sbo_sportbook'),
(44, 3, 'ibcsports.webp', 'SABA Sportbook', 'saba_sportbook'),
(45, 3, 'opus.webp', 'Opus', 'opus'),
(46, 3, 'wbet.webp', 'WBet', 'wbet'),
(47, 3, 'pinnacle.webp', 'Pinaccle', 'pinaccle'),
(48, 3, 'imone.webp', 'IM E-Sports', 'im_esports'),
(49, 3, 'pinnacleesports.webp', 'Pinaccle E-Sports', 'pinaccle_esports'),
(50, 3, 'tfgaming.webp', 'TF Gaming', 'tf_gaming'),
(51, 3, 'sbovirtualgames.webp', 'SBO Virtual Sports', 'sbo_virtual_sports'),
(52, 3, 'ppvirtualgames.webp', 'PP Virtual Sports', 'pp_virtual_sports'),
(53, 4, 'microgamingfishing.webp', 'MicroGaming Fishing', 'microgaming_fishing'),
(54, 4, 'fachaifishing.webp', 'Fachai Fishing', 'fachai_fishing'),
(55, 4, 'jokerfishing.webp', 'Joker Fishing', 'joker_fishing'),
(56, 4, 'jilifishing.webp', 'Jili Fishing', 'jili_fishing'),
(57, 4, 'ambfishing.webp', 'AMB Slot Fishing', 'amb_slot_fishing'),
(58, 4, 'vpowerfishing.webp', 'VPower Fishing', 'vpower_fishing'),
(59, 4, 'crowdplayfishing.webp', 'Crowd Play Fishing', 'crowd_play_fishing'),
(60, 4, 'live22fishing.webp', 'Live22 Fishing', 'live22_fishing'),
(61, 4, 'sbocq9fishing.webp', 'CQ9 Fishing', 'cq9_fishing'),
(62, 4, 'spadegamingfishing.webp', 'Spade Gaming Fishing', 'spade_gaming_fishing'),
(63, 4, 'fungamingfishing.webp', 'Fun Gaming Fishing', 'fun_gaming_fishing'),
(64, 4, 'arcadia.webp', 'Arcadia', 'arcadia'),
(65, 4, 'playstarfishing.webp', 'PlayStar Fishing', 'playstar_fishing'),
(66, 4, 'advantplayminigame.webp', 'AdvantPlay Mini Games', 'advantplay_mini_games'),
(67, 4, 'jdbfishing.webp', 'JDB Fishing', 'jdb_fishing'),
(68, 4, 'iconicgamingfishing.webp', 'Astro Tech Fishing', 'astro_tech_fishing'),
(69, 4, 'sbofunkygamefishing.webp', 'Funky Games Fishing', 'funky_games_fishing'),
(70, 4, 'ixttangkas.webp', 'MM Tangkas', 'mm_tangkas'),
(71, 5, 'g8poker.webp', 'Balak Play', 'balak_play'),
(72, 5, 'onepoker.webp', '9Gaming', '9gaming'),
(73, 6, 'balak4d.webp', 'Nex4D', 'nex4d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id_deposit`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_games`);

--
-- Indexes for table `menu_games`
--
ALTER TABLE `menu_games`
  ADD PRIMARY KEY (`id_menu_games`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- Indexes for table `promosi`
--
ALTER TABLE `promosi`
  ADD PRIMARY KEY (`id_promosi`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id_provider`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `rekening_admin`
--
ALTER TABLE `rekening_admin`
  ADD PRIMARY KEY (`id_rekening_admin`);

--
-- Indexes for table `rekening_anggota`
--
ALTER TABLE `rekening_anggota`
  ADD PRIMARY KEY (`id_rekening_anggota`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_saldo`);

--
-- Indexes for table `sub_menu_games`
--
ALTER TABLE `sub_menu_games`
  ADD PRIMARY KEY (`id_sub_menu_games`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id_deposit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id_games` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `menu_games`
--
ALTER TABLE `menu_games`
  MODIFY `id_menu_games` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id_pengaturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id_pengunjung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promosi`
--
ALTER TABLE `promosi`
  MODIFY `id_promosi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id_provider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rekening_admin`
--
ALTER TABLE `rekening_admin`
  MODIFY `id_rekening_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rekening_anggota`
--
ALTER TABLE `rekening_anggota`
  MODIFY `id_rekening_anggota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_menu_games`
--
ALTER TABLE `sub_menu_games`
  MODIFY `id_sub_menu_games` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
