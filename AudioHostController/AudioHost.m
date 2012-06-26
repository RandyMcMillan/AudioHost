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

//#import <Cordova/CDVAvailability.h>
#import <Cordova/CDVViewController.h>
//#import <Cordova/CDVDebug.h>
#import "Constants.h"
#import "AudioHost.h"
#import "AudioHost_JS.h"
#import "AudioHostViewController.h"
#import "AudioHostViewController0.h"
#import "AudioHostViewController1.h"
#import "AudioHostViewController2.h"
#import "AudioHostViewController3.h"
#import "AudioHostViewController4.h"
#import "AudioHostViewController5.h"


@implementation AudioHost

- (void) init:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {}

- (void) loadHostView:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {
    //NSString *callbackId = [arguments pop];
    //NSString *objectAtIndex0 = [arguments objectAtIndex:0];
    //NSLog(@"objectAtIndex0 = '%@'",objectAtIndex0);
 
    CDVViewController* mvcAudioHost_ = (CDVViewController*)[ super viewController ];
    if (IS_IPAD) {
        mvcAudioHost_.modalPresentationStyle = UIModalPresentationPageSheet;
    } else {
        mvcAudioHost_.modalPresentationStyle = UIModalPresentationFullScreen;
    }
 
    NSLog(@"%@",[arguments objectAtIndex:1]);
    NSString *selectedView = [arguments objectAtIndex:1];
    NSLog(@"\n\n\n\n\n\n\n\n\n\n\nselectedView = %@ \n\n\n\n\n\n\n\n\n\n\n\n\n",selectedView);
   // CDVPluginResult *result;
    
    if ( [selectedView isEqualToString:@"0"] ) {
        
        AudioHostViewController0 *audioHostView0 = [AudioHostViewController0 new];
        audioHostView0.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView0.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView0.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView0 drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView0 animated:YES];
    
    }
    else if ( [selectedView isEqualToString:@"1"] ) {
    
        AudioHostViewController1 *audioHostView1 = [AudioHostViewController1 new];
        audioHostView1.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView1.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView1.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView1 drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView1 animated:YES];
    
    }
    else if ( [selectedView isEqualToString:@"2"] ) {
    
        AudioHostViewController2 *audioHostView2 = [AudioHostViewController2 new];
        audioHostView2.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView2.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView2.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView2 drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView2 animated:YES];
    
    }
    else if ( [selectedView isEqualToString:@"3"] ) {
    
        AudioHostViewController3 *audioHostView3 = [AudioHostViewController3 new];
        audioHostView3.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView3.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView3.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView3 drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView3 animated:YES];
    }
    else if ( [selectedView isEqualToString:@"4"] ) {
    
        AudioHostViewController4 *audioHostView4 = [AudioHostViewController4 new];
        audioHostView4.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView4.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView4.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView4 drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView4 animated:YES];
    }
    else if ( [selectedView isEqualToString:@"5"] ) {
    
        AudioHostViewController5 *audioHostView5 = [AudioHostViewController5 new];
        audioHostView5.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView5.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView5.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView5 drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView5 animated:YES];
    }
    else {
        NSLog(@"\n ***** All else failed! AudioHost.m Line: 159 ***** \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ***** All else failed! AudioHost.m Line: 159 ***** \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ***** All else failed! AudioHost.m Line: 159 ***** "); 
        AudioHostViewController *audioHostView = [AudioHostViewController new];
        audioHostView.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];

    }


};


- (void) nativeFunction:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {

    NSLog(@"Hello, this is a native function called from AudioHost!");

   }


- (void) dealloc {

    [self dealloc];
	[super dealloc];
}


@end
