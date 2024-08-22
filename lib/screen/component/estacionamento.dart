import 'package:flutter/material.dart';
import 'package:parking_lot/screen/component/info.dart';

class Estacionamento extends StatefulWidget {
  const Estacionamento({super.key});

  @override
  State<Estacionamento> createState() => _EstacionamentoState();
}

class _EstacionamentoState extends State<Estacionamento> {
  final List<Color> cores = [Colors.green, Colors.amber, Colors.red];
  int index = 1;
  final List<double> tamanhos = [70, 65];

  void printe(){
    setState(() {
      index = (index + 1) % cores.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //painel localizações
          const Info(),
          //estacionamento
          Stack(
            children: [
              //chao do estacionamento
              Container(
                width: 390,
                height: 390,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              //loja
              Container(
                width: 390, 
                height: 100,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              //muro da esquerda
              Positioned(
                left: 0,
                child: Container(
                  width: 5,
                  height: 400,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              //muro da direita
              Positioned(
                right: 0,
                child: Container(
                  width: 5,
                  height: 400,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //muro da parte de baixo a esquerda
              Positioned(
                bottom: 0,
                child: Container(
                  width: 90,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //muro da parte de baixo a direita
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 100,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //mureta central
              Positioned(
                left: 150,
                bottom: 0,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //vagas direta comecam aqui
              Positioned(
                right: 0,
                top: 150,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              Positioned(
                right: 0,
                top: 220,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              Positioned(
                right: 0,
                top: 290,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //vagas esquerda comecam aqui
              Positioned(
                left: 0,
                top: 150,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              Positioned(
                left: 0,
                top: 220,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              Positioned(
                left: 0,
                top: 290,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //botao
              Positioned(
                left: 5,
                top: 155,
                child: Container(
                  color: cores[index],
                  width: tamanhos[0],
                  height: tamanhos[1],
                  child: TextButton(onPressed: printe, child: Icon(Icons.car_crash,color: Theme.of(context).colorScheme.onPrimary,))
                )
              ),
              Positioned(
                left: 5,
                bottom: 100,
                child: Container(
                  color: cores[index],
                  width: tamanhos[0],
                  height: tamanhos[1],
                  child: TextButton(onPressed: printe, child: Icon(Icons.car_crash,color: Theme.of(context).colorScheme.onPrimary,))
                )
              ),
              Positioned(
                right: 5,
                top: 155,
                child: Container(
                  color: cores[index],
                  width: tamanhos[0],
                  height: tamanhos[1],
                  child: TextButton(onPressed: printe, child: Icon(Icons.car_crash,color: Theme.of(context).colorScheme.onPrimary,))
                )
              ),
              Positioned(
                right: 5,
                bottom: 100,
                child: Container(
                  color: cores[index],
                  width: tamanhos[0],
                  height: tamanhos[1],
                  child: TextButton(onPressed: printe, child: Icon(Icons.car_crash,color: Theme.of(context).colorScheme.onPrimary,))
                )
              )

            ],
          ),
          
        ],
      ),
      
    );
  }
}