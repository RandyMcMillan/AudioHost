#AudioHost Cordova (iOS) plugin
###Map hotspots to trigger audio events.


This is a basic version of the code being used in the YouTube video.
Knowledge of ObjC is needed to get the most out of this plugin.

Plugin KeyValues AudioHost AudioHost<br><br>
![image](https://github.com/RandyMcMillan/AudioHost/raw/master/keyValues.png)
<br><br><br>

###Cordova WebView.
![image](https://raw.github.com/RandyMcMillan/AudioHost/master/ScreenShots/iOS%20Simulator%20Screen%20shot%20Sep%2022,%202012%209.35.41%20PM.png)
###Display a view that has hotspots mapped to audio files.
![image](https://raw.github.com/RandyMcMillan/AudioHost/master/ScreenShots/iOS%20Simulator%20Screen%20shot%20Sep%2022,%202012%209.35.43%20PM.png)
###Cordova WebView.
![image](https://raw.github.com/RandyMcMillan/AudioHost/master/ScreenShots/iOS%20Simulator%20Screen%20shot%20Sep%2022,%202012%209.35.48%20PM.png)
###Display a view that has hotspots mapped to audio files.
![image](https://raw.github.com/RandyMcMillan/AudioHost/master/ScreenShots/iOS%20Simulator%20Screen%20shot%20Sep%2022,%202012%209.35.50%20PM.png)

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


<br>

License
The MIT License (MIT) Copyright (c) 2012 Randy McMillan & Barry Ezell

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 

