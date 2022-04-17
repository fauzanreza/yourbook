import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  const detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      flexibleSpace: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SafeArea(
                        top: true,
                        child: MaterialButton(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )),
                    SafeArea(
                        top: true,
                        child: Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Detail buku',
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                        )),
                    SafeArea(
                        top: true,
                        child: MaterialButton(
                          padding: EdgeInsets.only(left: 70),
                          child: Icon(
                            Icons.bookmark_add_outlined,
                            size: 26,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        )),
                    SafeArea(
                        top: true,
                        child: MaterialButton(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.more_vert,
                            size: 26,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        )),
                  ]) // set your search bar setting
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );

    final bookImage = Image.asset(
      'assets/book3.png',
      height: 180,
      fit: BoxFit.fill,
    );

    final bookDetail = DefaultTextStyle.merge(
        child: Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Text('Hujan', style: TextStyle(fontSize: 20)),
            padding: const EdgeInsets.only(bottom: 5, top: 5),
          ),
          Container(
            child: const Text(
              'Tere Liye',
              style: TextStyle(color: Color.fromARGB(255, 118, 118, 118)),
            ),
            padding: const EdgeInsets.only(bottom: 25),
          ),
          Container(
            child: FlatButton(
              onPressed: () {},
              child: const Text("Sewa Rp 20.000,-"),
              color: Colors.blueAccent,
              padding: const EdgeInsets.only(left: 20, right: 20),
            ),
            padding: const EdgeInsets.only(bottom: 25),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text("Rating"),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: const [
                          Text(
                            "4,8",
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          )
                        ],
                      )),
                ],
              ),
              Column(
                children: const [
                  Text("Kondisi"),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Baik",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));

    final deskripsi = Container(
      padding: const EdgeInsets.fromLTRB(5, 5, 45, 5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 166, 204, 242),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      child: const Text('Deskipsi'),
    );

    final bookDesk = Container(
      child: const Text(
        'Novel ini menceritakan tentang Esok dan Lail sebagai salah satu '
        'tokoh utama, keduanya dipertemukan setelah gunung meletus pada '
        'tahun 2042. Efek letusan gunung yang dahsyat membuat seisi bumi '
        'menyisihkan manusia dan tersisa sekitar 10% manusia.',
        textAlign: TextAlign.justify,
      ),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 247, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1)),
      padding: const EdgeInsets.all(10),
    );

    final List<Map<String, dynamic>> _feedback = [
      {
        'Nama': 'Keeva Hendricks',
        'Profile': Colors.deepPurple,
        'Comment':
            'Hujan. Tentang Persahabatan. Tentang Cinta. Tentang Melupakan. Tentang Perpisahan. Tentang Hujan',
      },
      {
        'Nama': 'Zeynep Draper',
        'Profile': Colors.red,
        'Comment': 'gilaaaaaaa! dibikin penasaran sampai akhir, tapi legaaaa',
      },
      {
        'Nama': 'Inaya Foster',
        'Profile': Colors.lightGreen,
        'Comment':
            'Setelah membaca kisah Lail dan Esok, akhirnya lega di akhir cerita',
      },
      {
        'Nama': 'Moshe Webber',
        'Profile': Colors.tealAccent,
        'Comment':
            'SUPER DUPER KEREN! novel yang bikin kita semua penasaran dan alur cerita',
      },
    ];

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[500],
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[500],
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[500],
          size: 15,
        ),
        Icon(
          Icons.star_border_outlined,
          color: Colors.yellow[500],
          size: 15,
        ),
        Icon(
          Icons.star_border_outlined,
          color: Colors.yellow[500],
          size: 15,
        ),
      ],
    );

    final feedback = Container(
      padding: const EdgeInsets.fromLTRB(5, 5, 45, 5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 166, 204, 242),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      child: const Text('Feedback'),
    );

    final bookFeedback = SizedBox(
        height: 170,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _feedback.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.6,
                padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
                child: Card(
                  color: Color.fromARGB(255, 238, 247, 255),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: _feedback[index]['Color'],
                            size: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                child: Text(_feedback[index]['Nama']),
                              ),
                              stars
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Text(
                        _feedback[index]['Comment'],
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ]),
                ),
              );
            }));

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [bookImage, bookDetail],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: deskripsi,
              ),
              bookDesk,
              Align(
                alignment: Alignment.topLeft,
                child: feedback,
              ),
              bookFeedback
            ],
          ),
        ),
      ),
    );
  }
}
