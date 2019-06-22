import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic{

    id : idRoot
    Shape{
        id : idShape

        width: idRoot.width
        height: idRoot.height
        x : 0
        y : 0

        ShapePath {

            strokeWidth: 4/*线宽*/
            strokeColor: GlobalAppData.color(GlobalAppData.Red,GlobalAppData.isDark?GlobalAppData.Shade200:GlobalAppData.Shade500) /*线颜色*/
            fillColor: GlobalAppData.color(GlobalAppData.Blue, GlobalAppData.isDark?GlobalAppData.Shade200:GlobalAppData.Shade500) /*填充颜色*/

            startX: 0.03*idShape.width;
            startY: 0.03*idShape.height;

            PathLine { x: 0.94*idShape.width; y: 0.94*idShape.height;}
            PathLine { x: 0.03*idShape.width; y: 0.94*idShape.height;}
            PathLine { x: 0.03*idShape.width; y: 0.03*idShape.height;}

        }
    }

}

/*endl_input_of_latex_for_clanguage_lick*/
/*Material Style*/
