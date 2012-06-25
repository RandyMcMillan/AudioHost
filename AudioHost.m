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
