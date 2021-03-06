﻿
import QtQuick 2.12
import QtGraphicalEffects 1.12

PrivateBasic{

    Image{
          width: parent.width * 0.8;
          height: parent.height * 0.8;
          anchors.centerIn: parent
          source: "snake.jpg"
          visible: false
          fillMode: Image.PreserveAspectFit
          id : idImage
      }

      BrightnessContrast{
          anchors.fill: idImage
          source: idImage
          contrast: idControl.contrastItem.value
          brightness: idControl.brightnessItem.value
      }

      PrivateBrightnessContrastControl{
          id:idControl
      }

}

/*endl_input_of_latex_for_clanguage_lick*/

//
// 项目移植自 ：
// https://github.com/ngzHappy/QtQmlBook/tree/master/chapter06/
