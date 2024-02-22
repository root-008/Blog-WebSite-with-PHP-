-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Ara 2022, 07:37:09
-- Sunucu sürümü: 10.4.25-MariaDB
-- PHP Sürümü: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db_for_web`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `accountinfo`
--

CREATE TABLE `accountinfo` (
  `account_Id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `accountinfo`
--

INSERT INTO `accountinfo` (`account_Id`, `username`, `password`) VALUES
(10, 'can', '$2y$10$7SQMGAbxPizJulb6ZLwjReQS/fGRa9VfKEmhCtDAHWcEbRucc.jBi'),
(12, 'admin', '$2y$10$QyUSBDp8GsQfI7QA4QSdEetA1h/Ya1DclMBuX5RpDDSSThFDYwdI6');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `comments_id` int(11) NOT NULL,
  `Games_ID` int(11) DEFAULT NULL,
  `Sicence_Tech_Id` int(11) DEFAULT NULL,
  `Fun_Id` int(11) DEFAULT NULL,
  `gallery_Id` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `comments` text NOT NULL,
  `time` datetime NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`comments_id`, `Games_ID`, `Sicence_Tech_Id`, `Fun_Id`, `gallery_Id`, `username`, `comments`, `time`, `url`) VALUES
(12, 3, NULL, NULL, NULL, 'demir', 'msj 1', '2022-12-24 19:09:19', ''),
(14, NULL, NULL, NULL, 7, 'demir', 'asdad', '2022-12-24 19:45:36', '/gallery_contentpage.php?id=7'),
(16, 2, NULL, NULL, NULL, 'can', 'on numara site', '2022-12-24 20:55:41', '/contentpage.php?mainpagelist_ID=2&Games_ID=2&Fun_Id=0&Sicence_Tech_Id=0'),
(17, 3, NULL, NULL, NULL, 'demir', 'on numara site baba', '2022-12-24 21:15:36', '/contentpage.php?mainpagelist_ID=3&Games_ID=3&Fun_Id=0&Sicence_Tech_Id=0'),
(18, NULL, 2, NULL, NULL, 'demir', 'bizim mahallede de var aynısı', '2022-12-24 21:39:02', '/contentpage.php?mainpagelist_ID=7&Games_ID=0&Fun_Id=0&Sicence_Tech_Id=2'),
(19, 2, NULL, NULL, NULL, 'demir', 'naber müdür', '2022-12-27 02:52:30', '/contentpage.php?mainpagelist_ID=2&Games_ID=2&Fun_Id=0&Sicence_Tech_Id=0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fun`
--

CREATE TABLE `fun` (
  `Fun_Id` int(11) NOT NULL,
  `fun_img` varchar(1000) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `Title` varchar(10000) NOT NULL,
  `Contents` mediumtext NOT NULL,
  `Author` varchar(300) NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `fun`
--

INSERT INTO `fun` (`Fun_Id`, `fun_img`, `Type`, `Title`, `Contents`, `Author`, `Time`) VALUES
(1, 'Pictures/elon-musk-twitter-ceo-ayriliyor-1.webp', 'Eglence', 'Elon Musk, Twitter’a yeni CEO aramaya başladı!', '<p>Elon Musk’ın Twitter’daki CEO’luk görevini devretmek istediği bildirildi. Yaklaşık iki aydır Twitter yöneticisi olan Musk, sosyal medyadaki kontrolünü azaltmaya çalışıyor. Hatta Musk’ın yeni CEO arayışı, Twitter’daki kullanıcılara istifa edip etmemesi gerektiğini soran anketten önce başladı.</p><h2><strong>Elon Musk, Twitter CEO’luğunu bırakıyor mu?</strong></h2><p>Yaptığı hamleler ve attığı çılgınca adımlar nedeniyle neredeyse her gün gündeme gelmeyi başaran Elon Musk, geçtiğimiz gün Twitter üzerinde devasa katılımın sağlandığı bir oylama başlattı. Oy verenlerin yüzde 57’sinden fazlası görevi bırakmasını istedi. Anket sonuçları eleştirilirken, Musk’ın yeni CEO’yu aramaya başladığı iddia edildi.</p><p><img src=\"https://shiftdelete.net/wp-content/uploads/2022/12/twitter-link-yasagi-icin-geri-adim-atti.jpg\" alt=\"\" srcset=\"https://shiftdelete.net/wp-content/uploads/2022/12/twitter-link-yasagi-icin-geri-adim-atti.jpg 1280w, https://shiftdelete.net/wp-content/uploads/2022/12/twitter-link-yasagi-icin-geri-adim-atti-150x84.jpg 150w, https://shiftdelete.net/wp-content/uploads/2022/12/twitter-link-yasagi-icin-geri-adim-atti-768x432.jpg 768w, https://shiftdelete.net/wp-content/uploads/2022/12/twitter-link-yasagi-icin-geri-adim-atti-640x360.jpg 640w, https://shiftdelete.net/wp-content/uploads/2022/12/twitter-link-yasagi-icin-geri-adim-atti-320x180.jpg 320w\" sizes=\"100vw\" width=\"1280\"></p><p>Musk’ın Twitter CEO’luğu yürüttüğü iki aylık süreçte birçok tartışma yaşandı. Çalışanların yarısından fazlasını işten çıkaran isim, ayrıca içerik denetim politikalarında yaptığı değişiklikler ile gündem oldu. <strong>Twitter Blue</strong> sorunlu şekilde aktifleştirildi ve reklamverenler, Musk’ın “mutlak ifade özgürlüğü” yaklaşımıyla ilgili endişeler nedeniyle reklamları kesti.</p><p>Musk daha önce Twitter’ı geçici olarak yöneteceğini söylese de, yeni bir yönetici adayının olmadığını belirtti. Geçtiğimiz gün yapılan anket sonucuna ise “Twitter’ı canlı tutabilecek” birini bulmanın zor olabileceğini söyledi.</p><p>Sosyal medya platformunun CEO’luğunu kimin devralacağı hala belirsizliğini koruyor. Ancak şirket içerisinden bazı kişilerin Musk’ın koltuğuna aday olabileceği iddia edildi.</p><p>&nbsp;</p><p>Musk’ın iki aylık Twitter macerası, <strong>Tesla hisse fiyatlarının</strong> düşmesi başta olmak üzere diğer şirketleri de etkiledi. Platformda yaşanan tartışmalar, ünlü girişimciye olan güveni sarsarken, şirket yönetme becerisinin sorgulanmasına yol açtı.</p><p>Siz bu konu hakkında ne düşünüyorsunuz? Görüşlerinizi yorumlarda bizlerle paylaşmayı unutmayın!</p>', 'Ömer Dursun', '2022-12-21 06:21:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery`
--

CREATE TABLE `gallery` (
  `gallery_Id` int(11) NOT NULL,
  `category` varchar(300) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `Title` varchar(10000) NOT NULL,
  `Contents` longtext NOT NULL,
  `Author` varchar(300) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `gallery`
--

INSERT INTO `gallery` (`gallery_Id`, `category`, `img`, `Title`, `Contents`, `Author`, `time`) VALUES
(2, 'Galeri/Bilim', '../Pic/Ay-detayli-gorseller.jpg', 'NASA, Ay’ın yüksek çözünürlüklü fotoğraflarını paylaştı!', '<p>NASA’nın Ay’a yeniden dönüş için yaptığı çalışmalar kapsamında Artemis I görevini yerine getirmekte olan Orion uzay aracı artık Dünya’ya dönüş yolunda. Bu süreçte Dünya’dan yaklaşık 435 bin kilometre uzaklaşan Orion, Ay’ın iki kez oldukça yakınından geçti.</p><h2><strong>Orion uzay aracı Ay’dan olağanüstü fotoğraf gönderdi</strong></h2><p>Orion uzay aracı görev kapsamında Ay’ın oldukça detaylı görsellerini çekmeyi de başardı. NASA, uzay aracı tarafından çekilen bazı detayları fotoğrafları ise bizlerle <a href=\"https://www.flickr.com/photos/nasa2explore/with/52546830336/\">paylaştı</a>. Orion’un güneş panellerinin ucuna monte edilmiş yüksek çözünürlüklü bir kamera tarafından çekilen bu fotoğraflar, Ay’ı tüm güzelliği ile ortaya koyuyor.</p><figure class=\"image\"><img src=\"https://shiftdelete.net/wp-content/uploads/2022/12/Ay-detayli-gorseller.jpg\" alt=\"\" srcset=\"https://shiftdelete.net/wp-content/uploads/2022/12/Ay-detayli-gorseller.jpg 1280w, https://shiftdelete.net/wp-content/uploads/2022/12/Ay-detayli-gorseller-150x84.jpg 150w, https://shiftdelete.net/wp-content/uploads/2022/12/Ay-detayli-gorseller-768x432.jpg 768w, https://shiftdelete.net/wp-content/uploads/2022/12/Ay-detayli-gorseller-640x360.jpg 640w, https://shiftdelete.net/wp-content/uploads/2022/12/Ay-detayli-gorseller-320x180.jpg 320w\" sizes=\"100vw\" width=\"1280\"></figure><p>Orion’un Ay’a ilk yakın geçişinde çektiği fotoğraflar, muhtemelen güneş panelleri dizisine monte edilmişn Optik Navigasyon Kamerası ile çekildikleri için çok fazla detay barındırmıyor. Ancak Orion’un dönüş yolunca çektikleri görseller farklı kameraların kullanılması ve NASA’nın muhtemelen daha iyi bir ayar aralığı bulması nedeniyle çok daha başarılı.</p><p>Tabi ki bu fotoğraflar Artemis I görevinin ana odağı değildi ancak yine de ortaya çıkan görseller uzayda neler olduğunu merak eden bizim gibi insanlar için büyük önem taşıyor. NASA’nın bu görselleri Orion’un Ay’a ilk geçişinden sonra bekliyorduk ancak fotoğrafları görmek için bir hafta daha beklememiz gerekti.</p><p>Orion’un şimdiye kadarki performansı NASA tarafından “olağanüstü” olarak nitelendirilirken, artık görevinin sonuna gelen uzay aracının Dünya’ya iniş yapması bekleniyor. 15 Kasım’da NASA’nın en yeni fırlatma sistemi ile uzaya gönderilen Orion, 11 Aralık tarihinde tekrar yeryüzüne inmiş olacak.</p><p>NASA, bir sonraki görev olan Artemis II için ise 2024 yılını işaret ediyor. Artemis I’e benzer bir rota izleyecek olan Artemis II görevinde bu sefer astronotlar da yer alacak. 2025 yılına gelindiğinde ise Artemis III görevi ile birlikte insanlığın tekrar Ay’a ayak basması planlanıyor.</p><p>NASA, 3 yıl içerisinde Ay’a tekrar insan göndermenin planlarını yapıyor. Peki siz NASA’nın yeni Ay görevleri hakkında ne düşünüyorsunuz? Görüşlerinizi yorumlar kısmında bizimle paylaşabilirsiniz.</p>', 'Gökberk Baycan', '2022-12-18 17:36:14'),
(3, 'Galeri/Bilim', '../Pic/../Pic/bilim-insanlarindan-uzayda-yasam-ile-ilgili-yeni-kesif.jpg', 'Bilim insanlarından uzayda yaşam ile ilgili yeni keşif!', '<p>Max Planck Enstit&uuml;s&uuml;, Georg August &Uuml;niversitesi ve Sonneberg G&ouml;zlemevi&rsquo;ndeki bilim insanlarının hazırladığı yeni bir araştırma makalesi yayınladı. Araştırmacılar, daha &ouml;nce astronomlar tarafından keşfedilmeyen 18 &ouml;tegezegen olduğunu ortaya koydu. Yeni keşfedilen gezegenlerden 2 tanesinde su olduğu ve uzayda yaşam ile ilgili ipu&ccedil;ları i&ccedil;erebileceği a&ccedil;ıklandı.</p>\r\n\r\n<h2><strong>Uzayda yaşam var mı? Bilim insanları 2 yeni gezegen keşfetti</strong></h2>\r\n\r\n<p>Keşfedilen 2 gezegen hakkında merak uyandıran şey, kayalık bir &ccedil;ekirdek olan Europa&rsquo;ya olan benzerliği olarak nitelendiriliyor. Diğer 2 gezegenin yıldızlarına Europa ve gezegeninden daha yakın olduğu belirtiliyor. Bu nedenle bilim insanları, gezegenlerin y&uuml;zeyinin b&uuml;y&uuml;k olasılıkla sıvı su ve buhar arasında bulanıklaştığına inanıyor.</p>\r\n\r\n<p><img alt=\"Uzayda yaşam var mı? Bilim insanları 2 yeni gezegen keşfetti\" src=\"https://shiftdelete.net/wp-content/uploads/2022/12/bilim-insanlarindan-uzayda-yasam-ile-ilgili-yeni-kesif-1.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Bilim insanları, sistemdeki dış gezegenlerin atmosferleri hakkında araştırma yapmak i&ccedil;in ideal olduklarını belirtti. Daha derine inmek i&ccedil;in araştırmacılar, Hubble ve Spitzer uzay teleskopları tarafından yakalanan sistem verilerine baktı. Gezegenler &ccedil;ok yakın olduklarından, g&ouml;kbilimcilerin &ldquo;ge&ccedil;iş zamanlaması varyasyonları&rdquo; adını verdikleri durum meydana geldi. Ge&ccedil;iş zamanlaması varyasyonlarının gezegeni y&ouml;r&uuml;ngenin normalde onu oraya g&ouml;t&uuml;receği zamanda g&ouml;r&uuml;nmediği anlamına geldiğini belirtmekte fayda var.</p>\r\n\r\n<p>Araştırmacılar, bu durumda bir sistemdeki gezegenlerin ge&ccedil;işine bakılarak toplanan herhangi bir verinin hi&ccedil; bir şekilde senkronize olmayacağının altını &ccedil;izdi. Bununla birlikte araştırmacılar, su birikintisine sahip gezegenlerin keşfinden sonra Hubble ve Spitzer uzay teleskoplarından toplanan verilere bakarak yedi yıllık bir zaman &ccedil;izelgesi oluşturmayı başardılar. Bu sayede Kepler&rsquo;de bulunan d&uuml;nyalar hakkında daha fazla ayrıntı elde edildi.</p>\r\n\r\n<p>Konu hakkında a&ccedil;ıklama yapan bilim insanı&nbsp;Bj&ouml;rn Benneke, &ldquo;Daha &ouml;nce D&uuml;nya&rsquo;dan biraz daha b&uuml;y&uuml;k olan gezegenlerin, D&uuml;nya&rsquo;nın &ouml;l&ccedil;eklendirilmiş versiyonları gibi b&uuml;y&uuml;k metal ve kaya topları olduğunu d&uuml;ş&uuml;nd&uuml;k ve bu y&uuml;zden onlara s&uuml;per D&uuml;nyalar adını verdik. Ancak, şimdi bu iki gezegenin, Kepler-138c ve d&rsquo;nin doğaları gereği olduk&ccedil;a farklı olduklarını g&ouml;zlemledik. Hacimlerinin b&uuml;y&uuml;k bir kısmı muhtemelen sudan oluşuyor. İlk kez astronomlar tarafından uzun s&uuml;redir var olduğu teorize edilen bir t&uuml;r gezegen olan su d&uuml;nyaları olarak g&uuml;venle tanımlanabilen gezegenleri g&ouml;zlemliyoruz.&rdquo; ifadelerine yer verdi.</p>\r\n\r\n<p>Siz bu konu hakkında ne d&uuml;ş&uuml;n&uuml;yorsunuz? Fikirlerinizi yorumlar kısmında bizlerle paylaşabilirsiniz.</p>\r\n', 'Yiğit Ali Demir', '2022-12-21 23:49:52'),
(4, 'Galeri/Bilim', '../Pic/swot.jpeg', 'NASA’dan dev proje: Su kaynaklarını uzaydan incelecek!', '<p>Ulusal Havacılık ve Uzay Dairesi&nbsp;(NASA), önemli bir proje için düğmeye bastı. Gezegenimizin okyanusları, gölleri, nehirleri kısacası su haritası hakkında detaylı araştırma yapabilmek adına Yüzey&nbsp;Suyu ve Okyanus Topografyası (SWOT) görevini başlattı.</p><h2><strong>SWOT, yüzey suyunun en kapsamlı haritasını oluşturacak</strong></h2><p>Kaliforniya’daki Vandenberg Uzay Kuvvetleri Üssü’ndeki Uzay Fırlatma Kompleksi 4E’den fırlatılan bir SpaceX Falcon 9 roketi&nbsp;ile gönderildi. Uzay aracı, Dünya’da bulunan okyanus, deniz, akarsu ve gölleri uzaydan detaylı bir şekilde incelemek için gönderildi.</p><p><img src=\"https://shiftdelete.net/wp-content/uploads/2022/12/spacex.webp\" alt=\"SWOT\" srcset=\"https://shiftdelete.net/wp-content/uploads/2022/12/spacex.webp 1200w, https://shiftdelete.net/wp-content/uploads/2022/12/spacex-150x87.webp 150w, https://shiftdelete.net/wp-content/uploads/2022/12/spacex-768x444.webp 768w\" sizes=\"100vw\" width=\"1200\"></p><p>SWOT, gezegendeki su akışının en net halini gözler önüne sermek için gerçekleştiriliyor. Ayrıca görev,&nbsp;iklim değişikliğinin etkilerini yakından takip edecek gidişatı gözlemleyecek. Konuya ilişkin olarak NASA başkanı Bill Nelson şu ifadelere yer verdi.</p><p><br>&nbsp;</p><blockquote><p><i>Isınan denizler, aşırı hava koşulları, daha şiddetli orman yangınları. Bunlar, insanlığın iklim değişikliği nedeniyle karşı karşıya kaldığı sonuçlardan yalnızca birkaçı. İklim krizi, her şeyi kapsayan bir yaklaşım gerektiriyor ve SWOT, toplulukları bu zorluklarla yüzleşebilmeleri için nihayetinde daha iyi donatacak uzun süreli bir uluslararası ortaklığın hayata geçirilmesidir.</i></p></blockquote><p><br>NASA, proje üzerinde yaklaşık 20 yıldır çalışıyor. Projenin uzaya taşınmasında Elon Musk’ın SpaceX’i ile ortak çalışma yürütüldü. Proje, tüm su birikintilerinin yükseklik ve yüzey ölçümlerini yüksek çözünürlüklü ayrıntılarla toplayacak. Bunu ise mikrodalga radar teknolojisini kullanarak yapacak.</p><p>&nbsp;</p>', 'Ramazan Erdinç', '2022-12-21 21:19:30'),
(6, 'Galeri/Sinema', '../Pic/../Pic/galeri_491.jpg', 'Bu hafta vizyonda hangi filmler var?', '<p>Yeni haftada vizyona olduk&ccedil;a ilgi &ccedil;ekici yapımlar giriyor. Bu haftanın ilk dikkat &ccedil;eken yapımı&nbsp;<strong>Bad Boys for Life</strong>&nbsp;olacak. 2000&#39;li yılların başında damgasını vurmuş olan serinin yıllar sonra geri gelmesi,</p>\r\n\r\n<p>eski seyircileri salonlara dolduracak.&nbsp;<strong>Mike Lowery</strong>&nbsp;ve&nbsp;<strong>Marcus</strong>&nbsp;<strong>Burnnet&nbsp;</strong>karakterlerinin başından ge&ccedil;enleri anlatan filmde, yine komedi tarzında bir hikaye anlatımı g&ouml;receğiz. Aksiyon kanadında başarılı sahnelere sahip olan Bad Boys for Life&#39;ın gişede başarılı olmadı bekleniyor.</p>\r\n\r\n<h2>Bu hafta i&ccedil;erisinde vizyonda hangi yeni filmleri izleyeceğiz?</h2>\r\n\r\n<p>Bir diğer ilgi toplayan yapım ise<strong>&nbsp;The Young Cannibals</strong>&nbsp;olacaktır. David Patrick Stucky, James Knapp, Iacopo Paradisi gibi oyunculara sahip olan filmde gerilim anlamında ilgi &ccedil;ekici sahneler g&ouml;rebiliriz. Bir aile hikayesi olan The Farewell ise Hollywood filmlerinden sıkılan sinemaseverlerin imdadına yetişiyor. &Ccedil;inli bir ailenin hikayesini anlatan<strong>&nbsp;The Farewell</strong>&#39;i izlemenizi tavsiye ediyoruz. Bu haftanın geri kalan kısmındaysa korku filmleri yer almakta. M&uuml;hr&uuml; Cin, klasik T&uuml;rk korku filmlerinden hoşlanan izleyicilerin favorisi olabilir. Son olarak T&uuml;rk komedisi&nbsp;<strong>Feride&nbsp;</strong>ise bu hafta vizyona girecek.</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">1</span></span></p>\r\n\r\n<p><img alt=\"Bu hafta vizyonda hangi filmler var?\" src=\"https://www.merlininkazani.com/images/games/8748/galeri_486.jpg\" style=\"height:349px; width:700px\" /></p>\r\n\r\n<h2>M&uuml;hr-&uuml; Cin</h2>\r\n\r\n<p>Rana, m&uuml;zikal tiyatro oyunlarında oynayan gen&ccedil; bir kadındır. Bir s&uuml;redir g&ouml;r&uuml;şm&uuml;ş olduğu Eren&rsquo;le sevgili oldukları g&uuml;n, eve geldiğinde bazı doğa&uuml;st&uuml; durumlarla karşılaşır. G&ouml;rd&uuml;ğ&uuml; şeyler karşısında ev arkadaşı K&uuml;bra eve gelene kadar banyoda &ouml;ylece korku i&ccedil;inde kalmıştır. Sonraki g&uuml;nler sahnede iş hayatına devam ederken, sevgilisi Eren&rsquo;le g&ouml;r&uuml;şmeye devam etmektedir. &Ccedil;evresi Rana&rsquo;yı hal&uuml;sinasyon g&ouml;rd&uuml;ğ&uuml;ne ikna etse de bir s&uuml;re sonra &ccedil;evresindeki arkadaşları da ger&ccedil;eğin farkına varır. Rana, g&ouml;rd&uuml;ğ&uuml; doğa&uuml;st&uuml; varlığın hem kendisine hem &ccedil;evresine zarar vermesinden dolayı onunla savaşmayı se&ccedil;er. &Ouml;l&uuml;m&uuml; dahi g&ouml;ze alan Rana, kendisine musallat olan varlık ile y&uuml;zleşir.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"394\" scrolling=\"no\" src=\"https://www.youtube.com/embed/MrapHABToi0\" width=\"700\"></iframe></p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">2</span></span></p>\r\n\r\n<p><img alt=\"Bu hafta vizyonda hangi filmler var?\" src=\"https://www.merlininkazani.com/images/games/8748/galeri_487.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h2>Bad Boys for Life</h2>\r\n\r\n<p>Mike Lowery ve Marcus Burnnet, narkotikten sorumlu olan iki polistir. Mike Lowery, orta yaş krizinin etkileri ile baş etmeye &ccedil;alışırken, Marcus Burnett polis m&uuml;fettişi olarak kariyerine devam eder. İkili, bu sefer bir uyuşturucu baronu olan Armando Armas&rsquo;ın peşine d&uuml;şer. Ancak Armando&rsquo;yu yakalamak pek de kolay değildir. Aynı zamanda soğukkanlı bir katil olan Armando&rsquo;nun peşine d&uuml;şen ikili, kendilerini zorlu bir maceranın i&ccedil;inde bulur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"394\" scrolling=\"no\" src=\"https://www.youtube.com/embed/jKCj3XuPG8M\" width=\"700\"></iframe></p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">3</span></span></p>\r\n\r\n<p><img alt=\"Bu hafta vizyonda hangi filmler var?\" src=\"https://www.merlininkazani.com/images/games/8748/galeri_488.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h2>The Farewell</h2>\r\n\r\n<p>Amerika&rsquo;da b&uuml;y&uuml;yen Lili&rsquo;ye babası bir g&uuml;n &ccedil;ok can sıkıcı bir haber verir: &Ccedil;in&rsquo;de yaşayan Nai Nai&rsquo;sine -yani ninesi- 4. Evre akciğer kanseri teşhisi konulmuştur. Aile bu haberi nineden saklayıp, kadının son g&uuml;nlerini huzur ve mutluluk i&ccedil;inde, ailesiyle birlikte ge&ccedil;irmesinin yerinde olacağına karar verir. Lili, b&ouml;ylesine b&uuml;y&uuml;k bir haberi saklamanın b&uuml;y&uuml;k haksızlık olduğunu d&uuml;ş&uuml;nse de bu karara uyup, ninesiyle -ona hi&ccedil; haber vermeden- vedalaşmak i&ccedil;in ailesiyle birlikte &Ccedil;in&rsquo;e gider. Y&ouml;netmen Lulu Wang&rsquo;in kendi hayat hikayesinden yola &ccedil;ıkarak yazdığı ELVEDA, pek &ccedil;ok adaylığın yanında başrol&uuml; Awkwafina&#39;ya En İyi Kadın Oyuncu dalında Altın K&uuml;re kazandırdı.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"394\" scrolling=\"no\" src=\"https://www.youtube.com/embed/RofpAjqwMa8\" width=\"700\"></iframe></p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">4</span></span></p>\r\n\r\n<p><img alt=\"Bu hafta vizyonda hangi filmler var?\" src=\"https://www.merlininkazani.com/images/games/8748/galeri_489.jpg\" style=\"height:291px; width:700px\" /></p>\r\n\r\n<h2>The Young Cannibals</h2>\r\n\r\n<p>Bir grup arkadaş, g&ouml;l kenarında keyifli bir hafta sonu ge&ccedil;irmeyi planladıkları tenha bir kamp alanına doğru yola &ccedil;ıkarlar. Planlanmadıkları şey ise insan etinden yapılan hamburgerleri yemektir. Bu yaptıkları, onları birer birer avlayacak doğa &uuml;st&uuml; acımasız bir yaratığı geri getirir. Vahşi doğada kalan bu gen&ccedil;ler, ormandan &ccedil;ıkmak i&ccedil;in hayatlarının savaşını vermek zorundadırlar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"394\" scrolling=\"no\" src=\"https://www.youtube.com/embed/i8AjG4uXgJY\" width=\"700\"></iframe></p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">5</span></span></p>\r\n\r\n<p><img alt=\"Bu hafta vizyonda hangi filmler var?\" src=\"https://www.merlininkazani.com/images/games/8748/galeri_490.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h2>Feride</h2>\r\n\r\n<p>Yer altındaki dikim at&ouml;lyesinde terzilik yapan ve &ccedil;akma kahraman kıyafetleri diken Feride&rsquo;nin hayallerindeki kahramanlar bambaşkadır. Bir g&uuml;n, emek ve sevgi hırsızı patronu &Ccedil;etin&rsquo;e baş kaldırır ve iddiaya girerler. Yer altından &ccedil;ıkan tasarımcı Feride&rsquo;nin moda g&ouml;kdelenlerine kafa tutan neşeli yolculuğu başlar. G&uuml;c&uuml;n&uuml; sevgiden alan kahramanların hikayesidir bu.</p>\r\n', '', '2022-12-21 23:34:29'),
(7, 'Galeri/Sinema', '../Pic/galeri_71.jpg', 'Oscar ödülleri sahiplerini buldu', '<p>&nbsp;</p>\r\n\r\n<p>91. Oscar &ouml;d&uuml;lleri verildi</p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_71.jpg\" style=\"height:449px; width:800px\" /></p>\r\n\r\n<p>Bu yıl 91&#39;inci kez d&uuml;zenlenen&nbsp;<strong>Akademi &Ouml;d&uuml;lleri</strong>&nbsp;sahiplerini buldu. Green Book, Roma ve Black Panther, 3 Oscar alırken,&nbsp;<strong>Bohemian Rhapsody</strong>&nbsp;ise 4 Oscar ile bu yıl Oscar &ouml;d&uuml;llerini toplayan film oldu.</p>\r\n\r\n<h2>2018 En iyi film Oscar&#39;ını kim kazandı</h2>\r\n\r\n<p>Merakla beklenen&nbsp;<strong>Oscar&nbsp;</strong>&ouml;d&uuml;lleri geride bıraktığımız gece sahiplerini buldu. &Ouml;zellikle Black Panther filminin Oscar&#39;a aday olması olduk&ccedil;a tartışılmıştı. Oscar&#39;ı kimin sunacağı konusunda da yoğun tartışmalar yaşanmıştı. Vice filmi Oscar &ouml;d&uuml;llerinde &ouml;ne &ccedil;ıkan film olmuştu. Amy Adams, Chrisitian BAle ve Steve CArell gibi oyuncuların kadrosunda yer aldığı ve toplamda 8 kategoride aday g&ouml;sterilen Vice sadece En iyi Makyaj ve Sa&ccedil; tasarımı kategorisinde &ouml;d&uuml;l aldı. Bradley Cooper&#39;ın y&ouml;netmenilini yaptığı kadrosunda, Bradley cooper ve Lady Gaga&#39;nın yer aldığı m&uuml;zikal drama&nbsp; A Star is Born, 7 dalda aday olmuştu. A star is Born ise geceden &ouml;d&uuml;l almadan ayrılan filmler arasında yer aldı. En iyi film ve en iyi erkek oyuncu dahil 5 dalda Oscar&#39;a aday oldu. 4 dalda Oscar kazandı. Mr. Robot ve Until Dawn&#39;dan tanıdığımız<strong>&nbsp;Rami Malek</strong>, Bohemian Rhapsody filmindeki<strong>&nbsp;Freddie Mercury</strong>&nbsp;rol ile en iyi Erkek oyuncu &ouml;d&uuml;l&uuml;n&uuml; kazandı. Green Book en iyi film Oscar&#39;ını kazandı.&nbsp;</p>\r\n\r\n<h2 style=\"font-style:italic\"><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">1</span></span></h2>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_51.jpg\" style=\"height:404px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>EN İYİ ERKEK OYUNCU</h2>\r\n\r\n<p>Rami Malek (Bohemian Rhapsody)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">2</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_52.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ FİLM ŞARKISI &Ouml;D&Uuml;L&Uuml;</h2>\r\n\r\n<p>A Star Is Born-Lady Gaga</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS, cursive\"><span style=\"font-size:72px\">3</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_53.jpg\" style=\"height:350px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ FİLM M&Uuml;ZİĞİ</h2>\r\n\r\n<p>Black Panther</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">4</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_54.jpg\" style=\"height:933px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>EN İYİ UYARLAMA SENARYO</h2>\r\n\r\n<p>BlacKkKlansman</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS, cursive\"><span style=\"font-size:72px\">5</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_55.jpg\" /></p>\r\n\r\n<h2>EN İYİ ORİJİNAL SENARYO</h2>\r\n\r\n<p>Green Book</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS, cursive\"><span style=\"font-size:72px\">6</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_56.jpg\" /></p>\r\n\r\n<h2>EN İYİ KISA FİLM</h2>\r\n\r\n<p>Skin</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">7</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_57.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ G&Ouml;RSEL EFEKT</h2>\r\n\r\n<p>First Man</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS, cursive\"><span style=\"font-size:72px\">8</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_58.jpg\" /></p>\r\n\r\n<h2>EN İYİ KISA ANİMASYON FİLM</h2>\r\n\r\n<p>Bao</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS, cursive\"><span style=\"font-size:72px\">9</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_59.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ ANİMASYON FİLM</h2>\r\n\r\n<p>Spider-Man: Into the Spider-Verse</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">10</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_60.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ YARDIMCI ERKEK OYUNCU</h2>\r\n\r\n<p>&nbsp;Mahershala Ali, Green Book</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">11</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_61.jpg\" style=\"height:398px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ KURGU</h2>\r\n\r\n<p>Bohemian Rhapsody</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">12</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_62.jpg\" style=\"height:394px; width:700px\" /></p>\r\n\r\n<h2>YABANCI DİLDE EN İYİ FİLM</h2>\r\n\r\n<p>Roma</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">13</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_63.jpg\" style=\"height:368px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ SES MİKSAJI</h2>\r\n\r\n<p>&nbsp;Bohemian Rhapsody</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">14</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_64.jpg\" style=\"height:397px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ SES KURGUSU</h2>\r\n\r\n<p>Bohemian Rhapsody</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">15</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_65.jpg\" style=\"height:392px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ SİNEMATOGRAFİ (G&Ouml;R&Uuml;NT&Uuml; Y&Ouml;NETMENLİĞİ)<br />\r\nRoma</h2>\r\n\r\n<h2><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">16</span></span></h2>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_66.jpg\" /></p>\r\n\r\n<h2>EN İYİ BELGESEL</h2>\r\n\r\n<p>Free Solo</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">17</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_67.jpg\" /></p>\r\n\r\n<h2>EN İYİ PROD&Uuml;KSİYON TASARIMI</h2>\r\n\r\n<p>Black Panther</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">18</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_68.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ YARDIMCI KADIN OYUNCU</h2>\r\n\r\n<p>Regina King, If Beale Street Could Talk</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">19</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_69.jpg\" /></p>\r\n\r\n<h2>EN İYİ SA&Ccedil; VE MAKYAJ</h2>\r\n\r\n<p>Vice</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS, cursive\"><span style=\"font-size:72px\">20</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_70.jpg\" style=\"height:425px; width:700px\" /></p>\r\n\r\n<h2>EN İYİ KOST&Uuml;M TASARIMI</h2>\r\n\r\n<p>&nbsp;Black Panther</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS, cursive\"><span style=\"font-size:72px\">21</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_72.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>EN İYİ FİLM</h2>\r\n\r\n<p>Green Book</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">22</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_73.jpg\" /></p>\r\n\r\n<h2>En İyi Y&ouml;netmen</h2>\r\n\r\n<p>Alfanso Cuaron (Roma)</p>\r\n\r\n<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:72px\">23</span></span></p>\r\n\r\n<p><img alt=\"Oscar ödülleri sahiplerini buldu\" src=\"https://www.merlininkazani.com/images/games/9955/galeri_74.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>En İyi Kadın Oyuncu</h2>\r\n\r\n<p>Olivia Colman (The Favourite)&nbsp;</p>\r\n', 'Can Ahmet Demir', '2022-12-21 23:41:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `games`
--

CREATE TABLE `games` (
  `Games_ID` int(11) NOT NULL,
  `Games_img` varchar(1000) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `Title` varchar(10000) NOT NULL,
  `Contents` mediumtext NOT NULL,
  `Author` varchar(300) NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `games`
--

INSERT INTO `games` (`Games_ID`, `Games_img`, `Type`, `Title`, `Contents`, `Author`, `Time`) VALUES
(2, 'Pictures/call-of-duty-modern-warfare-2-ucretsiz-5.jpg', 'Oyun', 'Call of Duty: Modern Warfare 2, kısa süreliğine ücretsiz oldu!', '<p>Geçtiğimiz aylarda piyasaya sürülen ve çıktığı günden itibaren <a href=\"https://shiftdelete.net/etiket/steam\">Steam</a>‘in en çok oynanan oyunlar listesinde zirveyi zorlayan Call of Duty: Modern Warfare 2, kısa süreliğine ücretsiz oldu. Bu sayede oyuncular, herhangi bir ücret ödemeden deneyimleyebilecekler.</p><h2><strong>Call of Duty: Modern Warfare 2, 19 Aralık’a kadar ücretsiz!</strong></h2><p>FPS oyunu denince akla gelen isimlerden COD: MW 2, 2022 yılı sürümüyle oyuncular tarafından oldukça ilgi gördü. Öyle ki oyun, çıkışından sonra 10 gün içerisinde dünya çapında 1 milyar dolarlık kazançla seri için yeni bir rekor kırdı.</p><p><img src=\"https://shiftdelete.net/wp-content/uploads/2022/12/call-of-duty-modern-warfare-2-ucretsiz-1.jpg\" alt=\"Call of Duty: Modern Warfare 2\" srcset=\"https://shiftdelete.net/wp-content/uploads/2022/12/call-of-duty-modern-warfare-2-ucretsiz-1.jpg 1280w, https://shiftdelete.net/wp-content/uploads/2022/12/call-of-duty-modern-warfare-2-ucretsiz-1-150x84.jpg 150w, https://shiftdelete.net/wp-content/uploads/2022/12/call-of-duty-modern-warfare-2-ucretsiz-1-768x432.jpg 768w, https://shiftdelete.net/wp-content/uploads/2022/12/call-of-duty-modern-warfare-2-ucretsiz-1-640x360.jpg 640w, https://shiftdelete.net/wp-content/uploads/2022/12/call-of-duty-modern-warfare-2-ucretsiz-1-320x180.jpg 320w\" sizes=\"100vw\" width=\"1280\"></p><p>Call of Duty’nin resmi internet sitesinde yayınlanan blog yazısına göre Call of Duty: Modern Warfare 2, 15 Aralık saat 21.00 itibariyle ücretsiz olarak indirilebilir. 19 Aralık’a kadar geçerli kampanya süresince oyuncular, yalnızca çoklu oyuncu modunu oynayabilirler.</p><p>&nbsp;</p><p><a href=\"https://shiftdelete.net/etiket/oyun\">Oyun</a>cular; ücretsiz oynama seçeneği ile yalnızca <strong>Shipment, Farm 18 ve El Asilo</strong> haritalarına erişebilirler. Aynı zamanda bunlara uygun olan <strong>Team Deathmatch, Kill Confirmed, Domination ve Hardpoint</strong> modlarını da oynayabilirler.</p><p>Call of Duty: Modern Warfare 2, şu anda PC, Xbox ve PlayStation konsollar için indirebilir. PC kullanıcıları, hem Steam hem de Battle.net dijital mağazaları üzerinden ulaşabilirler. Oyunu ücretsiz olarak indirebileceğiniz tüm platformlar ise şu şekilde;</p><ul><li><a href=\"https://store.steampowered.com/app/1938090/Call_of_Duty_Modern_Warfare_II/\">COD: MW 2 Steam sayfası</a></li><li><a href=\"https://eu.shop.battle.net/en-us/product/call-of-duty-modern-warfare-ii\">COD: MW 2 Battle.net sayfası</a></li><li><a href=\"https://store.playstation.com/tr-tr/product/EP0002-PPSA07950_00-CODMW2CROSSGEN01/\">COD: MW 2 PlayStation sayfası</a></li><li><a href=\"https://www.xbox.com/tr-TR/games/store/call-of-duty-modern-warfare-ii-cross-gen/9NCL5M3V0RSH\">COD: MW 2 Xbox sayfası</a></li></ul><h3><strong>COD: MW 2 sistem gereksinimleri</strong></h3><ul><li><strong>İşletim sistemi:</strong> Windows 7 64-bit veya daha üstü</li><li><strong>İşlemci:</strong> Intel Core i3-3225 @ 3.30GHz veya daha yükseği</li><li><strong>Ekran kartı: </strong>NVIDIA GeForce GTX 660 2GB veya AMD Radeon HD 7850 2GB</li><li><strong>RAM:</strong> 8 GB</li><li><strong>DirectX:</strong> Sürüm 11</li><li><strong>Ağ:</strong> Genişbant internet bağlantısını</li><li><strong>Ses kartı: </strong>DirectX 11 Compatible</li></ul><p>Peki sizler kısa süreliğine ücretsiz olan COD: MW 2 hakkında neler düşünüyorsunuz? Görüşlerinizi yorumlar kısmından bizlerle paylaşmayı unutmayın!<br>&nbsp;</p>', 'Emir Yasin Bolat', '2022-12-18 17:17:00'),
(3, 'Pictures/Death-Stranding.webp', 'Oyun', 'Death Stranding film oluyor! Ne zaman çıkacak?', '<p>&Uuml;nl&uuml; oyun tasarımcısı Hideo Kojima&rsquo;nın Death Stranding&rsquo;i film olarak beyaz perdeye geliyor. Ge&ccedil;tiğimiz g&uuml;nlerde Death Stranding 2 i&ccedil;in ilk fragmanı yayınlayan Kojima Productions, şimdi de <strong>Death Stranding filmi</strong> i&ccedil;in kolları sıvadı.</p>\r\n\r\n<h2><strong>Death Stranding filmi &ccedil;ıkış tarihi ve oyuncuları</strong></h2>\r\n\r\n<p><strong>Kojima Productions</strong> tarafından yapılan <a href=\"https://www.theverge.com/2022/12/15/23511256/death-stranding-movie-hideo-kojima\">a&ccedil;ıklama</a> sonrasında, Death Stranding evreninin beyaz perdeye taşınacağını &ouml;ğrendik. Hen&uuml;z erken aşamada olan proje, <strong>Barbarian&rsquo;ın </strong>da yapımcısı olan Alex Lebovici liderliğindeki Hammerstone Studios tarafından &ccedil;ekilecek. Kojima Productions&rsquo;ın da ortak yapımcı olacağı belirtildi.</p>\r\n\r\n<p>Şirketten gelen basın a&ccedil;ıklamasında filmin konusu şimdilik gizli tutuldu. Fakat Kojima, Death Stranding evrenine yeni unsurlar ve karakterler ekleyeceğinin m&uuml;jdesini verdi. <a href=\"https://shiftdelete.net/etiket/oyun\">Oyun</a>un başrol&uuml; olan <strong>Norman Reedus</strong> ve ikinci yapımda Fragile olarak boy g&ouml;sterecek <strong>L&eacute;a Seydoux&rsquo;un</strong> filmde yer alması muhtemel.<br />\r\nJapon geliştirici yaptığı a&ccedil;ıklamada, &ldquo;Hammerstone Studios ile olan bu yeni ortaklık beni daha fazla heyecanlandıramaz. Bu, seri i&ccedil;in &ccedil;ok &ouml;nemli bir an ve Death Stranding&rsquo;i beyaz perdeye taşımak i&ccedil;in iş birliği yapmayı ger&ccedil;ekten d&ouml;rt g&ouml;zle bekliyorum&rdquo; dedi.</p>\r\n\r\n<p><strong>Death Stranding vizyon tarihi</strong> hakkında hen&uuml;z bir bilgi bulunmuyor. Ancak yapımcı şirket Hammerstone Studios, geliştirme &ccedil;alışmalarını olduk&ccedil;a hızlı şekilde tamamlayacaklarını s&ouml;yledi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shiftdelete.net/wp-content/uploads/2022/05/death-stranding-2-geliyor.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>Oyun d&uuml;nyasındaki b&uuml;y&uuml;k b&uuml;t&ccedil;eli yapımların sinemaya uyarlanması son zamanlarda olduk&ccedil;a pop&uuml;lerleşti. &Ouml;rneğin ge&ccedil;tiğimiz g&uuml;n ortaya &ccedil;ıkan bir haberde, <a href=\"https://shiftdelete.net/god-of-war-inceleme-ps4\"><strong>God of War</strong></a><strong>&lsquo;ın Amazon Prime Video</strong> dizisi olacağını &ouml;ğrendik.</p>\r\n\r\n<p>Peki siz Death Stranding film projesi hakkında ne d&uuml;ş&uuml;n&uuml;yorsunuz? G&ouml;r&uuml;şlerinizi Yorumlar kısmından bizlerle paylaşmayı unutmayın.</p>\r\n', 'Ömer Dursun', '2022-12-24 17:34:12'),
(5, 'Pictures/epic-games-yeni-yila-ozel-verecegi-oyunlar-2.jpg', 'Oyun', 'Epic Games’in yılbaşına özel vereceği tüm oyunlar sızdırıldı!', '<p>Epic Games Store, uzun zamandır kullanıcılarına &uuml;cretsiz olarak oyun veriyor. &Ouml;yle ki bunu her hafta d&uuml;zenli şekilde yaparak oyuncuların y&uuml;z&uuml;n&uuml; g&uuml;ld&uuml;ren platform, yeni yıla &ouml;zel 15 g&uuml;n boyunca hediyeler vereceğini a&ccedil;ıklamıştı. Şimdi ise Epic&rsquo;in yıl başına kadar vereceği edilen t&uuml;m oyunlar sızdırıldı.</p>\r\n\r\n<h2>Epic Games yeni yıla &ouml;zel AAA oyun veriyor!</h2>\r\n\r\n<p>Epic Games, yeni yıla &ouml;zel olarak şu ana kadar 160 TL değerindeki&nbsp;<a href=\"https://store.epicgames.com/en-US/p/bloons-td-6-bf95a0\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">Bloons TD 6</a>, 39 TL değerindeki&nbsp;<a href=\"https://store.epicgames.com/en-US/p/horizon-chase-turbo\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">Horizon Chase Turbo</a>&nbsp;ve platformun ge&ccedil;tiğimiz aylarda haftalık planına dahil ettiği Wolfenstein: The New Order oyunlarını verdi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shiftdelete.net/wp-content/uploads/2022/12/epic-games-yeni-yila-ozel-verecegi-oyunlar-1.webp\" style=\"float:left; height:563px; margin:2px; width:1000px\" />Should You Play It? kanalı, Epic Games&rsquo;in yeni yıla &ouml;zel vereceği t&uuml;m oyunları ortaya &ccedil;ıkardı. Listede en dikkat &ccedil;eken ise Electronic Arts tarafından geliştirilen ve ge&ccedil;tiğimiz yıl piyasaya s&uuml;r&uuml;len Mass Effect Legendary Edition oldu. S&ouml;z konusu yapım, oyuncu ve eleştirmenlerden tam not aldı. Sızdırılan t&uuml;m oyunlar ise şu şekilde;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Tarih</strong></td>\r\n			<td><strong><a href=\"https://shiftdelete.net/etiket/oyun\" target=\"_blank\" title=\"Oyun\">Oyun</a></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>15 Aralık</td>\r\n			<td>Bloons TD 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16 Aralık</td>\r\n			<td>Horizon Chase Turbo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17 Aralık</td>\r\n			<td>Costume Quest 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18 Aralık</td>\r\n			<td>Sable</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19 Aralık</td>\r\n			<td>Them&rsquo;s Fightin&rsquo; Herds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20 Aralık</td>\r\n			<td>Wolfenstein: The New Order</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21 Aralık</td>\r\n			<td>Remnants of Naezith</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22 Aralık</td>\r\n			<td>Planet Coaster</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23 Aralık</td>\r\n			<td>Hearts of Iron 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24 Aralık</td>\r\n			<td>The Falcooner</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25 Aralık</td>\r\n			<td>Hell Let Loose</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26 Aralık</td>\r\n			<td>Fran Bow</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27 Aralık</td>\r\n			<td>Kingdom Two Crowns</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28 Aralık</td>\r\n			<td>Devil Daggers</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29 Aralık</td>\r\n			<td>\r\n			<p>Mass Effect Legendary Edition</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ortaya &ccedil;ıkan listede, Wolfenstein: The New Order dahil olmak &uuml;zere, 20 Aralık&rsquo;a kadar verilen t&uuml;m oyunlar doğru &ccedil;ıktı ve &uuml;cretsiz olarak verildi. Listede baş g&ouml;steren Mass Effect Legendary Edition bir yana, strateji temalı Hearts of Iron 4 de pop&uuml;ler yapımlar arasında.</p>\r\n\r\n<p>Epic Games&rsquo;in, &ouml;nceki senelerde hediye ettiği oyunlara bakacak olursak, AAA yapımların son g&uuml;nlere yaklaşırken verildiğini g&ouml;rebiliriz. Bug&uuml;n sızdırılan listede de aynı durum s&ouml;z konusu. Bunların yanı sıra, yukarıda yer alan t&uuml;m oyunların birer iddia olduğunu belirtmekte fayda var.</p>\r\n\r\n<p>Peki sizler Epic Games&rsquo;in vereceği iddia edilen oyunlar hakkında neler d&uuml;ş&uuml;n&uuml;yorsunuz? G&ouml;r&uuml;şlerinizi yorumlar kısmından bizlerle paylaşmayı unutmayın!</p>\r\n', 'Emir Yasin Bolat', '2022-12-21 23:16:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mainpagelist`
--

CREATE TABLE `mainpagelist` (
  `mainpagelist_ID` int(11) NOT NULL,
  `Games_ID` int(11) NOT NULL,
  `Sicence_Tech_Id` int(11) NOT NULL,
  `Fun_Id` int(11) NOT NULL,
  `gallery_Id` int(11) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `type` varchar(300) NOT NULL,
  `title` varchar(10000) NOT NULL,
  `author` varchar(300) NOT NULL,
  `time` datetime NOT NULL,
  `click_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `mainpagelist`
--

INSERT INTO `mainpagelist` (`mainpagelist_ID`, `Games_ID`, `Sicence_Tech_Id`, `Fun_Id`, `gallery_Id`, `img`, `type`, `title`, `author`, `time`, `click_count`) VALUES
(2, 2, 0, 0, 0, 'Pictures/call-of-duty-modern-warfare-2-ucretsiz-5.jpg', 'Oyun', 'Call of Duty: Modern Warfare 2, kısa süreliğine ücretsiz oldu!', 'Emir Yasin Bolat', '2022-12-18 17:17:00', 16),
(3, 3, 0, 0, 0, 'Pictures/Death-Stranding.webp', 'Oyun', 'Death Stranding film oluyor! Ne zaman çıkacak?', 'Ömer Dursun', '2022-12-18 17:19:13', 4),
(6, 0, 1, 0, 0, 'Pictures/2-kara-delik-birlesti-1.jpg', 'Bilim/Teknoloji', 'Astrofizikçileri çıldırtan olay! İki kara delik birleşti', 'Mert Can Aka', '2022-12-18 17:30:05', 8),
(7, 0, 2, 0, 0, 'Pictures/perseverance-mars-ta-gun-batimini-cekti1.webp', 'Bilim/Teknoloji', 'Mars’ın geçmişi belli oluyor: Perseverance gezgininden bir ilk!', 'Ramazan Erdinç', '2022-12-18 17:31:43', 19),
(8, 0, 0, 0, 2, '../Pic/Ay-detayli-gorseller.jpg', 'Galeri/Bilim', 'NASA, Ay’ın yüksek çözünürlüklü fotoğraflarını paylaştı!', 'Gökberk Baycan', '2022-12-18 17:34:09', 1),
(9, 0, 0, 0, 3, '../Pic/bilim-insanlarindan-uzayda-yasam-ile-ilgili-yeni-kesif.jpg', 'Galeri/Bilim', 'Bilim insanlarından uzayda yaşam ile ilgili yeni keşif!', 'Yiğit Ali Demir', '2022-12-20 22:10:47', 0),
(10, 0, 0, 1, 0, 'Pictures/elon-musk-twitter-ceo-ayriliyor-1.webp', 'Eglence', 'Elon Musk, Twitter’a yeni CEO aramaya başladı!', 'Ömer Dursun', '2022-12-21 06:21:18', 1),
(11, 0, 0, 0, 4, '../Pic/swot.jpeg', 'Galeri/Bilim', 'NASA’dan dev proje: Su kaynaklarını uzaydan incelecek!', 'Ramazan Erdinç', '2022-12-21 21:19:30', 2),
(13, 5, 0, 0, 0, 'Pictures/epic-games-yeni-yila-ozel-verecegi-oyunlar-2.jpg', 'Oyun', 'Epic Games’in yılbaşına özel vereceği tüm oyunlar sızdırıldı!', 'Emir Yasin Bolat', '2022-12-21 23:06:13', 9),
(14, 0, 0, 0, 6, '../Pic/galeri_491.jpg', 'Galeri/Sinema', 'Bu hafta vizyonda hangi filmler var?', 'Can Ahmet Demir', '2022-12-21 23:30:44', 2),
(15, 0, 0, 0, 7, '../Pic/galeri_71.jpg', 'Galeri/Sinema', 'Oscar ödülleri sahiplerini buldu', 'Can Ahmet Demir', '2022-12-21 23:41:41', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sicence_tech`
--

CREATE TABLE `sicence_tech` (
  `Sicence_Tech_Id` int(11) NOT NULL,
  `sicence_img` varchar(1000) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `Title` varchar(10000) NOT NULL,
  `Contents` mediumtext NOT NULL,
  `Author` varchar(300) NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sicence_tech`
--

INSERT INTO `sicence_tech` (`Sicence_Tech_Id`, `sicence_img`, `Type`, `Title`, `Contents`, `Author`, `Time`) VALUES
(1, 'Pictures/2-kara-delik-birlesti-1.jpg', 'Bilim/Teknoloji', 'Astrofizikçileri çıldırtan olay! İki kara delik birleşti', '<p>İnsanoğlu on binlerce yıldır gökyüzünü izliyor. Fakat yalnızca son birkaç bin yıldır bunu bilim için yapıyor. Günümüzde her ne kadar teknoloji bir zamanlar hayal bile edilemeyecek seviyeye ulaşmış olsa da hala evreni anlama yetimiz oldukça düşük seviyede. Özellikle kara delikler hakkında ancak tutarlı tahminler yapabiliyoruz. Fakat bazı kozmik olaylar sayesinde yeni bilgilere ulaşabiliyoruz. Son olarak İki kara delik birleşti.</p><h2><strong>Bilim tarihine geçen olay: İki kara delik birleşti!</strong></h2><p>Kara delik çekim alanı her türlü maddesel oluşumun ve&nbsp;ışınımın&nbsp;kendisinden kaçmasına izin vermeyecek derecede güçlü olan, büyük kütleli bir gök cismi olarak nitelendiriliyor. Başka bir deyişle uzayda&nbsp;belirli nicelikteki maddenin bir noktaya toplanması ile meydana gelen bir nesnedir. Işığı yansıtmak yerine içine çektiği için de bu kara delik olarak adlandırılıyor.</p><p><img src=\"https://shiftdelete.net/wp-content/uploads/2022/12/2-kara-delik-birlesti-2.jpg\" alt=\"2 kara delik birleşti\" srcset=\"https://shiftdelete.net/wp-content/uploads/2022/12/2-kara-delik-birlesti-2.jpg 1280w, https://shiftdelete.net/wp-content/uploads/2022/12/2-kara-delik-birlesti-2-150x84.jpg 150w, https://shiftdelete.net/wp-content/uploads/2022/12/2-kara-delik-birlesti-2-768x432.jpg 768w, https://shiftdelete.net/wp-content/uploads/2022/12/2-kara-delik-birlesti-2-640x360.jpg 640w, https://shiftdelete.net/wp-content/uploads/2022/12/2-kara-delik-birlesti-2-320x180.jpg 320w\" sizes=\"100vw\" width=\"1280\"></p><p>Bu sebepten dolayı her ne kadar doğrudan gözlemlenemiyor olsa da çeşitli dalga boylarını kullanan özel teknolojiler sayesinde dolaylı gözlem yapılabiliyor. Hatta geçtiğimiz yıllarda eliptik gökada&nbsp;Messier 87’nin merkezinde Güneş’ten 7 milyar kat fazla kütleye sahip bir kara delik görüntülendi. Bu da bilim tarihi için bir ilk oldu.</p><p>Kara deliklerin çarpışması- birleşmesi aslında daha öncede yaşanan ve dolaylı olarak gözlemlenen bir durumdu. Fakat bu seferki kaydedilen kara delik birleşmesi eşi benzeri olmayan uzay-zaman dalgaları yaydı. Dolayısıyla morfolojisi ve patlama yapısı öncekilere göre oldukça farklı. Bu da astrofizikçilerin duruma bakış açısını değiştirmesine neden oldu. Konuyla ilgili yapılan açıklamaların bazıları şu şekilde:</p><p>Almanya’daki Jena Üniversitesi’nden astrofizikçi Rossella Gamba:</p><p>“<i>Morfolojisi ve patlama benzeri yapısı önceki gözlemlerden çok farklı</i>. <i>GW190521 başlangıçta birbirine neredeyse dairesel yörüngeler boyunca yaklaşan, hızla dönen iki ağır kara deliğin birleşmesi olarak analiz edildi, ancak onun özel durumu bizi başka olası yorumlar önermeye yöneltti.</i>“</p><p>Gökbilimci Alessandro Nagar:</p><p>“<i>Olayla ilişkili sinyalin şekli ve kısalığı iki kara delik arasında, spiral bir fazın yokluğunda meydana gelen ani bir birleşme olduğunu varsaymamıza yol açtı</i>.”</p><p>Gökbilimci Matteo Breschi:</p><p>“<i>Son teknoloji analitik yöntemler ve sayısal simülasyonların bir kombinasyonunu kullanarak kesin modeller geliştirerek, bu durumda oldukça eksantrik bir birleşmenin gözlemi daha önce öne sürülen diğer tüm hipotezlerden daha iyi açıkladığını bulduk</i>.”</p><p><a href=\"https://youtu.be/StO_RDscqXc\">VİDEOYA GİTMEK İÇİN TIKLAYINIZ…</a></p><p>Siz bu konu hakkında ne düşünüyorsunuz? Görüşlerinizi yorumlarda bizlerle paylaşmayı unutmayın!</p>', 'Mert Can Aka', '2022-12-18 17:30:05'),
(2, 'Pictures/Pictures/perseverance-mars-ta-gun-batimini-cekti1.webp', 'Bilim/Teknoloji', 'yeni başlık', '<p>Mars Keşif Programı kapsamında Kızıl Gezegen &uuml;zerindeki kaya ve tortu &ouml;rneklerini toplayıp eski mikroskobik yaşamın belirtilerini araştıracak olan <strong>Perseverance</strong>&nbsp;gezgini ve&nbsp;<strong>Ingenuity</strong>&nbsp;helikopteri, &ccedil;alışmalarını hızlandırdı.</p>\r\n\r\n<h3><em><strong>Perseverance gezgini, Mars toprağını incelenmesi i&ccedil;in D&uuml;nya&rsquo;ya getiriyor</strong></em></h3>\r\n\r\n<p>Uzun bir s&uuml;redir Mars&rsquo;ta g&ouml;rev yapan ve gezegen hakkında bilgi toplayan Perseverance gezgini, d&uuml;n bir ilki ger&ccedil;ekleştirdi. Gezgin, gezegenin y&uuml;zeyinden regolit adı verilen toprağı da D&uuml;nya&rsquo;ya getirilecekler arasına ekledi. Bu bulgularla beraber programın asıl amacı olan Mars&rsquo;ın bilinmeyen tarihinin g&uuml;n y&uuml;z&uuml;ne &ccedil;ıkması bekleniyor.</p>\r\n\r\n<p><img alt=\"Perseverance gezgini\" src=\"https://shiftdelete.net/wp-content/uploads/2022/12/Heyecanlandiran-video-Mars-ornekleri-Dunyaya-geliyor-1.jpg\" style=\"width:1280px\" /></p>\r\n\r\n<p>Perseverance gezgini, bir s&uuml;redir incelenmek &uuml;zere &ccedil;eşitli bulgular topluyor. Ancak bu g&uuml;ne kadar belli bazı b&ouml;lgelerdeki kaya par&ccedil;alarını inceledi ve bir kısmını da D&uuml;nya&rsquo;ya getirmek &uuml;zere yanına aldı. Son g&ouml;rev onun i&ccedil;in de bir ilk oldu. NASA&rsquo;nın Jet Tahrik Laboratuvarı&rsquo;ndan Iona Tirona, konuya ilişkin olarak şu ifadeleri kullandı.</p>\r\n\r\n<p><em>Regolit taneciklerinin boyutu, şekli ve kimyası hakkında &ouml;ğrendiğimiz her şey, gelecekteki g&ouml;revler i&ccedil;in daha iyi ara&ccedil;lar tasarlamamıza ve test etmemize yardımcı oluyor</em></p>\r\n\r\n<h3><strong>Peki bu bulgular D&uuml;nya&rsquo;ya nasıl geri gelecek?</strong></h3>\r\n\r\n<p>NASA, ge&ccedil;tiğimiz g&uuml;nlerde belirsizliğini koruyan bu konu i&ccedil;in video i&ccedil;erikli bir paylaşım ger&ccedil;ekleştirdi. Videoya g&ouml;re uzay ajansı, ge&ccedil;mişte belirtmiş olduğu&nbsp;<strong>geri d&ouml;n&uuml;ş uzay aracına</strong>&nbsp;g&uuml;venecek. Bu ara&ccedil;, Kızıl Gezegen&rsquo;e gidecek ve ardından da y&uuml;zeye &ccedil;ıkacak. Y&uuml;zeyde ise Mars &ouml;rnek d&ouml;n&uuml;ş&uuml;ne başlamak i&ccedil;in Perseverance ile bir araya gelecek.</p>\r\n\r\n<p>Y&uuml;zeyden elde edilen bulgular, uzay aracına y&uuml;klendikten sonra d&ouml;n&uuml;ş i&ccedil;in y&ouml;r&uuml;ngeye geri fırlatılacak. Bu g&ouml;revin başarılı olması, gezegende elde edilen keşiflerin incelenmesi i&ccedil;in son derece &ouml;nemli bir yere sahip. Ayrıca video, animasyon şeklinde karşımıza &ccedil;ıkıyor.</p>\r\n\r\n<p>Video, Mars gezegenine iniş ve &ouml;rnek t&uuml;plerinden, onları D&uuml;nya&rsquo;ya g&ouml;t&uuml;rmeye kadar detaylı şekilde yer alıyor. Ayrıca animasyona<strong>&nbsp;Avrupa Uzay Ajansı</strong>,&nbsp;<strong>Goddard Uzay U&ccedil;uş Merkezi</strong>&nbsp;ve&nbsp;<strong>Marshall Uzay U&ccedil;uş Merkezi</strong>&nbsp;katkı sağlıyor. Sizce gezgindeki bulgular bize Mars&rsquo;ın ge&ccedil;mişini a&ccedil;ıklayabilir mi?</p>\r\n', 'Ramazan Erdinç', '2022-12-27 09:31:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users_account`
--

CREATE TABLE `users_account` (
  `users_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users_account`
--

INSERT INTO `users_account` (`users_id`, `username`, `password`) VALUES
(1, 'can', '$2y$10$dU0C8WxXybM3.aoGevdObOm.3OSmHCvlnMm7E5UewnaOyVexHQKP6'),
(4, 'demir', '$2y$10$N7ODPYljzJLgWIX.f28l0eBRYqd1JWHmJaaw49ctut/96OklhsWSa'),
(5, 'crayzboy_gittigeldi', '$2y$10$GnGP9mbjm7XsXZfWGG1jrud02nREjq6WKisjdBtjCeuvo6FR9qjaG');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `accountinfo`
--
ALTER TABLE `accountinfo`
  ADD PRIMARY KEY (`account_Id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Tablo için indeksler `fun`
--
ALTER TABLE `fun`
  ADD PRIMARY KEY (`Fun_Id`);

--
-- Tablo için indeksler `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_Id`);

--
-- Tablo için indeksler `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`Games_ID`);

--
-- Tablo için indeksler `mainpagelist`
--
ALTER TABLE `mainpagelist`
  ADD PRIMARY KEY (`mainpagelist_ID`);

--
-- Tablo için indeksler `sicence_tech`
--
ALTER TABLE `sicence_tech`
  ADD PRIMARY KEY (`Sicence_Tech_Id`);

--
-- Tablo için indeksler `users_account`
--
ALTER TABLE `users_account`
  ADD PRIMARY KEY (`users_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `accountinfo`
--
ALTER TABLE `accountinfo`
  MODIFY `account_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `fun`
--
ALTER TABLE `fun`
  MODIFY `Fun_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `games`
--
ALTER TABLE `games`
  MODIFY `Games_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `mainpagelist`
--
ALTER TABLE `mainpagelist`
  MODIFY `mainpagelist_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `sicence_tech`
--
ALTER TABLE `sicence_tech`
  MODIFY `Sicence_Tech_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `users_account`
--
ALTER TABLE `users_account`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
