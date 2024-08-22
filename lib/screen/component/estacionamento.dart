import 'package:flutter/material.dart';
import 'package:parking_lot/screen/component/info.dart';

class Estacionamento extends StatefulWidget {
  const Estacionamento({super.key});

  @override
  State<Estacionamento> createState() => _EstacionamentoState();
}

class _EstacionamentoState extends State<Estacionamento> {

  void printe(){
    print('clique pelo amor de Deus');
  }



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
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
                  width: 50,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //muro da parte de baixo a direita
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 50,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //muro central parte de baixo
              Positioned(
                right: 150,
                bottom: 0,
                child: Container(
                  width: 80,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              //mureta central
              Positioned(
                right: 150,
                bottom: 0,
                child: Container(
                  width: 80,
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
                top: 200,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              Positioned(
                right: 0,
                top: 250,
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
                top: 200,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              Positioned(
                left: 0,
                top: 250,
                child: Container(
                  width: 75,
                  height: 5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), 
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Container(
                  color: Colors.amberAccent,
                  width: 50,
                  height: 50,
                  child: TextButton(onPressed: printe, child: Icon(Icons.car_crash))
                )
              )
            ],
          ),
          
        ],
      ),
      
    );
  }
}