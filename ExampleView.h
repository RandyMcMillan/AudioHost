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

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>

@interface ExampleView : UIImageView
{
    // These two arrays define the gradient that will be used
    // when the button is in UIControlStateNormal
    NSArray *normalGradientColors;      // Colors
    NSArray *normalGradientLocations;   // Relative locations

    // These two arrays define the gradient that will be used
    // when the button is in UIControlStateHighlighted
    NSArray *highlightGradientColors;       // Colors
    NSArray *highlightGradientLocations;    // Relative locations

    // This defines the corner radius of the button
    CGFloat cornerRadius;

    // This defines the size and color of the stroke
    CGFloat strokeWeight;
    UIColor *strokeColor;

    @private
    CGGradientRef   normalGradient;
    CGGradientRef   highlightGradient;
}
@property (nonatomic, retain) NSArray   *normalGradientColors;
@property (nonatomic, retain) NSArray   *normalGradientLocations;
@property (nonatomic, retain) NSArray   *highlightGradientColors;
@property (nonatomic, retain) NSArray   *highlightGradientLocations;
@property (nonatomic) CGFloat           cornerRadius;
@property (nonatomic) CGFloat           strokeWeight;
@property (nonatomic, retain) UIColor   *strokeColor;

- (void)useWelcomeStyle;
- (void)useGrandStaffStyle;
- (void)useCircleStyle;

@end
