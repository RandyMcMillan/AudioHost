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

#import <Cordova/CDVAvailability.h>
#import <Cordova/CDVViewController.h>
#import <Cordova/CDVDebug.h>
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

- (void) init:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {

    NSString *callbackId = [arguments pop];
    //NSString *objectAtIndex0 = [arguments objectAtIndex:0];

    CDVViewController* mvcAudioHost_ = (CDVViewController*)[ super viewController ];
    NSString* jsString = kAudioHost_INIT;
    [mvcAudioHost_.webView stringByEvaluatingJavaScriptFromString:jsString];

    NSString *resultType = [arguments objectAtIndex:0];
    CDVPluginResult *result;

    if ( [resultType isEqualToString:@"success"] ) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @"Success! const kAudioHost_ALERT was evaluated by webview and created alert!"];

        NSLog(@"callbackId = '%@'",callbackId);
        [self writeJavascript:[result toSuccessCallbackString:callbackId]];
    }
    else
    {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @"resultType = 'error'! const kAudioHost_ALERT was evaluated by webview and created alert!"];

        NSLog(@"callbackId = '%@'",callbackId);
        [self writeJavascript:[result toErrorCallbackString:callbackId]];
    }
}

- (void) loadHostView:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {
    //NSString *callbackId = [arguments pop];
    NSString *objectAtIndex0 = [arguments objectAtIndex:0];
    NSLog(@"objectAtIndex0 = '%@'",objectAtIndex0);
 
    CDVViewController* mvcAudioHost_ = (CDVViewController*)[ super viewController ];
    if (IS_IPAD) {
        mvcAudioHost_.modalPresentationStyle = UIModalPresentationPageSheet;
    } else {
        mvcAudioHost_.modalPresentationStyle = UIModalPresentationFullScreen;
    }
 
    
    AudioHostViewController *audioHostView = [AudioHostViewController new];
    audioHostView.view.bounds = mvcAudioHost_.view.bounds;
    audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
    audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
    mvcAudioHost_.view.autoresizesSubviews = YES;
    [audioHostView drawKeyRects];//prime dimensions for first draw
    [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];

    NSString *selectedView = [arguments objectAtIndex:0];
    NSLog(@"%@",selectedView);
   // CDVPluginResult *result;
    
    if ( [selectedView isEqualToString:@"0"] ) {
        
        AudioHostViewController0 *audioHostView = [AudioHostViewController0 new];
        audioHostView.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];
    
    }
    else if ( [selectedView isEqualToString:@"1"] ) {
    
        AudioHostViewController1 *audioHostView = [AudioHostViewController1 new];
        audioHostView.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];
    
    }
    else if ( [selectedView isEqualToString:@"2"] ) {
    
        AudioHostViewController2 *audioHostView = [AudioHostViewController2 new];
        audioHostView.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];
    
    }
    else if ( [selectedView isEqualToString:@"3"] ) {
    
        AudioHostViewController3 *audioHostView = [AudioHostViewController3 new];
        audioHostView.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];
    }
    else if ( [selectedView isEqualToString:@"4"] ) {
    
        AudioHostViewController4 *audioHostView = [AudioHostViewController4 new];
        audioHostView.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];
    }
    else if ( [selectedView isEqualToString:@"5"] ) {
    
        AudioHostViewController5 *audioHostView = [AudioHostViewController5 new];
        audioHostView.view.bounds = mvcAudioHost_.view.bounds;
        audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
        audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
        mvcAudioHost_.view.autoresizesSubviews = YES;
        [audioHostView drawKeyRects];//prime dimensions for first draw
        [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];
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




}


- (void) nativeFunction:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {

    NSLog(@"Hello, this is a native function called from AudioHost!");

    //get the callback id
    NSString *callbackId = [arguments pop];
    NSString *objectAtIndex0 = [arguments objectAtIndex:0];
    NSLog(@"objectAtIndex0 = '%@'",objectAtIndex0);

/*
    NSString *objectAtIndex1 = [arguments objectAtIndex:1];
    NSLog(@"objectAtIndex1 = '%@'",objectAtIndex1);
*/
    NSLog(@"kAudioHost_ALERT = %@",kAudioHost_ALERT);

    CDVViewController* mvcAudioHost_ = (CDVViewController*)[ super viewController ];
    AudioHostViewController *audioHostView = [AudioHostViewController new];
    audioHostView.view.bounds = mvcAudioHost_.view.bounds;

    if (IS_IPAD) {

    mvcAudioHost_.modalPresentationStyle = UIModalPresentationPageSheet;

    } else {
//
    mvcAudioHost_.modalPresentationStyle = UIModalPresentationFullScreen;
 
    }

    audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
    audioHostView.supportedOrientations = mvcAudioHost_.supportedOrientations;
    mvcAudioHost_.view.autoresizesSubviews = YES;

    [audioHostView drawKeyRects];//prime dimensions for first draw

    [mvcAudioHost_ presentModalViewController:audioHostView animated:YES];

    NSLog(@"mvcAudioHost_ = %@",mvcAudioHost_);
    NSLog(@"mvcAudioHost_.view = %@",mvcAudioHost_.view);
    NSLog(@"mvcAudioHost_.webView = %@",mvcAudioHost_.webView);

//    mvcAudioHost_.webView.alpha = 0.5;

    NSString* jsString = kAudioHost_ALERT;
    [mvcAudioHost_.webView stringByEvaluatingJavaScriptFromString:jsString];

    NSString *resultType = [arguments objectAtIndex:0];
    NSLog(@"%@",resultType);
    CDVPluginResult *result;

    if ( [resultType isEqualToString:@"success"] ) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @"Success! const kAudioHost_ALERT was evaluated by webview and created alert!"];

        NSLog(@"callbackId = '%@'",callbackId);
        [self writeJavascript:[result toSuccessCallbackString:callbackId]];
    }
    else
    {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @"resultType = 'error'! const kAudioHost_ALERT was evaluated by webview and created alert!"];

        NSLog(@"callbackId = '%@'",callbackId);
        [self writeJavascript:[result toErrorCallbackString:callbackId]];
    }
}

@end
