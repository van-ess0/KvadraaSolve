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
import "../cover"

Page {
    id: page

    property alias _equation: equ.qua
    property alias _x1: x1.text
    property alias _x2: x2.text
    property alias _d: d.text

    function cleanVal(){
        a.text = ''
        b.text = ''
        c.text = ''
        return 0
    }

    //Making string in the PullDownMenu and filling global variables
    //for cover information
    Item {
        id: equ
        property string ak: {if (a.text === '1') ''; else if(a.text === '-1') '-'; else a.text}
        property string bk: {if (b.text === '0') ''; else if (b.text === '1') '+X'; else if (b.text === '-1') '-X'; else if (parseInt(b.text) < 0) b.text + 'X'; else if (b.text === '') '+BX'; else '+' + b.text + 'X' }
        property string ck: {if (c.text === '0') ''; else if (parseInt(c.text) < 0) c.text; else if (c.text === '') '+C'; else '+' + c.text}
        property string qua: ak + 'X&#178;' + bk + ck + '=0'
    }


    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {

            MenuItem {
                text: "About"
                onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
            }
            MenuItem {
                text:"Clear"
                onClicked: cleanVal()
            }

            Label {
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                color: Theme.highlightColor
                textFormat: Text.RichText
                text: equ.qua
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            height: page.height
            anchors.margins: Theme.paddingLarge
            spacing: Theme.paddingLarge


            PageHeader {
                id: head
                title: "KvadraaSolve"
            }

            //Getting A in Ax^2+Bx+C=0
            Item {
                id:sqX
                width: parent.width
                height: (parent.height - head.height)  / 5

                Label {
                    id: aLabel
                    width: parent.width / 10
                    height: parent.height
                    textFormat: Text.RichText
                    font.bold: true
                    color: Theme.highlightColor
                    //anchors.leftMargin: Theme.paddingLarge
                    //anchors.rightMargin: Theme.paddingLarge

                    //horizontalAlignment: Text.AlignLeft
                    text: "X&#178;"
                }

                TextField {
                    id: a
                    width: parent.width - aLabel.width
                    height: parent.height
                    anchors.left: aLabel.right
                    horizontalAlignment: Text.AlignRight
                    //font.bold: true
                    placeholderText: "Enter A"
                    //text: "2"
                    validator: IntValidator{}
                    inputMethodHints: Qt.ImhDigitsOnly
                    //focus: true
                }
              }

            //Getting B in Ax^2+Bx+C=0
            Item {
                id: x
                width: parent.width
                height: (parent.height - head.height)  / 5

                Label {
                    id: bLabel
                    width: parent.width / 10
                    height: parent.height
                    font.bold: true
                    color: Theme.highlightColor
                    text: "X"
                }

                TextField {
                    id: b
                    width: parent.width - bLabel.width
                    height: parent.height
                    anchors.left: bLabel.right
                    horizontalAlignment: Text.AlignRight
                    placeholderText: "Enter B"
                    //text: "3"
                    validator: IntValidator{}
                    inputMethodHints: Qt.ImhDigitsOnly
                }
            }


            Item {
                id:free
                width: parent.width
                height: (parent.height - head.height)  / 5

                Label {
                    id: cLabel
                    width: parent.width / 10
                    height: parent.height
                    font.bold: true
                    color: Theme.highlightColor
                    text: "Free"
                }

                TextField {
                    id: c
                    width: parent.width - cLabel.width
                    height: parent.height
                    anchors.left: cLabel.right
                    horizontalAlignment: Text.AlignRight
                    placeholderText: "Enter C"
                    //text: "-1"
                    validator: IntValidator{}
                    inputMethodHints: Qt.ImhDigitsOnly
                }
            }

            Label {
                    id: d
                    width: parent.width
                    //font.weight: Font.Light
                    font.pointSize: 5
                    textFormat: Text.RichText
                    //Text.fontSizeMode: 15
                    property int discriminant: (parseInt(b.text) * parseInt(b.text) - 4 * parseInt(a.text) * parseInt(c.text))
                    text: "<b>D = </b>" + discriminant
             }

             Label {
                    id: x1
                    width: parent.width
                    //font.weight: Font.Light
                    textFormat: Text.RichText
                    property real x1var: ((-parseInt(b.text) + Math.sqrt(d.discriminant)) / (2 * parseInt(a.text)))
                    text: '<b>X1 = </b>' + x1var
             }

             Label {

                 id: x2
                 width: parent.width
                 textFormat: Text.RichText
                 property real x2var: ((-parseInt(b.text) - Math.sqrt(d.discriminant)) / (2 * parseInt(a.text)))
                 text: '<b>X2 = </b>' + x2var
            }

        }
   }

}
