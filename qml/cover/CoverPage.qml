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


CoverBackground {

    Column {
        width: parent.width
        height: parent.height

        Label {
            id: head
            height: parent.height / 5
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignVCenter
            font.bold: true
            color: Theme.highlightColor
            text: "KvadraaSolve"

        }

        Label {
            id: equcov
            height: parent.height / 5
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignVCenter
            textFormat: Text.RichText
            font.bold: true
            color: Theme.highlightColor
            text: getEqu()
            wrapMode: Text.WordWrap
        }

        Label {
            id: dcov
            horizontalAlignment: Text.AlignLeft
            text: getD()
            wrapMode: Text.WordWrap
        }

        Label {
            id: x1cov
            horizontalAlignment: Text.AlignLeft
            text: getX1()
            wrapMode: Text.WordWrap
        }

        Label {
            id: x2cov
            horizontalAlignment: Text.AlignLeft
            text: getX2()
            wrapMode: Text.WordWrap
        }
    }
   /*CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-cancel"
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-pause"
        }
    }*/
}

