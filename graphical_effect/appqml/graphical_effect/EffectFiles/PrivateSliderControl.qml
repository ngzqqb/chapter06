﻿import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

Slider{
    id : idSlider
    property bool inValueChangeRange : false
    property variant posWhenValueChange: null ;
    property variant oldPosWhenValueChange : null ;
    onValueChanged: {
        inValueChangeRange = true;
        posWhenValueChange = GlobalAppData.timeSinceCreate();
        oldPosWhenValueChange = posWhenValueChange;
    }
    function checkIfInValueChangeRange(){
        posWhenValueChange = GlobalAppData.timeSinceCreate();
        if( (posWhenValueChange - oldPosWhenValueChange)>1000 ){
            inValueChangeRange = false
        }else{
            inValueChangeRange = true
        }
    }
    Timer{
        interval : 600
        repeat : true
        running : idSlider.inValueChangeRange
        triggeredOnStart : false
        onTriggered: {
            idSlider.checkIfInValueChangeRange();
        }
    }
    ToolTip {
        parent: idSlider.handle
        visible: idSlider.hovered || idSlider.inValueChangeRange
        text: idSlider.value.toFixed(2)
        Component.onDestruction: {
        /*on destruct this must be show , or it will case a crash ...*/
            text = ""
            width = 1 ;
            height = 1 ;
            visible = true ;
        }
    }
}
