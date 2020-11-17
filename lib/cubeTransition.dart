import 'package:cube_transition/cube_transition.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cubeInfo.dart';

class CubeView extends StatelessWidget {
  Container drawCubeSquare(int side, int column, int row, var cubeInfo) {
    return Container(
      color: cubeInfo.colorDict[cubeInfo.myCube[side][column][row]],
      height: 100.0,
      width: 100.0,
      padding: EdgeInsets.all(10.0),
    );
  }

  Column drawCubeColumn(int side, int column, var cubeInfo) {
    return (Column(
      children: [
        drawCubeSquare(side, column, 0, cubeInfo),
        drawCubeSquare(side, column, 1, cubeInfo),
        drawCubeSquare(side, column, 2, cubeInfo),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    ));
  }

  Container drawCubeSide(int side, var cubeInfo) {
    return (Container(
      child: Row(
        children: [
          drawCubeColumn(side, 0, cubeInfo),
          drawCubeColumn(side, 1, cubeInfo),
          drawCubeColumn(side, 2, cubeInfo),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final cubeInfo = Provider.of<CubeInfo>(context, listen: false);
    final height = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Cube Transition'),
      ),
      body: Center(
        child: SizedBox(
          height: height,
          child: CubePageView(children: [
            drawCubeSide(1, cubeInfo),
            drawCubeSide(2, cubeInfo),
            drawCubeSide(3, cubeInfo),
            drawCubeSide(4, cubeInfo),
          ]),
        ),
      ),
    );
  }
}
