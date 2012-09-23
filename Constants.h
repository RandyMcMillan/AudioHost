/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */
//
//  Created by Randy McMillan on 6/24/12.
//  Copyright OpenOSX.org 2012. All rights reserved.
//
#define kLeftMargin                 20.0
#define kTopMargin                  20.0
#define kRightMargin                20.0
#define kTweenMargin                6.0

#define kTextFieldHeight            30.0

//#define KEY_COUNT                   26
//#define FILE_COUNT  6
//#define BUS_COUNT   12

#define VIEWBOUNDS                  [[UIScreen mainScreen] bounds]

#ifndef IS_IPAD
  #define IS_IPAD                   (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#endif

#define BIGBOXWIDTH                 90
#define BIGBOXHEIGHT                90
#define SMALLBOXWIDTH               50
#define SMALLBOXHEIGHT              50

#define WELCOMEWIDTH                512
#define WELCOMEHEIGHT               512

#define GRANDSTAFFEXAMPLEWIDTH      703
#define GRANDSTAFFEXAMPLEHEIGHT     768

#define CIRCLEWIDTH                 725
#define CIRCLEHEIGHT                725

#ifndef kXOrientationAdjustiPad
  #define kXOrientationAdjustiPad   0
#endif

#ifndef kYOrientationAdjustiPad
  #define kYOrientationAdjustiPad 0
#endif

#ifndef kXOrientationAdjustiPhone
  #define kXOrientationAdjustiPhone 0
#endif

#ifndef kYOrientationAdjustiPhone
  #define kYOrientationAdjustiPhone 0
#endif

#define DO                          [UIColor colorWithRed : 1.000 green : 1.000 blue : 0.043 \
        alpha : 1.000]
#define DI                          [UIColor colorWithRed : 0.408 green : 0.792 blue : 0.075 \
        alpha : 1.000]
#define RE                          [UIColor colorWithRed : 0.094 green : 0.518 blue : 0.039 \
        alpha : 1.000]
#define RI                          [UIColor colorWithRed : 0.286 green : 1.000 blue : 0.902 \
        alpha : 1.000]
#define MI                          [UIColor colorWithRed : 0.000 green : 0.000 blue : 1.000 \
        alpha : 1.000]
#define FA                          [UIColor colorWithRed : 0.188 green : 0.000 blue : 0.596 \
        alpha : 1.000]
#define FI                          [UIColor colorWithRed : 0.278 green : 0.000 blue : 0.596 \
        alpha : 1.000]
#define SOL                         [UIColor colorWithRed : 0.459 green : 0.000 blue : 0.749 \
        alpha : 1.000]
#define SI                          [UIColor colorWithRed : 0.635 green : 0.000 blue : 0.412 \
        alpha : 1.000]
#define LA                          [UIColor colorWithRed : 0.733 green : 0.000 blue : 0.082 \
        alpha : 1.000]
#define LI                          [UIColor colorWithRed : 0.831 green : 0.247 blue : 0.059 \
        alpha : 1.000]
#define TI                          [UIColor colorWithRed : 0.992 green : 0.518 blue : 0.129 \
        alpha : 1.000]

#define TWITTER_URL                 @ "http://api.twitter.com/1/"
