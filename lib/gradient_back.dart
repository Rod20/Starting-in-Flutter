import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
          begin: FractionalOffset(0.2, 0.0), //que tanto se traslapa un color con el otro
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0,0.6],  // similar a end, es la orientacion del gradiente
          tileMode: TileMode.clamp // es el color de relleno en caso de que el gradient no cargue
        )
      ),
    );
  }
}
