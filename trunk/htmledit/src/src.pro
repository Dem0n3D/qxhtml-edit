######################################################################
# Automatically generated by qmake (2.01a) mer 14. mar 23:01:02 2007
######################################################################

TEMPLATE = app
TARGET = Edithtml
DESTDIR	+= ../
DEPENDPATH += .
INCLUDEPATH += .

win32-msvc*:message("Rewrite libs extension! your compiler make all different as other linux,mac,mingw") 
win32-msvc*:error("exit pleas msvc!") 

MOC_DIR	= build/.moc
RCC_DIR	= build/.rcc
OBJECTS_DIR = build/.obj
UI_DIR	= ui


CONFIG   += qt warn_off release static
###win32:debug { CONFIG += console }
QT += xml
QT += network
QT += sql

win32:RC_FILE = win.rc




macx {
message('Bundle........... $${BUNDLE_DIR}')
RC_FILE = zzz.icns
QMAKE_INFO_PLIST = zzz.plist

qc_universal:contains(QT_CONFIG,x86):contains(QT_CONFIG,ppc) {
		CONFIG += x86 ppc
		QMAKE_MAC_SDK=/Developer/SDKs/MacOSX10.4u.sdk
}


QMAKE_MAC_SDK=/Developer/SDKs/MacOSX10.4u.sdk
QMAKE_POST_LINK = cp -R locale/*.qm $${BUNDLE_DIR}/locale
##### QMAKE_POST_LINK = cd ..;macos/fixlibs.sh
##### mkdir -p $${BUNDLE_DIR}/locale; 
}





INCLUDEPATH += ../libhtml
DEPENDPATH += ../libhtml
INCLUDEPATH += ../libhtml/include
DEPENDPATH += ../libhtml/include
LIBS += ../all_os_libs/libtidy.a

# Input
HEADERS += base_edit.h \
           base_modul.h \
           edit_html.h \
           interface.h \
           href_gui.h \
           href_start.h \
           html_loader.h \
           main.h \
           qvimedit.h \
           table_setting.h \
           baseui.h \
           ui_edit_html.h \
           ui_table_setting.h \
           xmlhighlighter.h
FORMS += ui/edit_html.ui
SOURCES += base_edit.cpp \
           edit_html.cpp \
           interface.cpp \
           href_gui.cpp \
           main.cpp \
           qvimedit.cpp \
           table_setting.cpp \
           xmlhighlighter.cpp
           
RESOURCES += attach.qrc



contains(CONFIG, static): {
       ######### on main.cpp use defined ########
       DEFINES += _USE_STATIC_BUILDS_
    
        exists($$[QT_INSTALL_PLUGINS]/imageformats/qjpeg.a) {
            QTPLUGIN += qjpeg
            DEFINES += _USE_qjpeg
        }
        exists($$[QT_INSTALL_PLUGINS]/imageformats/libqgif.a) {
            QTPLUGIN += qgif   
            DEFINES += _USE_qgif            
        }
        exists($$[QT_INSTALL_PLUGINS]/imageformats/libqmng.a) {
            QTPLUGIN += qmng   
            DEFINES += _USE_qmng            
        }
        exists($$[QT_INSTALL_PLUGINS]/imageformats/libqtiff.a) {
            QTPLUGIN += qtiff   
            DEFINES += _USE_qtiff            
        }
}

## lrelease src.pro

TRANSLATIONS += locale/edit_de.ts \
                locale/edit_en.ts \
                locale/edit_fr.ts \
                locale/edit_tr.ts \
                locale/edit_it.ts







