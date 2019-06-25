# graphical_effect/graphical_effect.pro

TEMPLATE = app

CONFIG(debug,debug|release){
    TARGET = graphical_effect_debug
}else{
    TARGET = graphical_effect
}

SOURCES += $$PWD/main.cpp

include($$PWD/../../sstd_library/sstd_library.pri)
include($$PWD/../../sstd_qt_qml_quick_library/sstd_qt_qml_quick_library.pri)
include($$PWD/../../sstd_library/add_vc_debug_console.pri)

DESTDIR = $${SSTD_LIBRARY_OUTPUT_PATH}

isEmpty(QMAKE_POST_LINK){
    QMAKE_POST_LINK += $${SSTD_LIBRARY_OUTPUT_PATH}/sstd_copy_qml $${PWD} $${PWD} skip
}else{
    QMAKE_POST_LINK += $$escape_expand(\\n\\t)$${SSTD_LIBRARY_OUTPUT_PATH}/sstd_copy_qml $${PWD} $${PWD} skip
}

CONFIG(debug,debug|release){
    DEFINES += CURRENT_DEBUG_PATH=\\\"$$PWD\\\"
}else{
    QMAKE_POST_LINK += $$escape_expand(\\n\\t)$${DESTDIR}/sstd_copy_qml $${PWD}/appqml $${DESTDIR}/appqml release
    export(QMAKE_POST_LINK)
}

QMLSOURCES += $$PWD/appqml/graphical_effect/main.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateBasic.qml
QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateSliderControl.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/BlendGraphicalEffect.qml
QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateBlendControl.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/BrightnessContrastGraphicalEffect.qml
QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateBrightnessContrastControl.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/ColorizeGraphicalEffect.qml
QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateColorizeControl.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/ColoroverlayGraphicalEffect.qml
QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateColoroverlayControl.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/ConicalGradientGraphicalEffect.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/DesaturateGraphicalEffect.qml
QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateDesaturateControl.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/DirectionalBlurGraphicalEffect.qml
QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateDirectionalblurControl.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/DisplaceGraphicalEffect.qml
QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/PrivateDisplaceControl.qml

QMLSOURCES += $$PWD/appqml/graphical_effect/EffectFiles/DropShadowGraphicalEffect.qml


lupdate_only{
    SOURCES += $$QMLSOURCES
}

DISTFILES += $$QMLSOURCES
QML_IMPORT_PATH += $${SSTD_LIBRARY_OUTPUT_PATH}

#/*endl_input_of_latex_for_clanguage_lick*/"
