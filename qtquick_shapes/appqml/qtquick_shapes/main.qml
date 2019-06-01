/* appqml/qtquick_shapes/main.qml */
import QtQuick 2.12
import QtQuick.Controls 2.12

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
import theqml_the_debug.qml_files_dir_loader_module 1.0
/*end:import*/

StyledApplicationWindow {

    width: 360 ;
    height: 512 ;
    id : idRoot ; 

    QmlFilesDirLoader{
        anchors.fill : parent
        qmlFilesDir  : "DrawShapes"
    }

    Component.onCompleted: {
    }

}

/*endl_input_of_latex_for_clanguage_lick*/
/*begin:debug*/
/*end:debug*/
