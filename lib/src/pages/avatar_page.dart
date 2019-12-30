import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pagina de Avatar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.vox-cdn.com%2Fthumbor%2FNNXJvgWgftclHDVBMc5VWWAJU8U%3D%2F0x120%3A1403x1055%2F1200x800%2Ffilters%3Afocal(0x120%3A1403x1055)%2Fcdn.vox-cdn.com%2Fuploads%2Fchorus_image%2Fimage%2F50125277%2FGettyImages-451435004.0.jpg&f=1&nofb=1'),
            ),
          ),
          CircleAvatar(
            child: Text('SL'),
        backgroundColor: Colors.white,
          ),
          SizedBox( width: 7.0,)
        ],
      ),
    );
  }
}