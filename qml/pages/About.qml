/*
  Copyright (C) 2013 Jolla Ltd.
  Contact: Thomas Perl <thomas.perl@jollamobile.com>
  All rights reserved.

  You may use this file under the terms of BSD license as follows:

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Jolla Ltd nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page
    Column {
        anchors.fill: parent
        anchors.margins: Theme.paddingMedium

        Label {
            id:topl
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            color: Theme.highlightColor
            textFormat: Text.RichText
            text: "<h1>KvadraaSolve</h1>
<h2>v.2.3-1</h2>
<h3>Van-ess0</h3>"

        }

        Label {
            width: parent.width
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            textFormat: Text.RichText
            text: "<style>
                    a {
                        color: " +Theme.highlightColor +";\
                        }
                       </style>\
Hello, Sailors:)<br>
This is my first training application.<br>
Source code is in my <a href='https://github.com/van-ess0/KvadraaSolve'>GitHub repo</a><br>
Contact me in Twitter <a href='https://twitter.com/Van_ess0'>@Van_ess0</a><br>
Thanks for using and best wishes!<br>"
            onLinkActivated: {
               Qt.openUrlExternally(link)
            }
        }

        Button {
            onClicked: pageStack.push(Qt.resolvedUrl("Thanks.qml"))
            text: "Thanks"
            anchors.horizontalCenter: parent.horizontalCenter

        }

        //TODO:Button to the Donate page

        Label {
            id:eggl
            anchors.horizontalCenter: page.horizontalCenter
            width: parent.width
            height: topl.height / 8
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            font.pixelSize: Theme.fontSizeExtraLarge
            color: '#00ff00'
            text: ''

        }

        Image {
            id: kva
            width: page.width - 50
            height: width
            anchors.horizontalCenter: parent.horizontalCenter
            //anchors.top: kva_kva.top
            fillMode: Image.PreserveAspectFit
            source: "../images/kvadraa.png"

            MouseArea {
                id: egg
                anchors.fill: parent
                onClicked: {if (eggl.text === 'Kva-Kva :D') eggl.text = ''; else eggl.text = 'Kva-Kva :D'}
            }
        }
   }
}
