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
//
//  Created by Randy McMillan on 6/24/12.
//  Copyright OpenOSX.org 2012. All rights reserved.
//
//
//  Created by Barry Ezell on 6/13/11.
//  Copyright 2011 DOCKMARKET LLC. All rights reserved.
//

#ifdef CORDOVA_FRAMEWORK
#import <Cordova/CDVPlugin.h>
#else
#import "Cordova/CDVPlugin.h"
#endif
#import <UIKit/UIKit.h>
#import "MixerHostAudio.h"

#import "Constants.h"


//#define KEY_COUNT 6 //Now in Constants.h

@interface AudioHostViewController2 : UIViewController {
    int                 lastKeyIndex;
    CGRect              keyRects[KEY_COUNT];
    IBOutlet UIButton* doneButton;

}

@property (nonatomic, assign) MixerHostAudio *mixerHost;
@property (nonatomic, retain) NSArray* supportedOrientations;

- (int)keyIndexForTouch:(UITouch *)touch;
- (IBAction) mixerOutputGainChanged: (UISlider *) sender;
- (IBAction)onDoneButtonPress:(id)sender;
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation;
- (void)drawKeyRects;

@end
