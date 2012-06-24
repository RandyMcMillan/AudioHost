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


#import <Cordova/CDVAvailability.h>
#import <Cordova/CDVViewController.h>
#import <Cordova/CDVDebug.h>
#import "Constants.h"
#import "AudioHost.h"
#import "AudioHost_JS.h"
#import "AudioHostViewController.h"


@implementation AudioHost

- (void) init:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {

//    NSLog(@"AudioHost.m LINE:32 - %@", kAudioHost_INIT);

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
    //[mvcAudioHost_.view autoresizesSubviews];
    AudioHostViewController *audioHostView = [AudioHostViewController new];
    //audioHostView.view.bounds = mvcAudioHost_.view.bounds;
    //[mvcAudioHost_.view addSubview:audioHostView.view];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(closeCleaverView:)
     forControlEvents:UIControlEventTouchUpInside];
    
    [button setTitle:@"Close"
            forState:UIControlStateNormal];
    
    button.autoresizingMask = ( UIViewAutoresizingFlexibleWidth |
                               UIViewAutoresizingFlexibleLeftMargin |
                               UIViewAutoresizingFlexibleRightMargin |
                               UIViewAutoresizingFlexibleBottomMargin );
    
    
    if (IS_IPAD)
    {
        int x = [UIScreen mainScreen].bounds.size.width * 0.885;
        int y = [UIScreen mainScreen].bounds.size.height * 0.004;
        button.frame = CGRectMake(x, y, 85.0, 35.0);
    }
    
    else 
    {
        
        int x = [UIScreen mainScreen].bounds.size.width * 0.775;
        int y = [UIScreen mainScreen].bounds.size.height * 0.010;
        button.frame = CGRectMake(x, y, 70.0, 35.0);
    }

    
    
    mvcAudioHost_.modalPresentationStyle = UIModalPresentationFullScreen;
    //mvcAudioHost_.modalPresentationStyle = UIModalPresentationPageSheet;
    audioHostView.modalPresentationStyle = mvcAudioHost_.modalPresentationStyle;
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
