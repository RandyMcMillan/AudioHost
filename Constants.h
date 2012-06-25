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
//  Constants.h
//  AudioHostDevProject
//
//  Created by Randy McMillan on 6/24/12.
//  Copyright (c) 2012 OpenOSX.org. All rights reserved.
//

#ifndef AudioHostDevProject_Constants_h
#define AudioHostDevProject_Constants_h
#endif

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define  kXOrientationAdjustiPad  0
#define  kYOrientationAdjustiPad  0

#define  kXOrientationAdjustiPhone  0
#define  kYOrientationAdjustiPhone  0

#import <Foundation/Foundation.h>

@interface Constants : NSObject {}

extern NSString * const kConstant;

@end
