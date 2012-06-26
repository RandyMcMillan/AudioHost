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


#import "AudioHostViewController0.h"
#import "Constants.h"

@implementation AudioHostViewController0
@synthesize mixerHost;
@synthesize supportedOrientations;

- (void)dealloc {
    [super dealloc];
    [mixerHost release];
}

#pragma mark - View lifecycle


///When UIWebView bounces this disables the subtle gradient
- (void) removeLabels:(UIView*)theView
{
    for (UIView * subview in theView.subviews)
    {
        if ([subview isKindOfClass:[UILabel class]])
            subview.hidden = YES;
        
        //[self removeLabels:subview];
    }
}


- (void)drawKeyRects {
    
    [self removeLabels:self.view];
    
    keyRects[0] = CGRectZero;
    keyRects[1] = CGRectZero;
    keyRects[2] = CGRectZero;
    keyRects[3] = CGRectZero;
    keyRects[4] = CGRectZero;
    keyRects[5] = CGRectZero;
    
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    if (IS_IPAD) {
        
        if (orientation > 2) {
            //NSLog(@"UIDeviceOrientationLandscapeLeft!");
            //define the "key" xylophone note rectangles
            keyRects[0] = CGRectMake([self view].bounds.size.width * 0.0,//derive xi
                                     [self view].bounds.size.height * 0.0,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[1] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.16,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[2] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.32,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[3] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.48,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[4] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.64,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[5] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.80,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
        }
        else
        {
            //NSLog(@"UIDeviceOrientationPortrait!");
            //define the "key" xylophone note rectangles
            keyRects[0] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.0 + kYOrientationAdjustiPad,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[1] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.16 + kYOrientationAdjustiPad,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[2] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.32 + kYOrientationAdjustiPad,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[3] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.48 + kYOrientationAdjustiPad,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[4] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.64 + kYOrientationAdjustiPad,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[5] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.80 + kYOrientationAdjustiPad,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
        }
    }//end IS_IPAD
    else
    {
        if (orientation > 2) {
            //NSLog(@"UIDeviceOrientationLandscapeLeft!");
            //define the "key" xylophone note rectangles
            keyRects[0] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjustiPhone,//derive xi
                                     [self view].bounds.size.height * 0.0,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[1] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjustiPhone,//derive x
                                     [self view].bounds.size.height * 0.16,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[2] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjustiPhone,//derive x
                                     [self view].bounds.size.height * 0.32,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[3] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjustiPhone,//derive x
                                     [self view].bounds.size.height * 0.48,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[4] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjustiPhone,//derive x
                                     [self view].bounds.size.height * 0.64,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[5] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjustiPhone,//derive x
                                     [self view].bounds.size.height * 0.80,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
        }
        else
        {
            //NSLog(@"UIDeviceOrientationPortrait!");
            //define the "key" xylophone note rectangles
            keyRects[0] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.0 + kYOrientationAdjustiPhone,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[1] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.16 + kYOrientationAdjustiPhone,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[2] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.32 + kYOrientationAdjustiPhone,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[3] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.48 + kYOrientationAdjustiPhone,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[4] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.64 + kYOrientationAdjustiPhone,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            keyRects[5] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.height * 0.80 + kYOrientationAdjustiPhone,//derive y
                                     [self view].bounds.size.width * 1.0,//span across entire screen
                                     [self view].bounds.size.height * 0.16// 1/6th width of screen
                                     );
            
        } //End IS_IPHONE
        
    }
    
    
#if TARGET_IPHONE_SIMULATOR
    
    //For your convience in configuring keyRects. Pink Transparencies only displayed in Simulator 
    
    UILabel *label0 = [ [UILabel alloc ] initWithFrame:keyRects[0] ];
    label0.numberOfLines = 3;
    label0.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:0.839 alpha:0.500];
    label0.text = [NSString stringWithFormat: @"keyRect[0]\nOnly displayed in Simulator"];
    
    UILabel *label1 = [ [UILabel alloc ] initWithFrame:keyRects[1] ];
    label1.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:0.839 alpha:0.500];
    label1.text = [NSString stringWithFormat: @"keyRect[1]"];
    
    UILabel *label2 = [ [UILabel alloc ] initWithFrame:keyRects[2] ];
    label2.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:0.839 alpha:0.500];
    label2.text = [NSString stringWithFormat: @"keyRect[2]"];
    
    UILabel *label3 = [ [UILabel alloc ] initWithFrame:keyRects[3] ];
    label3.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:0.839 alpha:0.500];
    label3.text = [NSString stringWithFormat: @"keyRect[3]"];
    
    UILabel *label4 = [ [UILabel alloc ] initWithFrame:keyRects[4] ];
    label4.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:0.839 alpha:0.500];
    label4.text = [NSString stringWithFormat: @"keyRect[4]"];
    
    UILabel *label5 = [ [UILabel alloc ] initWithFrame:keyRects[5] ];
    label5.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:0.839 alpha:0.500];
    label5.text = [NSString stringWithFormat: @"keyRect[5]"];
    
    
    [self.view addSubview:label0];
    [self.view addSubview:label1];
    [self.view addSubview:label2];
    [self.view addSubview:label3];
    [self.view addSubview:label4];
    [self.view addSubview:label5];
    
#endif
    
    
}

- (void)viewDidLoad {
    
    [self drawKeyRects];
    
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(didRotate:)
                                                 name:UIDeviceOrientationDidChangeNotification object:nil];
    
    
    //create the mixer
    self.mixerHost = [[MixerHostAudio alloc] init];
    //start the audio graph
    [mixerHost startAUGraph];
    
    [super viewDidLoad];
    
}


- (void) didRotate:(NSNotification *)notification {
    
    [self drawKeyRects];
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    if (orientation == UIDeviceOrientationLandscapeLeft) {}
    if (orientation == UIDeviceOrientationLandscapeRight) {}
    if (orientation == UIDeviceOrientationPortrait) {}
    if (orientation == UIDeviceOrientationPortraitUpsideDown) {}
    
}

- (void)viewDidUnload {
    [mixerHost stopAUGraph];
    [mixerHost dealloc];    
    [super viewDidUnload];
    
}

// Handle a change in the mixer output gain slider.
- (IBAction) mixerOutputGainChanged: (UISlider *) sender {
    [mixerHost setMixerOutputGain: (AudioUnitParameterValue) sender.value];
}

#pragma mark -
#pragma mark Touch events

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *aTouch = [touches anyObject];
    int idx = [self keyIndexForTouch:aTouch];
    
    if (idx >= 0) {
        if ([mixerHost playNote:idx] == YES) {
            lastKeyIndex = idx;
        }
    }
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    lastKeyIndex = -1;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *aTouch = [touches anyObject];
    int idx = [self keyIndexForTouch:aTouch];
    
    if (idx >= 0 && idx != lastKeyIndex) {
        if ([mixerHost playNote:idx] == YES) {
            lastKeyIndex = idx;
        }
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    lastKeyIndex = -1;
}

- (int)keyIndexForTouch:(UITouch *)touch {
    int keyIndex = -1;
    CGPoint pt = [touch locationInView:self.view];
    
    for (int i=0; i<KEY_COUNT; i++) {
        CGRect rect = keyRects[i];
        if (CGRectContainsPoint(rect, pt)) {
            keyIndex = i;
            break;
        }
    }
    
    return keyIndex;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [self viewManagement:self.view];
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

///When UIWebView bounces this disables the subtle gradient
- (void) viewManagement:(UIView*)theView
{
    for (UIView * subview in theView.subviews)
    {
        if ([subview isKindOfClass:[UIImage class]])
            subview.hidden = YES;
        
        [self removeLabels:subview];
    }
}



-(IBAction) onDoneButtonPress:(id)sender {
    
    NSLog(@"Done Button Press");
    
    if ([self respondsToSelector:@selector(presentingViewController)]) { 
        [[self presentingViewController] dismissViewControllerAnimated:YES completion:nil];
    } else {
        [[self parentViewController] dismissModalViewControllerAnimated:YES];
    }
    
    [self viewManagement:self.view];
    
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    
    BOOL autoRotate = [self.supportedOrientations count] > 1; // autorotate if only more than 1 orientation supported
    if (autoRotate)
    {
        if ([self.supportedOrientations containsObject:
             [NSNumber numberWithInt:interfaceOrientation]]) {
            return YES;
        }
    }
    
    return NO;
    
}

@end
