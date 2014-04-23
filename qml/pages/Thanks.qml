import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page
    Column {
        anchors.fill: parent
        anchors.margins: Theme.paddingLarge

        PageHeader {
            title: "Thanks Page"
        }
        Label {
            width: parent.width
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            textFormat: Text.RichText
            //textFormat: Text.RichText
            text: "<style>
                    a {
                        color: " +Theme.highlightColor +";\
                        }
                       </style>\
Special thanks to:<br>
<b>Amarchen</b> for his HelloWorld-Pro which I used as example for a lot of things.<br>
<b>Lanurmi</b> for his SailFactor which I used as example for making cover useful<br>
<b>Mariusmssj</b> for his BMI-Calculator which I used as examlpe of small and useful application<br>
<b>Ancelad</b> for the nice icon."
            onLinkActivated: {
               Qt.openUrlExternally(link)
            }
        }
   }
}
