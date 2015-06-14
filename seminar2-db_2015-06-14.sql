-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 14, 2015 at 10:30 PM
-- Server version: 5.5.42
-- PHP Version: 5.4.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `seminar2`
--

-- --------------------------------------------------------

--
-- Table structure for table `akcije`
--

CREATE TABLE `akcije` (
  `id` int(11) NOT NULL,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(128) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akcije`
--

INSERT INTO `akcije` (`id`, `naslov`, `tekst`, `slika`, `datum`) VALUES
(1, 'Udruga “Sklonište dobrote” vas poziva na edukaciju o važnosti kastracije 02.05. u 18:00 h u Čakovcu!', 'Edukacija će se održati 02.05.2015. godine u 18:00 sati na adresi Dr. Ivana Novaka 38 u Čakovcu, Stari Hrast – 1. kat.\r\nObjasniti ćemo vam:\r\n– što je kastracija/sterilizacija\r\n– kako se provodi\r\n– zašto je bitna za VAŠE mačke\r\n– ZA / PROTIV kastracije\r\n– kako kastracija utječe na broj napuštenih mačaka\r\n– što je “Uhvati – Steriliziraj – Vrati” projekt\r\nUlaz na edukaciju je besplatan, no s obzirom kako je udruga potpuno neprofitna organizacija koja se financira isključivo donacijama građana, na ulazu će biti postavljena KASICA PRASICA i KUTIJA ZA DONACIJE gdje ćete moći ostaviti novčane donacije, ali isto tako i donacije hrane, pijeska, dekica, zdjelica, igračaka i svega što bi udruzi moglo koristiti.\r\nPozovite svoje prijatelje, rodbinu i obitelj jer cilj ove edukacije je građane upoznati sa jedinim humanim rješenjem u smanjenju broja napuštenih mačaka.\r\nZajedno možemo učiniti više za ulične mace!', 'slike/skloniste.jpg', '2015-04-10'),
(2, '14.02. – mačje Valentinovo :)', 'Za Valentinovo, 14.02. održali smo tombolu u gradu Čakovcu zajedno sa Azilom Prijatelji iz Čakovca za pse.  \r\nOgromno hvala volonterima Damiri i Matiji što su bili na štadnu! Skupljeno je sveukupno 1000 kn! ', 'slike/valentinovo.jpg', '2015-03-15'),
(3, 'Akcija u Bazi – 31.01.2015.', 'Evo dragi naši, konačno da sa vama podijelimo vijest kako je ova akcija bila jako uspješna :)\r\nHvala Ivanu iz caffe bara “Baza” koji nam je omogućio prostor za cjelodnevnu akciju, hvala volonterkama Damiri, Barbari, Anji i Karolini i volonteru Filipu na pomoći i HVALA najviše svima koji ste došli, donirali, popričali s nama, podružili se ♥ ♥ ♥\r\nSkupili smo OGROMNIH 1030,50 kn! Ostvarili smo daleko više od naših ciljeva = 51 kg suhe hrane, 37 kg mokre hrane u obliku konzervica, paštetica i vrećica i oko 25 kg pijeska (u litrama je drugačije, okvirno smo to preračunali), dvije zdjelice, jednu kutiju za pijesak i jedne poslastice :)\r\nHranu su već drugi dan Barbara i Filip razdjelili po privremenim domovima teta čuvalica i po hranilištima. Dio smo ostavili zalihu za projekt “Uhvati – Stetiliziraj – Vrati” :)\r\nHvala još jednom svima, nadamo se još većem odazivu na slijedećoj akciji :)\r\n♥ ♥ ♥ =^.^= mace su vam prezahvalne =^.^= ♥ ♥ ♥', 'slike/baza.jpg', '2015-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `aukcije`
--

CREATE TABLE `aukcije` (
  `id` int(11) NOT NULL,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aukcije`
--

INSERT INTO `aukcije` (`id`, `naslov`, `tekst`, `datum`) VALUES
(1, 'Pridružite se aukcijama!', 'Već dulje vrijeme na jedan vrlo za vas zanimljiv način prikupljamo donacije za pokrivanje veterinarskih troškova. Na facebook-u smo pokrenuli grupu AUKCIJE UDRUGE “SKLONIŠTE DOBROTE” gdje svakih nekoliko tjedana volonteri pripremaju KRUGOVE aukcije. O čemu se radi?\r\nVrlo je jednostavno. Svaki krug traje određeno vrijeme, a sve dok traje vi licitacijom možete osvojiti predmet. Kada krug završi, zadnja licitacija, bid koji je ujedno i najveća ponuda kupuje predmet.\r\nSvi predmeti donacije su dobrih građana kojima te stvari više nisu trebali ili su ih željeli pokloniti za mace. I vi možete donirati predmete za auckije! Ukoliko ste iz Čakovca ili Zagreba javite nam se na e-mail: udrugasklonistedobrote@gmail.com kako bi dogovorili preuzimanje donacije. Ukoliko ste dalje stvari možete poslati poštom na adresu: Otona Župančića 24, Čakovec 40 000. \r\nNakon što ste ponudili najveću cijenu, krug je završio i vi ste kupili predmet, svotu uplaćujete na žiro račun Udruge:\r\nErste banka, IBAN: HR0424020061100648383\r\nOpis plaćanja: AUKCIJE\r\nIme: Udruga Sklonište dobrote.\r\nNakon što je uplata vidljiva na računu dogovaramo se dalje oko preuzimanja predmeta.\r\nNadamo se da ćete nam se i vi pridružiti aukcijama, bilo kao kupci ili prodavači! Također ovim putem se zahvaljujemo svima koji su već sudjelovali i koji redovno prate i podržavaju naše auckije. ', '2015-08-18');

-- --------------------------------------------------------

--
-- Table structure for table `clanstvo`
--

CREATE TABLE `clanstvo` (
  `id` int(11) NOT NULL,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `datumobjave` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clanstvo`
--

INSERT INTO `clanstvo` (`id`, `naslov`, `tekst`, `datumobjave`) VALUES
(1, 'Postanite članom Udruge!', 'Dragi naši prijatelji, ukoliko želite pomoći i podržati rad naše Udruge možete to učiniti i na ovaj način!\r\n \r\nČlanom udruge postajete ispunjavanjem PRISTUPNICE koju vam šaljemo na e-mail adresu, plaćanjem godišnje članarine za redovne i pridružene članove u iznosu od 80,00 kn (oko 6,70 kn mjesečno), deponiranjem pristupnice kod Predsjednika Udruge i Odlukom o prijemu od strane Upravnog odbora.\r\n \r\nOdluku o prijemu Upravni odbor daje u roku od 10 dana nakon zaprimanja pristupnice.\r\n \r\nSve što morate je javiti se u inbox, na e-mail: udrugasklonistedobrote@gmail.com kako bi vam poslali pristupnicu, isprintati i ispuniti pristupnicu te je poslati poštom na adresu: Otona Župančića 24, 40 000 Čakovec ili je predati osobno ako je moguće.\r\n \r\nNakon učlanjenja dobivate člansku iskaznicu. Iskaznica nije sredstvo za zastupanje Udruge.', '2014-09-19'),
(2, 'Počasno članstvo', 'Dragi naši prijatelji, ukoliko želite pomoći i podržati rad naše Udruge možete to učiniti i na ovaj način!\r\nČlanom udruge postajete ispunjavanjem PRISTUPNICE koju vam šaljemo na e-mail adresu, plaćanjem godišnje članarine za redovne i pridružene članove u iznosu od 80,00 kn (oko 6,70 kn mjesečno), deponiranjem pristupnice kod Predsjednika Udruge i Odlukom o prijemu od strane Upravnog odbora.\r\nOdluku o prijemu Upravni odbor daje u roku od 10 dana nakon zaprimanja pristupnice. Sve što morate je javiti se u inbox, na e-mail: udrugasklonistedobrote@gmail.com kako bi vam poslali pristupnicu, isprintati i ispuniti pristupnicu te je poslati poštom na adresu: Otona Župančića 24, 40 000 Čakovec ili je predati osobno ako je moguće.\r\nNakon učlanjenja dobivate člansku iskaznicu. Iskaznica nije sredstvo za zastupanje Udruge.\r\nUvjeti:\r\n-osoba koja je punoljetna\r\n– osoba koja je svojim radom ili materijalnim doprinosom značajnije pridonijela ostvarenju ciljevima Udruge\r\n– osoba ne plaća članarinu i nema pravo glasa\r\n \r\n  Hvala Vam od srca, Udruga “Sklonište Dobrote”.', '2014-09-19'),
(3, 'Nominalno članstvo', 'Dragi naši prijatelji, ukoliko želite pomoći i podržati rad naše Udruge možete to učiniti i na ovaj način!\r\nČlanom udruge postajete ispunjavanjem PRISTUPNICE koju vam šaljemo na e-mail adresu, plaćanjem godišnje članarine za redovne i pridružene članove u iznosu od 80,00 kn (oko 6,70 kn mjesečno), deponiranjem pristupnice kod Predsjednika Udruge i Odlukom o prijemu od strane Upravnog odbora.\r\nOdluku o prijemu Upravni odbor daje u roku od 10 dana nakon zaprimanja pristupnice. Sve što morate je javiti se u inbox, na e-mail: udrugasklonistedobrote@gmail.com kako bi vam poslali pristupnicu, isprintati i ispuniti pristupnicu te je poslati poštom na adresu: Otona Župančića 24, 40 000 Čakovec ili je predati osobno ako je moguće.\r\nNakon učlanjenja dobivate člansku iskaznicu. Iskaznica nije sredstvo za zastupanje Udruge.\r\nUvjeti:\r\n– osoba nije punoljetna\r\n– ne plaća članarinu\r\n– potrebno pismeno dopuštenje roditelja odnosno skrbnika na pristupnici\r\n \r\nHvala Vam od srca, Udruga “Sklonište Dobrote”.', '2014-09-19'),
(4, 'Pridruženo članstvo', 'Dragi naši prijatelji, ukoliko želite pomoći i podržati rad naše Udruge možete to učiniti i na ovaj način!\r\nČlanom udruge postajete ispunjavanjem PRISTUPNICE koju vam šaljemo na e-mail adresu, plaćanjem godišnje članarine za redovne i pridružene članove u iznosu od 80,00 kn (oko 6,70 kn mjesečno), deponiranjem pristupnice kod Predsjednika Udruge i Odlukom o prijemu od strane Upravnog odbora.\r\nOdluku o prijemu Upravni odbor daje u roku od 10 dana nakon zaprimanja pristupnice.\r\nSve što morate je javiti se u inbox, na e-mail: udrugasklonistedobrote@gmail.com kako bi vam poslali pristupnicu, isprintati i ispuniti pristupnicu te je poslati poštom na adresu: Otona Župančića 24, 40 000 Čakovec ili je predati osobno ako je moguće.\r\nNakon učlanjenja dobivate člansku iskaznicu. Iskaznica nije sredstvo za zastupanje Udruge.\r\nUvjeti:\r\n– osoba koja je platila godišnju članarinu od 80,00 kn\r\n– osoba mora biti punoljetna\r\n-pridruženi članovi nemaju pravo glasa i ne mogu biti birani u tijela Udruge\r\n \r\nHvala Vam od srca, Udruga “Sklonište Dobrote”.', '2014-09-19'),
(5, 'Redovno članstvo', 'Dragi naši prijatelji, ukoliko želite pomoći i podržati rad naše Udruge možete to učiniti i na ovaj način!\r\nČlanom udruge postajete ispunjavanjem PRISTUPNICE koju vam šaljemo na e-mail adresu, plaćanjem godišnje članarine za redovne i pridružene članove u iznosu od 80,00 kn (oko 6,70 kn mjesečno), deponiranjem pristupnice kod Predsjednika Udruge i Odlukom o prijemu od strane Upravnog odbora.\r\nOdluku o prijemu Upravni odbor daje u roku od 10 dana nakon zaprimanja pristupnice.\r\nSve što morate je javiti se u inbox, na e-mail: udrugasklonistedobrote@gmail.com kako bi vam poslali pristupnicu, isprintati i ispuniti pristupnicu te je poslati poštom na adresu: Otona Župančića 24, 40 000 Čakovec ili je predati osobno ako je moguće.\r\nNakon učlanjenja dobivate člansku iskaznicu. Iskaznica nije sredstvo za zastupanje Udruge.\r\nUvjeti:\r\n– osoba koja u potpunosti prihvaća ciljeve Udruge i to potvrdi\r\n– osoba koja je platila godišnju članarinu od 80,00 kn\r\n– osoba koja aktivno sudjeluje i podržava rad Udruge\r\n– osoba koja je punoljetna\r\n– osoba koja je odradila minimalno 30 h volonterskog rada mjesečno tijekom cijele godine\r\n-redovni članovi imaju pravo glasa i mogu biti birani u tijela Udruge\r\n-Upravni odbor ima pravo odbiti zahtjev za redovnim članstvom\r\n-osoba kojoj je odbijen zahtjev za primitak u redovno članstvo ima pravo podnijeti žalbu Skupštini.\r\n \r\nHvala Vam od srca, Udruga “Sklonište Dobrote”.', '2014-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `dogadaji`
--

CREATE TABLE `dogadaji` (
  `id` int(11) NOT NULL,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(128) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dogadaji`
--

INSERT INTO `dogadaji` (`id`, `naslov`, `tekst`, `slika`, `datum`) VALUES
(1, 'Zigy – izbačen na hranilište, sada traži dom!', 'Prolazila je jedna dobra teta i nije okrenula glavu na plač jednog malenog mačeta koje je bespomoćno virilo iz kućice postavljene za mace na hranilištu. Teta je pohitala nazvati nas i u dućan kupiti papicu. Ubrzo smo pokupili miceka i privremeno je bio stacioniran u transporteru kod naše volonterke.\r\n \r\nKako nas je još uvijek strah i panleukopenije i kako volonterka još ima i hrpu drugih mica na skrbi brzo smo tražili neko bolje rješenje za ovog malca i srećom pronašli ga <3 Hvala od srca našoj novoj teti čuvalici Danijeli, koja je već sa ceste spasila mnoge mačiće, a između ostalog i Ollia, Otta i Oliviu te njihovu seku koju je i udomila.\r\n \r\nZigy je mače staro oko 5 tjedana, teži 400 grama, očišćen je prvi put protiv crijevnih parazita i okupan <3  Malac jede sam, obavlja nuždu u pijesak i jako je umiljat kao što možete vidjeti na slikicama :)\r\n \r\nUdomljava se isključivo unutra kao kućna maca, a veterinarska skrb i kastracija su obavezni!\r\nSve uvjete udomljavanja pročitajte ovdje.\r\n \r\nKontakt: 095 / 614 – 5976, udrugasklonistedobrote@gmail.com ili inbox udruge.\r\n \r\nUkoliko nam možete pomoći sa junior hranom, pijeskom/peletima, banminth pastom ili ampulama za mačiće molimo vas javite nam se u inbox.\r\n \r\nTakođer sa svim tim nam možete pomoći tako da postanete kum/a ili anđeo. ', 'slike/zigi.jpg', '2015-06-10'),
(2, 'Srećko nam je udomljen! Olivia ostaje kod svojih privremenih udomitelja – zauvijek :)', 'Prošli tjedan, taman taj dan kad je Srećko trebao opet promjeniti svoju tetu čuvalicu, dobili smo upit za njegovo udomljenje. Zadnja teta čuvalica zapakirala je Srećka i otišla provjeriti kakvi su uvjeti te hoće li to biti njegov zauvijek dom!\r\nSrećko je inače na prvu plašljiv mačić, ali kad je stigao kod gospodina, on se ponašao kao da je tamo oduvijek, istraživao, hodao okolo i naokolo i uopće nije pokazivao ni trunkicu straha.\r\nSrećko\r\nSrećko\r\nI tako nam je Srećko konačno udomljen, konačno je dobio svoje zauvijek krilo i svoj dom kojeg dijeli s još jednim micekom :)\r\n \r\nA draga naša Olivia dobila je poziv za zauvijek dom, sve smo dogovarali, ali tad su njeni privremeni udomitelji shvatili da se neće moći odvojiti od Olivie i ona ostaje kod njih zauvijek <3 znamo da će joj biti i više nego odlično :)', 'slike/srecko.jpg', '2015-04-20'),
(3, 'Pumbin napredak 2 :)', 'Naš Pumba nije imao novu žrtvu napada od zadnji put :)\r\nVoli se maziti, a zaigran je i lud za štapovima i lopticama. Obožava istraživati novi prostor i zapravo je jaaako znatiželjan. Pustili smo ga da istražuje dvije nove prostorije u kojima borave druge mace, za vrijeme kada su one išle prošetati dvorištem. I Pumbu jako zanima dvorište pa će nam korak 3 biti šetnja, držite nam fige.\r\nAko Pumba ovako nastavi, uskoro će moći u potragu za novim domom!', 'slike/pumba.jpg', '2015-05-23'),
(4, 'Fleky – nova maca na liječenju, nađena u lošem stanju!', 'Fleky je nađena prije par dana u izrazito lošem stanju – užasno mršava, jadna, šugava, sva u proljevu, ali predraga i puna zahvalnosti pa čak i za malo maženja.\r\n \r\n11245787_459611257549781_2472677790009988581_n\r\n\r\nNalaznica ju je bez imalo razmišljanja strpala u auto i pravac veterinaru. Dobila je ampulu protiv buha, nekoliko injekcija, dijagnosticiran joj je proljev i mačja gripa te je otpuštena doma uz napomenu da sutra mora opet na terapiju.\r\nKako je nalaznica iz Austrije u koju se vraćala za par sati, javila se nama za pomoć. Srećom je naša teta čuvalica Matilda prihvatila Fleky kod sebe na skrb na tjedan dana, a tad odlazi na put.\r\nFleky je bila toliko zahvalna Matildi na toj zdjelici hrane, na tom milom tonu kojeg vjerojatno dugo nije čula :(\r\nSlijedeći dan Fleky je stigla kod naših veterinara i odmah smo krenuli u pretrage. Mačka od 2-3 godine ima samo 1,7 kg, a vidi joj se svako rebro :(\r\nKrvna slika joj je katastrofa, ni jedan jedini parametar nije bio kako treba – leukociti visoku, hematokrit ispod granice – maca je u teškoj infekciji, anemična i dehidrirana.\r\nIma polipe u ustima i iz tog razloga jako teško i sporo jede, ali hvala bogu JEDE.\r\nU stacionaru je na infuzijama, dobiva terapiju, gastro hranu i još ćemo je testirati na fiv/felv, te napraviti biokemiju.\r\nTo će nas sve jako puno koštati te vas iz tog razloga molimo da nam opet pomognete u plaćanju njenih troškova.', 'slike/fleki.jpg', '2015-05-18'),
(5, 'Debljina kod mačaka', 'Debljina je sve češći problem u mačaka koje vlasnici rijetko doživljavaju kao bolest iako bi trebali. Pretilost je svako povećanje od 15% od idealne težine te pogađa čak više od 35% populacije mačaka.\r\n \r\nPretilost nije samo “problem izgleda” već je uzrok mnogih bolesti kao što su:\r\n– dijabetes (šećerna bolest) – 4 puta veći rizik kod pretilih 11349958_676134282491413_576916279_nmačaka,\r\n– bolesti koštanog sustava i zglobova – 3 puta veći rizik kod pretilih mačaka,\r\n– bolesti srca i dišnog sustava,\r\n– povećani rizik kod operacija odnosno anestezije,\r\n– povećana mogućnost pojave mokraćnih kamenaca,\r\n– jetrene bolesti (tzv. “masna jetra”) i mnoge druge.\r\nSalo nije samo dodatna tjelesna težina već ono proizvodi brojne hormone i ostale tvari koje ulaze u krvotok i utječu na čitav organizam. Životinja koja ima prekomjernu tjelesnu težinu je u stalnom stanju upale te je kao takva podložnija raznim bolestima. Pretile životinje žive u prosjeku 10-15 % kraće nego životinje normalne tjelesne težine što bi za životinju koja bi živjela 14 godina značilo gotovo 2 godine. Želite li svojoj mački uskratiti 2 godine života? Sigurno smo da ne.\r\nPoznato je da su sterilizirane/kastrirane mačke sklonije debljanju jer sterilizacija usporava metabolizam te potiče apetit. No ovdje vi kao odgovoran vlasnik svoje mačke igrate veliku ulogu. Ukoliko vidite da je vaša mačka sklona debljanju te jede puno hrane ili se deblja, morate joj početi kontrolirati količinu obroka.\r\nOsim kastracije, poznato je da gotova mačja hrana dostupna u trgovinama, sadržava puno ugljikohidrata koje mačke ne bi smjele jesti, barem ne u tolikoj mjeri. Pomno čitajte sastojke na hrani koju dajete svojoj mački te obratite pozornost na udio proteina te njihov izvor (proteini mogu biti i biljnog porijekla npr. od soje).\r\nMačke su mesožderi (u prirodi im je da jedu miševe i manje ptice) i oslanjaju se na nutrijente koji se pronalaze samo u životinjama – puno proteina, umjereno do malo masnoća i minimalno ugljikohidrata. Mačja tijela su prilagođena za probavljanje životinjskih proteina i masnoća. Što se ugljikohidrata tiče, iako oni daju energiju, mačke ih ne mogu dobro probaviti i koristiti kao izvor energije, pa ih treba što je više moguće izbjegavati.', 'slike/debela.jpg', '2015-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `galerija`
--

CREATE TABLE `galerija` (
  `id` int(11) NOT NULL,
  `slika` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galerija`
--

INSERT INTO `galerija` (`id`, `slika`) VALUES
(1, 'slike/slika1.jpg'),
(2, 'slike/slika2.jpg'),
(3, 'slike/slika3.jpg'),
(4, 'slike/slika4.jpg'),
(5, 'slike/slika5.jpg'),
(6, 'slike/slika6.jpg'),
(7, 'slike/slika7.jpg'),
(8, 'slike/slika8.jpg'),
(9, 'slike/slika9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `id` int(11) NOT NULL,
  `dogadaj_id` int(11) NOT NULL,
  `tekst` text NOT NULL,
  `email` varchar(256) NOT NULL,
  `tip_dogadaja` varchar(45) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `id` int(11) NOT NULL,
  `naslov` varchar(128) NOT NULL,
  `adresa` varchar(128) NOT NULL,
  `mobitel` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`id`, `naslov`, `adresa`, `mobitel`, `email`) VALUES
(1, 'Ime: Udruga za zaštitu mačaka “Doniraj za mačke"', 'Adresa: Kninski trg 10, 10 000 Zagreb', '099/2848-851', 'amestrov@tvz.hr');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `razprist` int(11) NOT NULL,
  `ime` varchar(128) NOT NULL,
  `prezime` varchar(128) NOT NULL,
  `datRodenja` date NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `username`, `password`, `razprist`, `ime`, `prezime`, `datRodenja`, `email`) VALUES
(1, 'patko', 'patko', 1, 'Patko', 'Patkci', '1995-09-15', 'pp@gmail.com'),
(3, 'marko', 'marko', 2, 'Marko', 'Markinovic', '1993-04-08', 'mm@gmail.com'),
(6, 'alen', 'alen', 2, 'Alen', 'Meštrov', '1993-04-22', 'am@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `macke`
--

CREATE TABLE `macke` (
  `id` int(11) NOT NULL,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `datum` date NOT NULL,
  `slika` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macke`
--

INSERT INTO `macke` (`id`, `naslov`, `tekst`, `datum`, `slika`) VALUES
(1, 'Koni', 'Stigla je na našu skrb programom “Uhvati – Steriliziraj – Vrati”, a tijekom oporavka trudila se biti najmaznija maca na cijelom svijetu i svoju je tetu čuvalicu osvojila u potpunosti :) tako smo uz pregovaranje, razmišljanje kako da strpamo još jednu macu u ionako preveliki broj mica, ali  Koni nam je i to rješila. Slaže se sa svima, nikakvih nesuglasica, ama baš ništa.\r\nKoni je ultra mazna, ultra prilagodljiva, ultra pametna i ultra draga i zato podhitno treba ULTRA DOBAR DOM!\r\nSterilizirana je i trenutno je na antibiotiku zbog kašlja, ali čim se oporavi, dobit će piku protiv zaraznih bolesti i može u novi dom.\r\nRedovno je tretirana protiv parazita, naučena je i na pijesak.', '2015-06-08', 'slike/koni.jpg'),
(2, 'Fleky – nova maca na liječenju, nađena u lošem stanju!', 'Fleky je nađena prije par dana u izrazito lošem stanju – užasno mršava, jadna, šugava, sva u proljevu, ali predraga i puna zahvalnosti pa čak i za malo maženja.Nalaznica ju je bez imalo razmišljanja strpala u auto i pravac veterinaru. Dobila je ampulu protiv buha, nekoliko injekcija, dijagnosticiran joj je proljev i mačja gripa te je otpuštena doma uz napomenu da sutra mora opet na terapiju.\r\nKako je nalaznica iz Austrije u koju se vraćala za par sati, javila se nama za pomoć. Srećom je naša teta čuvalica Matilda prihvatila Fleky kod sebe na skrb na tjedan dana, a tad odlazi na put.', '2015-05-29', 'slike/fleky.jpg'),
(3, 'Tončica i bebe', 'Imala sam i ja nekada dom.\r\nBilo je i zdjelica pune hrane i imala sam ruku za maženje.\r\nKad god mi je bilo hladno, imala sam zaklon. Sve do nedavno.\r\nMoji ljudi su odlučili da sam im postala višak. Vjerojatno zbog svoje djece i oka.\r\nNešto me mučilo, naslutila sam da nije dobro, a oni su me sve više gledali sa gađenjem.\r\nStrpali su nas u kutiju i odvezli daleko, negdje gdje nema puno ljudi i samo rekli – snaći će se.\r\nBila sam jako uplašena i gladna i boljelo me oko :(\r\nNi dječicu nisam mogla utješiti.\r\nI tad me dohvatila jedna teta. Rekla mi je da će sve biti u redu od sada. Dobra je ta teta :) nahranila me i dala mi opet zaklon i sigurnost.\r\nA onda je teta nazvala tu neku nešto Dobrote i rekli su da će mi oni uzeti bolesno oko, da mi takvo ne treba. I jučer nas je pregledao gospon doktor i zakazao operaciju krajem 5. mjeseca.\r\nDobili smo kapi što nam sad teta stavlja i malčice već osjećam olakšanje. I dječica su mi sretnija ♥\r\nHvala ti teta i hvala gospon doktor!', '2015-05-23', 'slike/toncica.jpg'),
(4, 'Crnka', 'Zapažena na cesti, vjerojatno pregažena automobilom sa čudnom ranom na leđima.\r\nNije mogla ustati na zadnje noge.\r\nA tako draga i mila, naša Crnka.\r\nOdvedena je veterinaru gdje je obavljen rendgen, očišćena je rana na leđima koja je zapravo opeklina vjerojatno od auspuha automobila.\r\nSlomljena zdjelica – terapija mirovanje.\r\nCrnka je bila nekoliko dana u stacionaru dok nije došla kod svoje tete čuvalice u privremeni ♥ Hvala Nikolina!\r\nSad se lijepo oporavlja, još uvijek ne staje u potpunosti na stražnje noge, ali je puno bolje.\r\nCrnka je ostala dužna kod veterinara kojih 200tinjak kuna, ali znate da će ta maca jednom trebati i cjepivo i sterilizaciju.\r\nPa zato ajmo svi zajedno podijeliti njen album i uplatiti koju kunicu za nju :)', '2015-05-21', 'slike/crnka.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `onama`
--

CREATE TABLE `onama` (
  `id` int(11) NOT NULL,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `datum` date NOT NULL,
  `slika` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `onama`
--

INSERT INTO `onama` (`id`, `naslov`, `tekst`, `datum`, `slika`) VALUES
(1, 'Tko smo?', 'Udruga za zaštitu mačaka “Sklonište dobrote” osnovana je 23.01.2013. godine s ciljem humanog smanjenja broja napuštenih, zlostavljanih i zanemarivanih mačaka te podizanja svijesti građana.\r\n \r\nUdruga “Sklonište dobrote” orijentirala se na napuštene mačke, njihovo zbrinjavanje i udomljavanje iz razloga što još uvijek mnogi smatraju kako su mačke vrlo samostalne životinje. Dapače, one jesu samostalnije recimo od pasa, no danas jedna kućna mačka gotovo nikada ne razvije iste sposobnosti, reflekse niti razvija nagone, kao nekadašnje domaće mačke ili kao divlje mačke u prirodi.\r\n \r\nKućne mačke vrlo su često stigle u obitelj kao maleni mačići, koje kako odrastaju s vremenom dosade njihovim vlasnicima te bivaju nemilosrdno izbačene na ulicu. Još jedan od problema s kojima se često susrećemo jest kastracija, odnosno odijanje iste. Vlasnici odbijaju kastrirati svoje ljubimce, a nisu u mogućnosti ili to ne žele, prihvatiti odgovornost koja tada dolazi. Takve mačke gotovo da i nemaju šanse preživjeti na ulici, a ukoliko i prežive agonija s mačićima nastavlja se u nedogled.\r\n \r\nI dan danas nemamo sklonište, već mačke smještamo po privremenim domovima (volonteri) te smo zbog tog razloga ograničeni na vrlo malen broj životinja koje možemo preuzeti na skrb.\r\n', '2014-05-05', 'slike/tkosmo.jpg'),
(2, 'Način rada – kako funkcioniramo?', 'Udruga NEMA sklonište, odnosno azil, “Sklonište dobrote” trenutno je samo ime udruge. Funckioniramo po principu privremenih domova te smo iz tog razloga ograničeni na vrlo malen broj životinja. \r\nKako zbrinjavamo mačke?\r\nDOJAVA\r\nNajčešće telefonskim putem dobivamo dojavu o pronalasku mačke. Što je bitno da VI učinite kad pronađete NAPUŠTENU MAČKU?\r\nPoslikajte životinju, čim je bolje moguće.\r\nOdredite starost i spol životinje.\r\nOpišite u kakvom je zdravstvenom stanju životinja ( da li su vidljive ozljede, rane, gnoj u očima…)\r\nNIKADA OZLIJEĐENU I RANJENU ŽIVOTINJU NE OSTAVLJATE SAMU NA CESTI! Ili pričekajte da netko od naših volontera dođe ili je uzmite kod sebe pa ćemo je mi naknadno preuzeti.\r\nPokušajte mački pronaći privremeni smještaj u slučaju ako mi nemamo prostora za prihvat nove mačke (pokrivamo sve troškove za tu mačku, nama je potreban samo smještaj).\r\nZBRINJAVANJE\r\nNakon što smo pronašli smještaj za mačku, prvi korak je odlazak na pregled. Ukoliko je mačka ranjena ili ozlijeđena i potrebno joj je pružiti HITNU veterinarsku skrb, tada se riješenje za smještaj traži kasnije, nakon pregleda i sanacija rana/ozljeda.\r\nUkoliko se nakon pregleda ustanovi da je mačka zdrava, čisti se od vanjskih i unutarnjih nametnika.\r\nMačka bez obzira što u tom trenutku nema simptome bolesti, mora proći KARANTENU, odnosno mora biti izolirana od drugih životinja 14 dana (većina virusnih ili bakterijskih bolesti izađe na vidjelo u roku tih 14 dana te se karantenom spriječava širenje bolesti na druge mačke).\r\nMačka se oglašava putem medija, te se traži vlasnik. Ukoliko se vlasnik ne nađe ili ne javi u zakonskom roku, mačka traži dom (pod uvjetom da je zdrava).\r\nUkoliko mačka prođe karantenu bez ikakvih simptoma bolesti, cijepi se protiv zaraznih bolesti te se polako privikava na suživot s drugim mačkama i kreće potraga za udomiteljem.\r\nMačka je na skrbi Udruge sve dok se ne pronađe potencijalan udomitelj. \r\nUDOMLJAVANJE\r\nPrilikom udomljavanja potpisuje se ugovor o udomljavanju kojim se udomitelj obavezuje pravilno brinuti o mački, propisano Zakonom o zaštiti životinja te uvjetima koje zahtjeva Udruga.\r\nNAKON UDOMLJENJA \r\nTo što je životinja udomljena, ne znači da ćemo zaboraviti na nju i više se nikad ne osvrnuti, puno je truda uloženo u sve životinje i one su u našim srcima. Tako se nakon udomljenja moramo uvjeriti da li su udomitelji zaista takvi kakvi su se činili na prvi pogled i da li su životinje pravilno zbrinute.', '2015-05-05', 'slike/nacinrada.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `privremeniudomitelji`
--

CREATE TABLE `privremeniudomitelji` (
  `id` int(11) NOT NULL,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(128) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privremeniudomitelji`
--

INSERT INTO `privremeniudomitelji` (`id`, `naslov`, `tekst`, `slika`, `datum`) VALUES
(1, 'Što trebate da postanete teta ili striček čuvalica?', 'Što je potrebno da postanete teta ili striček čuvalica?\r\nZapravo, to nije ništa teško niti strašno :)  posebice ako su mace zdrave, ne trebate imati ogromne kučerine i plaću od 10 000 kn jer mi ćemo vam osigurati SVE.\r\nSve što trebate je jedna zasebna prostorija ukoliko imate svoje životinje koje držite u kući/stanu. Ukoliko nemate svojih životinja, novu pridošlicu možete odmah (iako ne morate) pustiti po cijelom stanu/kući.\r\nOdraslu macu potrebno je nahraniti dva puta dnevno, dok mačićima treba češće davati obroke. Naša je preporuka u početku nositi hranu maci, barem prvih par dana da ona može povezati vas i hranu (dakle nešto pozitivno za nju) jer moramo imati na umu da je tim macama sve novo i nepoznato. Kasnije možete ostaviti punu zdjelicu suhe hrane konstantno + uvijek naliti čistu frišku vodu, a mokru hranu  (vrećice, konzervice) kao i poslastice npr. davati povremeno (ujutro, navečer, ugl. neredovito…).\r\nMaci je potrebno osigurati kutiju sa pijeskom kojega treba redovno čistiti (2 puta dnevno npr.). Kad se radi o samo jednoj maci, ovisno o veličini kutije za pijesak i kvaliteti pijeska, ponekad je dovoljno pijesak čistiti samo jednom dnevno. Za hranjenje i čišćenje potrebno vam je 10tak minuta posla.\r\nAko svaki dan odvojite još nekoliko minutica na maženje, češljanje, igru potpuno ćete upotpuniti maci život, a vjerujte nam osjećat ćete veliku sreću zbog toga :)\r\n\r\nKoliko dugo će biti kod vas?\r\n\r\n\r\nUkoliko ste uzeli mamu macu sa mačićima, oni obavezno 2 mjeseca moraju biti sa mamom i sisati njeno mlijeko bez obzira što su možda već naveliko sa mjesec i pol krenuli jesti mačju kupovnu hranu. Majčino mlijeko izvor je svih nutritivnih tvari i tvari koje grade mačićima imunitet te ni jedna zamjenska niti kupovna hrana ne može to nadoknaditi.\r\nIako, idealno bi bilo da su mačići kod vas do udomljenja, sasvim nam je prihvatljivo da su kod vas barem prva 3 mjeseca kad će dobiti sva potrebna zaštitna cjepiva. No ni to nije nužno. Možemo se dogovoriti da uskočite sada pa ih kasnije premjestimo u drugi privremeni smještaj iako morate imati na umu da je to stres za sve nas, za macu i mačiće. Ali nije nemoguće. Samo morate na početku točno reći koliko dugo možete čuvati macu i mačiće.\r\nTo također vrijedi za sve mace (ne samo mačiće, mame mace..). Idealno bi bilo do udomljenja, no prvih 2 mjeseca je također jako prihvatljivo. Kada je u pitanju život miceka i prvih par dana/tjedana može itekako puno značiti dok ne smislimo što i kako dalje. Najbitnije je da i vi imate razumijevanja.\r\n\r\n\r\nŠto sve morate kupiti? ​\r\n\r\n\r\nNIŠTA! Baš N – I – Š – T – A ! Onog trenutka kad se javite za smještaj, mi organiziramo prijevoz, pokupimo macu, idemo s njom kod veterinara, obavimo pregled i dolazimo do vas. Ili nekim drugim redoslijedom, ovisno koji je dan u tjednu :)\r\nSa macom donosimo kutiju za pijesak, lopaticu za čišćenje, pijesak, zdjelice, hranu (suhu, mokru i poslastice), košaru, barem 4-5 dekica i igračke.\r\nDajemo vam upute još jednom kako i zašto i ostavljamo svoje brojeve telefona (koji su vam uvijek i dostupni na web stranici: www.sklonistedobrote.hr) tako da nas možete kontaktirati u bilo koje doba noći ili dana ukoliko se nešto događa sa macom ili imate bilokakva pitanja.\r\nNaravno, ne moramo vam govoriti da VETERINARSKE TROŠKOVE POKRIVAMO MI.\r\n \r\nŠto još očekujemo od vas?\r\nOdgovornost i suradnja. To nam je najbitnije, da se držite onoga čega smo se dogovorili u početku i ako postoji problem, ako nešto iskrsne da na vrijeme i pravilno može odreagirati.\r\nMožda ćemo vas zamoliti za prijevoz ukoliko ste tu u mogućnosti pomoći (npr. do veternara, do novog doma i sl.), te ćemo vas zamoliti možda za pokoju sličicu ako mi nećemo stići do vas.\r\nMožda ćemo vas zamoliti da nakon što svi budu spremni za novi dom, netko dođe do vas pogledati macu (ali tu možemo prisustvovati i mi) kao potencijalni udomitelj.\r\nI to je sve! Ništa više.\r\nMožete li učiniti nešto više ako želite?\r\nDapače. Možete i vi kupiti hranu, pijesak. Možete kupiti igračkice ili ih napravite doma sami ako ste kreaitvni. Možete sa njima provoditi cijele dane ako imate vremena jer volje vjerujemo da imate!\r\nMožete tražiti udomitelje, sami oglašavati, dijeliti, pitati, lijepiti plakatiće i sl.\r\nMožete nam u početku reći ako ne trebate zdjelice, kutiju za pijesak ili košaru i sami to osigurati.\r\nMožete djelomično pokriti veterinara ili postati kum/a tim macama.\r\nMožete imati i više miceka na skrbi, ne jednu mamu macu sa mačićima – ali to sve ovisi i o broju i veličini prostorija.\r\n \r\nMožete, ali ne morate.', 'slike/privremeniudomitelji.jpg', '2015-04-15'),
(2, 'Zašto trebamo tete i stričeke čuvalice?', 'Zašto ste nam potrebni? Već i ptičice znaju da nemamo azil, te da smo iz tog razloga ograničeni na vrlo malen broj životinja koje možemo primiti na našu skrb bez obzira što bismo morali i puno više jer napuštenih je mnogo.\r\nJedna od naših volonterki, koja je i teta čuvalica napisala je tekst koji će vam možda prosvijetliti oči ZAŠTO toliko jako trebamo vašu pomoć TETA i STRIČEKA ČUVALICA.\r\nČitajući tekst morali biste doći do zaključka da se ne moramo MI volonteri koji imamo prepune kuće mačaka tako osjećati, već oni koji su odbili pomoći, oni koji nisu htjeli prihvatiti tu zadaću, a možda su mogli.\r\nTko su tete i stričeki čuvalice pročitaje ovdje. \r\n“Još jedan oproštaj\r\nProšlo je već  tri dana od kada sam se oprostila s tobom, a još uvijek ne mogu prihvatiti da te nema. Odlučila sam par rečenica staviti na papir , jer mislim da je to najmanje što mogu učiniti..Ne želim da te drugi potpuno zaborave..ja te ionako neću nikada zaboraviti..\r\nPišem ovu posvetu usred poplave teških vijesti…Srušio se avion, poginuo cijeli razred, dvije bebe, 140 ljudskih života se ugasilo.Što mogu učiniti? Ništa,  osim suosjećati..\r\nJedan mali dečkić se upravo sad  bori u bolnici za svoj život , mama strepi uz njegov krevet. Što mogu učiniti? Ništa, osim nadati se..\r\nZa tebe sam mogla učiniti nešto više osim suosjećati i nadati se. Dal to manje vrijedi jer si mačak?\r\nNe znam….možda netko tako razmišlja..Ja ne želim tako razmišljati , jer meni si bio vrijedan. I okrenula bi brda i doline da sam te mogla spasiti…uzalud mi sve kad tebe više nema.\r\nAko malo prevrtim film unazad možda sam ipak mogla više učiniti. Možda sam trebala više učiniti. Možda sam trebala dati prednost tebi –velikom, u ono vrijeme zdravom mačoru, pred nekim bolesnim .Možda bi ti sad bio živ, a onog bolesnog nebi bilo. No nekako smo i ti i ja znali da se to tako ne radi. Da li si zbog toga platio životom? Nikada neću znati.\r\nBio si kvartovski šarmer. Svi su te znali, svi su te hranili. Volio si odmarati na suncu, maziti se, volio si ljude. Nažalost, ti isti ljudi su te iznevjerili.  Eto, sada više nikom ne smetaš….\r\nLjuta sam…ljuta sam ,jer znam da si bio mačak koji je imao svoj dom, svoje ljude. Vjerojatno si im bio zanimljiv tako dugo dok si bio prerasan „whiskas“mačić. Kada si odrastao, nestao si..i dragi moj oni su te tražili. Kada su te našli, više te nisu htjeli. Sigurno si se pitao što si skrivio i zašto ne možeš natrag u svoj dom..zašto si postao ničije , odbačeno mače? Ne znam. Odgovor na to pitanje ti ne mogu dati , jer  je i meni velika enigma.\r\nProlazili su dani,a mene je sve  više bilo strah da ti se nešto ne dogodi. Ti si uvijek znao da se na mene možeš osloniti kada zaškripi s hranom pa si lukavo prolazio ulicom nebi li te uočila. I uvijek sam te uočila i bila s tobom. Znala sam da to nije dovoljno, objavila da hitno trebamo smještaj za tebe da te barem kastriramo.Mislila sam moooožda se netko nađe i za tebe pa te udomimo.\r\nŽao mi je miconja dragi, no nitko se nije javljao ..jer, bio si zdrav, veliki mačor pa si mogao pričekati svoj red dok neki mali , kržljavi i bolesni to nisu mogli. Žao mi je što si morao čekati na red, proklinjem samu sebe što te nisam uzela odmah bez obzira na sve.. Sada je kasno..povratka više nema.\r\nNaposlijetku je eto došao i  tvoj red.Bio si ranjen. Srce mi je potonulo u pete kada je stigla dojava. Isprva se nije činilo ništa strašno. Viđali smo i gore nažalost. No, tada je na vidjelo isplivala sva ljudska zloba. Nekom si jako smetao, netko te se htio riješiti zbog tvog „grijeha“uličnog, nekastriranog mačora- bio si otrovan.\r\nOd dana dojave , do dana kad smo se oprostili prošlo je skoro mjesec dana. Premalo, mico moj . Iako je sve ukazivalo na to da se oporavljaš, gadno sam se prevarila. Zašto nisi dobio svoju priliku da živiš mirno i voljeno? Ne znam. Na puno pitanja odgovora nemam.\r\nOprostili smo se u srijedu ujutro..Scenarij nažalost predobro poznat. Ambulanta- infuzija-lijekovi-testovi- sažalni pogled veterinara- nema pomoći..\r\nMožda sam mogla učiniti više za tebe . Možda sam trebala pričekati s konačnom odlukom.Možda bi poživio dan, dva, tjedan, dva.Možda i ne.\r\nMožda sam bila sebična jer nisam mogla ponovno prolaziti agoniju polakog umiranja kada ti spasa bilo nije pa sam donjela konačnu odluku da se ne mučiš. Vjeruj mi, prioritet si mi bio ti, tek onda ja. Da je postojala i najmanja mogućnost da ćeš biti dobro, borila bi se s tobom, za tebe  kao lavica. Nažalost, nije bilo te mogućnosti.\r\nI sad dok stavljam ove riječi na papir proklinjem samu sebe što si uvijek morao čekati svoj red. Sivonja moj dragi, svaki dan kad prolazim kraj našeg mjesta još uvijek te očekujem. Očekujem da ćeš se pojaviti, doći do mene da te pomazim i dam ti hrane. Znaš da si otišao voljen i da ćeš zauvijek živjeti negdje u meni..\r\nVoli te tvoja teta čuvalica D.”\r\nI baš zato, da ih spasimo još više sa ceste postani naš volonter koji će biti presudan u spašavanju napuštenih mačaka. ', 'slike/tetecuvalice.jpg', '2015-04-15'),
(3, '“Tete i stričeki čuvalice”', 'Privremeni udomitelji ili kako ih mi od milja zovemo “tete i stričeki čuvalice” su posebne osobe koje nama, a samim time i napuštenim mačkama, omogućavaju onu usputnu stanicu, koja je potrebna da se životinja oporavi, socijalizira, izliječi te krene dalje – u novi dom.\r\nDa biste postali privremeni udomitelj morate imati iskustva sa mačkama ili barem biti voljni naučiti sve o njima, njihovom ponašanju, te naučiti kako pravilno o njima skrbiti. Jer baš privremeni udomitelji jesu oni ljudi koji će napuštenoj maci izliječiti dušu i slomljeno srce te joj vratiti vjeru u ljude.\r\nOBAVEZNI UVJETI:\r\n1. Ukoliko imate svoju mačku, ona mora biti redovno cijepljena protiv zaraznih bolesti, te očišćena od nametnika i kastrirana (ako je spolno zrela).\r\n2. Morate imati jednu čistu, suhu, prozračnu prostoriju gdje prvih 14 dana (karantena) možete izdvojiti pridošlicu od drugih životinja (ukoliko je mačka došla direktno sa ceste)\r\n3. Morate biti odgovorni te se prema životinji odnositi kao prema živom biću, sa puno ljubavi i strpljenja.\r\n4. Kada birate mačku kojoj ćete pružiti privremeni dom birajte je po svojim mogućnostima (npr. nemojte uzimati jednog mačića ako vas nema cijeli dan kod kuće, nemojte uzimati bolesne životinje kojima treba nadzor ako vas nema kod kuće i sl.).\r\n5. NIKADA nemojte životinju uzeti na privremeni smještaj te zatim od nje odustati prije dogovorenog termina! Dva puta razmislite prije nego se javite za “tetu ili stričeka čuvalicu” jer takve mace se jedino mogu vratiti natrag na ulicu.\r\n6. Od vas očekujemo ODGOVORNOST i POTPUNU SURADNJU – ne dajete mačku nikome bez našeg znanja, sve potencijalne udomitelje usmjeravate prvo na nas, mačka se u dogovoru s nama udomljuje isključivo uz ugovor te ako je moguće MI je vozimo u novi dom. \r\n7. Ukoliko mačka dobije terapiju, molimo vas da se držite uputa koje smo vam mi prenijeli od veterinara ili koje ste dobili direktno od veterinara (npr. ako veterinar kaže antibiotik davati 14 dana, vi nećete prestati 10. dan samo zato jer mačka izgleda zdravo).\r\n \r\nPrivremenim udomiteljima Udruga pokriva sve troškove, odnosno za smještenu životinju osigurava hranu, pijesak, veterinarsku skrb, oglašavanje, traženje doma te udomljavanje.\r\nNaravno, vrlo nam je drago kada se i privremeni udomitelji sami uključe u traženje udomitelja, prijevoz oko veterinara, financiranje za hranu i sl.\r\nOsim financijskih troškova svi tete i stričeki čuvalice imaju stalnu potporu već postojećih volontera! \r\nKako bismo odgovorili na neka najčešća pitanja malo smo detaljnije razradili što trebate da biste bili privremeni udomitelj. ', 'slike/cuvari.jpg', '2015-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `razinapristupa`
--

CREATE TABLE `razinapristupa` (
  `id` int(11) NOT NULL,
  `vrsta` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `razinapristupa`
--

INSERT INTO `razinapristupa` (`id`, `vrsta`) VALUES
(1, 'administrator'),
(2, 'korisnik');

-- --------------------------------------------------------

--
-- Table structure for table `volontirajidoniraj`
--

CREATE TABLE `volontirajidoniraj` (
  `id` int(11) NOT NULL,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volontirajidoniraj`
--

INSERT INTO `volontirajidoniraj` (`id`, `naslov`, `tekst`, `slika`) VALUES
(1, 'Volontiraj!', 'Fotografi, prevoditelji, vozači, administratori, tete/stričeki čuvalice, voditelji/ce javnih akcija, volonteri/ke za javne akcije, voditelji/ce Facebook aukcija i oglasa, tim za brigu o mačkama i njihovom privremenom boravištu – pozivamo vas da nađete svoje mjesto u našem timu.\r\nBez obzira da li ste već volontirali ili niste, koliko imate godina i/ili radnog iskustva ili pak upravo suprotno – želite steći radno iskustvo kako bi u budućnosti lakše dobili posao – javite nam se jer upravo vas trebamo!\r\n \r\nPrijaviti se možete ispunjavanjem prijavnice na http://tinyurl.com/prijavnica-sklonistedobrote.', 'slike/volonteri.jpg'),
(2, 'Doniraj!', 'Udruga “Sklonište dobrote” financira se isključivo iz donacija pojedinaca koji prate naš rad i daju nam podršku. Svaka životinja koju primimo na skrb iziskuje mnogo financijskih sredstava – od veterinarske skrbi koja je neizbježna, pa sve do osnovnih potreba životinje.\r\nI TI možeš biti taj pojedinac! \r\nTrenutno skrbimo o 50-tak mačaka. Ukupno smo ih više od 200 sklonili sa ulice, a udomili preko 100!\r\nVeterinarski troškovi su nam ogromni jer u 99% slučajeva zbrinjavamo bolesne, ozljeđene mačke koje zahtjevaju posebnu pažnju i veterinarsku skrb.\r\nSve naše troškove možete pogledati ovdje.\r\n \r\nNeplaćeni veterinarski računi:\r\nTRENUTNI IZNOS: 17.241,79 kn \r\n\r\nDonacije možete uplatiti na:\r\nErste banka, IBAN: HR0424020061100648383\r\nOpis plaćanja: DONACIJA\r\nIme: Udruga Sklonište dobrote\r\nModel: 99', 'slike/doniraj.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akcije`
--
ALTER TABLE `akcije`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aukcije`
--
ALTER TABLE `aukcije`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clanstvo`
--
ALTER TABLE `clanstvo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dogadaji`
--
ALTER TABLE `dogadaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galerija`
--
ALTER TABLE `galerija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentari`
--
ALTER TABLE `komentari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `macke`
--
ALTER TABLE `macke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onama`
--
ALTER TABLE `onama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privremeniudomitelji`
--
ALTER TABLE `privremeniudomitelji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razinapristupa`
--
ALTER TABLE `razinapristupa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volontirajidoniraj`
--
ALTER TABLE `volontirajidoniraj`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akcije`
--
ALTER TABLE `akcije`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `aukcije`
--
ALTER TABLE `aukcije`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clanstvo`
--
ALTER TABLE `clanstvo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dogadaji`
--
ALTER TABLE `dogadaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `galerija`
--
ALTER TABLE `galerija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `komentari`
--
ALTER TABLE `komentari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `macke`
--
ALTER TABLE `macke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `onama`
--
ALTER TABLE `onama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `privremeniudomitelji`
--
ALTER TABLE `privremeniudomitelji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `razinapristupa`
--
ALTER TABLE `razinapristupa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `volontirajidoniraj`
--
ALTER TABLE `volontirajidoniraj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
