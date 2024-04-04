import 'package:flutter/material.dart';

class Articel1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cara Berhenti Overthinking'),
      ),
      body: Center(
        child: Text(
          "1. Berhenti sejenak dan cari penyebabnya"
              "Hal paling utama yang harus dilakukan adalah menyadari bahwa kamu "
              "memiliki kebiasaan overthinking. Setelah itu berhentilah sejenak dan "
              "tenangkan pikiranmu. Langkah selanjutnya yaitu cari sumber masalah "
              "yang selama ini bersarang di kepalamu.",
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}


