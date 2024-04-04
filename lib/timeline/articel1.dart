import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';

class Timeline {
  final String gambar;
  final String judul;
  final String deskripsi;
  final String star;

  Timeline(this.gambar, this.judul, this.deskripsi, this.star);
}

class Topik1 extends StatelessWidget{
  final List<Timeline> timeline = [
    Timeline(
        'https://media.istockphoto.com/id/1388730840/id/foto/wanita-muda-asia-bisnis-tangan-menyentuh-kepala-dia-merasa-depresi-stres-sakit-kepala-lelah.jpg?s=1024x1024&w=is&k=20&c=VGtu0g0d4nthbRsuRHK6a8Ya0aPdfwcPPKeQAkOnVH8=',
        'Berhenti Overthinking',
        '1. Lakukan Refleksi DiriAnda dapat meluangkan waktu sekitar 20-3- menit untuk melakukan refleksi dan introspeksi diri. Anda dapat memikirkan kesalahan yang Anda lakukan dan fokus pada bagaimana menyelesaikan masalah tersebut.',
        '50'),
    Timeline(
        'https://media.istockphoto.com/id/935941772/id/foto/beragam-orang-memegang-emotikon.jpg?s=1024x1024&w=is&k=20&c=GBL5lnWqRSE8GoLcJWfRojQ-sTCuYqde_xhioc03OBw=',
        'Mengendalikan Emosi',
        '1. Memilih situasi Hindari keadaan yang dapat memicu emosi. Terlebih emosi yang tidak kamu inginkan. Jika kamu tahu bahwa kemungkinan besar akan marah ketika sedang terburu-buru atau ketika sedang menunggu seseorang maka persiapkanlah hal itu di awal.',
        '50'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Time Line Junelf'),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: timeline.length,
              itemBuilder: (context, index){
                return new GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DetailArtikel(
                          timeline: timeline[index],
                        )
                    ));
                  },
                  child: new Card(
                    child: new Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.network(
                            '${timeline[index].gambar}',
                            width: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  '${timeline[index].judul}',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          ),
        )
    );

  }
}

class DetailArtikel extends StatelessWidget {
  final Timeline timeline;
  DetailArtikel({Key? key, required this.timeline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bagianjudul = Container(
      padding: const EdgeInsets.all(23),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(timeline.judul,
                          style: TextStyle(fontWeight: FontWeight.bold)
                      )
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text(timeline.star)
        ],
      ),
    );

    Color color = Theme
        .of(context)
        .primaryColor;
    Widget bagianbutton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          untukkolombutton(color, Icons.call, "Call"),
          untukkolombutton(color, Icons.near_me, "Route"),
          untukkolombutton(color, Icons.share, "Share"),
        ],
      ),
    );

    Widget bagiandeskripsi = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        timeline.deskripsi,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(timeline.judul),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            timeline.gambar,
            width: 600,
            fit: BoxFit.cover,
          ),
          bagianjudul,
          bagianbutton,
          bagiandeskripsi,
        ],
      ),
    );
  }

  Column untukkolombutton(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color,),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: color
            ),
          ),
        )
      ],
    );
  }
}


