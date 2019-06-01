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

        width: idRoot.width - 10 ;
        height: idRoot.height - 10 ;
        x : 5 ;
        y : 5 ;

        property alias radius: idPath.radius
        property alias applyRadius: idPath.applyRadius

        ShapePath {

            id : idPath

            property real radius : 16 ;
            readonly property real applyRadius : radius > 0 ?
                                                     Math.min( radius , Math.min( idShape.width,idShape.height ) *0.5 )
                                                   : 0 ;

            strokeWidth: 0/*线宽*/
            strokeColor: fillColor;
            fillColor: GlobalAppData.color(GlobalAppData.Blue, GlobalAppData.isDark?GlobalAppData.Shade200:GlobalAppData.Shade500) /*填充颜色*/

            startX: 0 ;
            startY: idPath.applyRadius

            PathArc{
                radiusX : idPath.applyRadius ;
                radiusY : idPath.applyRadius ;
                x: idPath.applyRadius ;
                y: 0;
                useLargeArc: false
                direction: PathArc.Clockwise
            }

            PathLine {
                x :  idShape.width-idPath.applyRadius ;
                y :0 ;
            }

            PathArc{
                radiusX : idPath.applyRadius;
                radiusY : idPath.applyRadius ;
                x: idShape.width  ;
                y: idPath.applyRadius  ;
                useLargeArc: false
                direction: PathArc.Clockwise
            }

            PathLine {
                x : idShape.width ;
                y : idShape.height-idPath.applyRadius ;
            }

            PathArc{
                radiusX : idPath.applyRadius ;
                radiusY : idPath.applyRadius ;
                x: idShape.width - idPath.applyRadius ;
                y: idShape.height ;
                useLargeArc: false
                direction: PathArc.Clockwise
            }

            PathLine {
                x : idPath.applyRadius ;
                y: idShape.height ;
            }

            PathArc{
                radiusX : idPath.applyRadius;
                radiusY : idPath.applyRadius ;
                x: 0 ;
                y: idShape.height-idPath.applyRadius ;
                useLargeArc: false
                direction: PathArc.Clockwise
            }

            PathLine {
                x :0  ;
                y: idPath.applyRadius;
            }

        }
    }

}

/*endl_input_of_latex_for_clanguage_lick*/
/*Material Style*/





