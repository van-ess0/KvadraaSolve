# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-KvadraaSolve

CONFIG += sailfishapp

SOURCES += src/harbour-KvadraaSolve.cpp

OTHER_FILES += qml/harbour-KvadraaSolve.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/harbour-KvadraaSolve.spec \
    rpm/harbour-KvadraaSolve.yaml \
    harbour-KvadraaSolve.desktop

