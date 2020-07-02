import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:karyapramoedya/detailpage.dart';
import 'package:karyapramoedya/model/karya.dart';

class HomePage extends StatelessWidget{

  final buru = TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Yellowtail');
  final other = TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Merriweather');

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/wesley_tingey_unsplash.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Berkenalan dengan Pram', style: buru),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.white10,
                              offset: Offset(4, 2),
                              blurRadius: 10
                          )
                        ]),
                        child: Image.asset('assets/images/pram.jpg',
                          width: 250,)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Text('Tetralogi Pulau Buru', style: buru),
                ),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    itemBuilder: (context, index){
                      var valueBook = buruList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return DetailPage(data: valueBook);
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(
                                          color: Colors.white10,
                                          offset: Offset(2,2),
                                          blurRadius: 10)
                                      ]),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.asset(valueBook.imgPath),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: buruList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Karya Lainnya', style: other),
                ),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    itemBuilder: (context, index){
                      var valueBook = otherBook[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return DetailPage(data: valueBook);
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(
                                          color: Colors.white10,
                                          offset: Offset(2,2),
                                          blurRadius: 10)
                                      ]),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.asset(valueBook.imgPath),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: otherBook.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ) ,
          ),
        ),
      ),
    );
  }
  
}

var buruList = [
  Karya(
      title: 'Bumi Manusia',
      published: '1980',
      synopsis: 'Bumi Manusia (Inggris:This Earth of Mankind) adalah buku pertama dari Tetralogi Buru karya Pramoedya Ananta Toer yang pertama kali diterbitkan oleh Hasta Mitra pada tahun 1980.Buku ini ditulis Pramoedya Ananta Toer ketika masih mendekam di Pulau Buru. Sebelum ditulis pada tahun 1975, sejak tahun 1973 terlebih dahulu telah diceritakan ulang kepada teman-temannya. Setelah diterbitkan, Bumi Manusia kemudian dilarang beredar setahun kemudian atas perintah Jaksa Agung. Sebelum dilarang, buku ini sukses dengan 10 kali cetak ulang dalam setahun pada 1980-1981. Sampai tahun 2005, buku ini telah diterbitkan dalam 33 bahasa. Pada September 2005, buku ini diterbitkan kembali di Indonesia oleh Lentera Dipantara. Buku ini melingkupi masa kejadian antara tahun 1898 hingga tahun 1918, masa ini adalah masa munculnya pemikiran politik etis dan masa awal periode Kebangkitan Nasional. Masa ini juga menjadi awal masuknya pemikiran rasional ke Hindia Belanda, masa awal pertumbuhan organisasi-organisasi modern yang juga merupakan awal kelahiran demokrasi pola Revolusi Prancis.',
      imgPath: 'assets/images/bumimanusia.jpg'),
  Karya(
    title: 'Anak Semua Bangsa',
    published: '1980',
    synopsis: 'Anak Semua Bangsa adalah buku kedua dari seri Tetralogi Buru karya Pramoedya Ananta Toer. Beberapa bulan setelah terbit pada 1981, buku ini bersama buku Bumi Manusia dilarang beredar oleh Kejaksaan Agung.Pada seri kedua ini menceritakan perjuangan batin Minke di mana istrinya yakni Annelis harus dibawa paksa ke Belanda. Tetapi pihak keluarga Nyi Ontosoroh tidak tinggal diam, sehingga dikirimlah seorang teman sekolah Minke yang bernama Panji Darman alias Jan Depperste untuk memantau keadaan Annelis di sana. Komunikasi melalui surat-menyurat. Di sisi lain Minke tak mau tinggal diam melawan keadaan. Dia terus belajar kepada Nyi Ontosoroh tentang banyak hal. Mulai dari menjalankan bisnis, urusan hukum, hingga menjadi inspirasinya untuk menulis.',
    imgPath: 'assets/images/anaksemuabangsa.jpg'),
  Karya(
      title: 'Jejak Langkah',
      published: '1985',
      synopsis: 'Footsteps (Indonesia: Jejak Langkah) adalah novel ketiga dari Tetralogi buru oleh penulis Indonesia, Pramoedya Ananta Toer. Dalam tetralogi ini, dibahas tentang kehidupan tokoh fiksi Tirto Adhi Soerjo, seorang bangsawan Indonesia dan wartawan perintis. Buku ini bercerita tentang kehidupan Minke – narator orang pertama dan protagonis, berdasarkan tokoh Tirto Adhi Soerjo – setelah pindah dari Surabaya ke Batavia, ibu kota Hindia Belanda. Edisi asli dalam bahasa Indonesia diterbitkan pada tahun 1985 dan terjemahan bahasa inggris oleh Max Lane diterbitkan pada tahun 1990.',
      imgPath: 'assets/images/jejaklangkah.jpg'),
  Karya(
      title: 'Rumah Kaca',
      published: '1988',
      synopsis: 'Rumah Kaca merupakan novel keempat sekaligus penutup dari Tetralogi Buru yang ditulis oleh Pramoedya Anata Toer. Dibandingkan ketiga pendahulunya yaitu Bumi Manusia, Anak Semua Bangsa, dan Jejak Langkah, terdapat perbedaan yang cukup mencolok pada Rumah Kaca karena tidak mengambil Minke atau Tirto Adhi Soerjo sebagai tokoh utama. Masih dengan latar zaman pemerintahan kolonial Belanda, tokoh utama dalam buku ini adalah Jacques Pangemanann, seorang polisi kolonial Belanda yang ditugaskan untuk mengawasi Minke. Dalam buku ini, diperlihatkan bagaimana usaha pemerintah kolonial Belanda dalam memukul aktivitas Minke yang merupakan salah satu tokoh pergerakan nasional, melalui operasi mata-mata, serta pengarsipan yang rapi dan sistematis. Pramoedya mengistilahkan politik arsip ini sebagai kegiatan pe-rumahkaca-an.',
      imgPath: 'assets/images/rumahkaca.jpg'),
];

var otherBook = [
  Karya(
      title: 'Arok Dedes',
      published: '1999',
      synopsis: 'Arok Dedes adalah salah satu novel karya Pramoedya Ananta Toer yang menceritakan sejarah perlawanan dan pemberontakan Ken Arok terhadap pemerintahan Akuwu Tumampel, Tunggul Ametung. Dalam buku yang diterbitkan pada tahun 1999 ini, Pram secara jelas mengungkap kondisi sosial politik pada masa itu.Novel ini mencoba memberikan suatu perspektif pandang baru terhadap sejarah dengan menggambarkan Ken Arok bukan hanya seorang berandalan pemberontak, seperti yang banyak dikatakan buku pelajaran sejarah, tetapi disini diceritakan bahwa Ken Arok adalah seorang pemimpin rakyat yang tidak puas dengan pemerintahan yang menindas. Novel ini juga menggambarkan kondisi pemberontakan yang terjadi di dalam suatu negara atau kerajaan yang sarat dengan intrik politik.',
      imgPath: 'assets/images/arokdedes.jpg'),
  Karya(
      title: 'Arus Balik',
      published: '1995',
      synopsis: 'Arus Balikadalah novel sejarah karangan Pramoedya Ananta Toer yang menceritakan Kedatangan Portugis di Bumi Nusantara dengan latar awal Abad XVI, yaitu ketika surutnya pengaruh Majapahit dan naiknya pamor Kesultanan Demak. Tokoh utama dalam novel ini adalah Wiranggaleng, seorang pemuda desa yang ikut berjuang dalam Invasi ke Malaka yang dipimpin oleh Pati Unus.',
      imgPath: 'assets/images/arusbalik.jpg'),
  Karya(
      title: 'Bukan Pasar Malam',
      published: '1951',
      synopsis: 'Bukan Pasar Malam merupakan sebuah novel karangan Pramoedya Ananta Toer yang diterbitkan pada tahun 1951 oleh Balai Pustaka, kemudian dinyatakan terlarang pada tahun 1965. Pada tahun 1999, novel ini diterbitkan kembali oleh Bara Budaya. Oleh sebagian pembaca, Bukan Pasar Malam, sering disimpulkan sebagai novel yang bernuansa religius, beraura mistik, dan mengandung pergulatan eksistensial diri manusia ketika berhadapan dengan maut di samping ironi seorang pejuang kemerdekaan yang kecewa dan tak mendapatkan tempat yang layak justru ketika kemerdekaan yang diperjuangkan dengan penuh pengorbanan itu sudah terwujud.',
      imgPath: 'assets/images/bukanpasarmalam.jpg'),
  Karya(
      title: "The Mute's Soliloquy",
      published: '1988',
      synopsis: "Pada tahun 1965, Pramoedya Ananta Toer ditahan oleh otoritas Indonesia dan akhirnya diasingkan ke pulau Buru. Tanpa tuduhan resmi atau persidangan, pahlawan nasional yang dulu pernah dipenjara di Buru selama sebelas tahun. Dia selamat dalam kondisi yang brutal, entah bagaimana berhasil menghasilkan karya besarnya, empat novel Buru Kuartet, serta entri jurnal yang luar biasa, esai, dan surat yang terdiri dari memoar yang mengharukan ini. Mengingatkan kita pada karya Aleksandr Solzhenitsyn, The Mute's Soliloquy adalah potret mengerikan dari sebuah koloni pidana dan kenangan memilukan dari kehidupan sebelumnya. Dengan resonansi yang jauh melampaui waktu dan tempat khususnya, itu adalah pencapaian puncak Pramoedya - penghargaan yang penuh gairah untuk kebebasan pikiran dan perayaan semangat manusia." ,
      imgPath: 'assets/images/catatannyamukbisu.jpg'),
  Karya(
      title: 'Cerita Dari Blora',
      published: '1994',
      synopsis: 'Cerita dari Blora adalah kumpulan cerita pendek (cerpen) karangan Pramoedya Ananta Toer yang ditulis semasa revolusi 1945-1949, sewaktu di dalam dan selepas penjara Belanda di Bukit Duri, Jakarta. Pertama kali diterbitkan oleh Balai Pustaka pada tahun 1952, dan semenjak itu kumpulan cerpen ini telah diterjemahkan ke dalam pelbagai bahasa asing, lengkap keseluruhannya ataupun terpisah satu persatu. Kesemua cerpen ini mengisahkan kejadian pada tahun-tahun awal revolusi di kota kelahiran penulis yaitu kota Blora. Dalam kumpulan cerita pendeknya, Pramoedya Ananta Toer bertutur tentang kesengsaraan yang dihadapi oleh rakyat Blora pada masa penjajahan dan sesudah kemerdekaan. Pram menunjukkan betapa perubahan yang terjadi di Blora tidak membuat kehidupan rakyatnya menjadi lebih baik. Kemerdekaan hanya menciptakan perubahan bentuk kesengsaraan yang dihadapi masyarakat Blora.',
      imgPath: 'assets/images/ceritadariblora.jpg'),
  Karya(
      title: 'Di Tepi Kali Bekasi',
      published: '1951',
      synopsis: 'Di Tepi Kali Bekasi adalah novel yang menceritakan perjuangan rakyat Bekasi pada masa revolusi tahun 1945. Sebuah novel karya Pramoedya Ananta Toer. Diterbitkan oleh Usaha Penerbitan Gapura, Jakarta Tahun 1951. Novel ini mengisahkan perjuangan para pemuda Indonesia menghadapi tentara Inggris dan Belanda.Salah satu tokoh yang ditampilkan adalah sosok bernama Farid.Seorang tokoh dalam masa-masa perjuangan yang menjadi korban.Perasaan para pemuda yang tidak hanya seorang Farid,memperjuangkan kemerdekaan bangsanya, tercebur dan larut didalamnya, hingga rela meninggalkan segala kesenangan dimasa muda dan juga meninggalkan keluarganya.Oleh karena perasaan ingin berbakti pada bangsanya, merenggangkan hubungan kekeluargaan. Cinta bukan lagi hal yang utama dalam novel ini, hanya bagian dari kehidupan seseorang yang tidak menentukan sebuah perjuangan untuk kemerdekaan.',
      imgPath: 'assets/images/ditepikalibekasi.jpg'),
  Karya(
      title: 'Gadis Pantai',
      published: '1987',
      synopsis: 'Gadis Pantai adalah novel karya Pramoedya Ananta Toer. Dalam Bahasa Inggris, novel ini dikenal dengan nama The Girl from the Coast. Novel ini memberikan gambaran mengenai situasi feodalisme di daerah Jawa. Buku ini juga memiliki ciri khas dari Pramoedya Anananta Toer, yakni menceritakan kisah pernikahan dini dan kritik terhadap situasi sosial. Cerita ini dibuat berdasarkan kisah pernikahan neneknya sendiri. Novel sastra Pramoedya Ananta Toer atau yang biasa dipanggil Pram menyebut tokoh dalam buku ini gadis pantai, seorang gadis desa yang harus rela dipersunting oleh Bendoro atau Priyayi. Dengan latar belakang zaman Hindia-Belanda, gadis ini masih berumur belia dan harus siap menjadi permaisuri dari Bendoro. Karena hutang pelik dari keluarganya, sebuah keterpaksaan yang tak biaa dihindari pada eranya.',
      imgPath: 'assets/images/gadispantai.jpg'),
  Karya(
      title: 'Panggil Aku Kartini Saja',
      published: '2003',
      synopsis: 'Buku ini memaparkan banyak sisi dari Kartini yang bisa jadi belum diketahui khalayak luas, disamping bahwa ia adalah gadis pingitan yang terkekang oleh feodalisme pada jamannya dan menjadi tokoh feminisme Indonesia. Dimulai dengan kondisi sosial yang tengah berkembang di Indonesia pada abad 17-an, yang membentuk pola pikir dari masyarakat, termasuk golongan bangsawan. Pergolakan batin yang dialami Kartini sejak ia remaja, penolakannya terhadap peraturan-peraturan yang menurutnya tak masuk di akal yang ia tuliskan melalui surat-suartnya, hingga bidang-bidang kesenian yang digelutinya dan membuatnya lebih dikenal di Eropa, khususnya orang-orang Belanda.',
      imgPath: 'assets/images/panggilakukartini.jpg'),
  Karya(
      title: 'Perburuan',
      published: '1950',
      synopsis: 'Perburuan adalah sebuah novel karya Pramoedya Ananta Toer. Konon, novel tersebut ditulis pada saat di penjara selama seminggu selama masa pendudukan Jepang di Indonesia dan kemudian diterbitkan oleh Balai Pustaka pada tahun 1950.',
      imgPath: 'assets/images/perburuan.jpg'),
  Karya(
      title: 'Pramoedya Ananta Toer',
      published: '6 Februari 1925',
      synopsis: 'Pramoedya Ananta Toer (lahir di Blora, Jawa Tengah, 6 Februari 1925 – meninggal di Jakarta, 30 April 2006 pada umur 81 tahun), secara luas dianggap sebagai salah satu pengarang yang produktif dalam sejarah sastra Indonesia. Pramoedya telah menghasilkan lebih dari 50 karya dan diterjemahkan ke dalam lebih dari 42 bahasa asing.',
      imgPath: 'assets/images/pram.jpg')
];