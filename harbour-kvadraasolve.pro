# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-kvadraasolve

CONFIG += sailfishapp

SOURCES += src/harbour-kvadraasolve.cpp

OTHER_FILES += qml/harbour-kvadraasolve.qml \
    qml/cover/CoverPage.qml \
    qml/pages/KvadraaSolve.qml \
    qml/pages/About.qml \
    qml/pages/Thanks.qml \
    rpm/harbour-kvadraasolve.spec \
    rpm/harbour-kvadraasolve.yaml \
    harbour-kvadraasolve.desktop

