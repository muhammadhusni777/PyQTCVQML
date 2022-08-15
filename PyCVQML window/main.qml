

import QtQuick 2.5//2.15
import QtQuick.Window 2.2 //2.15
import QtQuick.Controls 1.4//2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0

import QtQuick 2.12
import QtQuick.Window 2.13
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0

//import QtQuick 2.0
import QtCharts 2.1

import QtQuick 2.0
import PyCVQML 1.0
//import Filters 1.0

Window {
   id : root
	width: 400
	maximumWidth : 400
	minimumWidth : width
    height: 400
	maximumHeight : 800
	minimumHeight : height
	title:"PyCVQML"
	color : "#FF96C5"
    visible: true
    //flags: Qt.WindowMaximized //Qt.Dialog
	
	Rectangle{
	
	width: 300
    height: 300
	
	
    CVItem  {
        id: imageWriter
        anchors.fill: parent
        image: capture.image
    }
	
	/*

    MaxRGBFilter{
        id: max_rgb_filter
    }
    GrayFilter{
        id: gray_filter
    }

	*/

    CVCapture{
        id: capture
        index: 0
        filters: []//[max_rgb_filter, gray_filter]
        Component.onCompleted: capture.start()
    }
	}
	
	
	
	
}