#<center>Rethinking the Hybrid App Paradigm</center><br>


##AudioHost Cordova (iOS) plugin
###Map hotspots to trigger audio events.


Plugin KeyValues AudioHost AudioHost<br><br>
![image](https://github.com/RandyMcMillan/AudioHost/raw/master/keyValues.png)
<br><br><br>

###Cordova WebView.
![image](https://github.com/RandyMcMillan/AudioHost/raw/master/ScreenShots/iPadCDVLandscape.png)
###Display a view that has hotspots mapped to audio files.
![image](https://github.com/RandyMcMillan/AudioHost/raw/master/ScreenShots/iPadLandscape.png)
###Cordova WebView.
![image](https://github.com/RandyMcMillan/AudioHost/raw/master/ScreenShots/iPadCDVPortrait.png)
###Display a view that has hotspots mapped to audio files.
![image](https://github.com/RandyMcMillan/AudioHost/raw/master/ScreenShots/iPadPortrait.png)

###iPhone and iPad support
####Hotspots resize on orientation changes
![image](https://github.com/RandyMcMillan/AudioHost/raw/master/ScreenShots/iPhonePortrait.png)
![image](https://github.com/RandyMcMillan/AudioHost/raw/master/ScreenShots/iPhoneLandscape.png)

###Multiple view support. Each view can be mapped individually.
###Configured for multiple audio files (6 in each view but can be modified)
        keyRects[0] = CGRectMake([self view].bounds.size.width * 0.0,//derive xi
                                     [self view].bounds.size.height * 0.0,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );

Reference:

[https://github.com/RandyMcMillan/CBHideToolBar](https://github.com/RandyMcMillan/CBHideToolBar)

[https://github.com/RandyMcMillan/ModalCleaverSplitView3](https://github.com/RandyMcMillan/ModalCleaverSplitView3)

[https://github.com/RandyMcMillan/ModalCleaverSplitView2](https://github.com/RandyMcMillan/ModalCleaverSplitView2)

[https://github.com/RandyMcMillan/ModalCleaverSplitView](https://github.com/RandyMcMillan/ModalCleaverSplitView)

[https://github.com/RandyMcMillan/ModalCleaverView4
](https://github.com/RandyMcMillan/ModalCleaverView4
)

[https://github.com/RandyMcMillan/ModalCleaverView3
](https://github.com/RandyMcMillan/ModalCleaverView3
)

[https://github.com/RandyMcMillan/ModalCleaverView2
](https://github.com/RandyMcMillan/ModalCleaverView2
)

[https://github.com/RandyMcMillan/ModalCleaverView
](https://github.com/RandyMcMillan/ModalCleaverView
)


[https://github.com/RandyMcMillan/WikiCleaverView
](https://github.com/RandyMcMillan/WikiCleaverView
)

[https://github.com/RandyMcMillan/Cleaver-RSSReader
](https://github.com/RandyMcMillan/Cleaver-RSSReader
)



<br>

License
The MIT License (MIT) Copyright (c) 2012 Randy McMillan & Barry Ezell

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 

