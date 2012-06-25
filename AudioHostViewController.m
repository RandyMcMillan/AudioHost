//
//  AppleXylophone.m
//  AudioMeetupDemo
//
//  Created by Barry Ezell on 6/13/11.
//  Copyright 2011 DOCKMARKET LLC. All rights reserved.
//


#import "Cordova/CDVViewController.h"
#import "AudioHostViewController.h"
#import "Constants.h"

@implementation AudioHostViewController
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
        //

        if (orientation > 2) {
            NSLog(@"UIDeviceOrientationLandscapeLeft!");

            //define the "key" xylophone note rectangles
            keyRects[0] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive xi
                                     [UIScreen mainScreen].bounds.size.width * 0.0,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );

            keyRects[1] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.16,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );

            keyRects[2] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.32,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );

            keyRects[3] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.48,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );

            keyRects[4] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.64,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );

            keyRects[5] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.80,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
        }

        else

        {
            NSLog(@"UIDeviceOrientationPortrait!");

            //define the "key" xylophone note rectangles
            keyRects[0] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.width * 0.0 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[1] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.16 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[2] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.32 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[3] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.48 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[4] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.64 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[5] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.80 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
        }
    }//end IS_IPAD
    else
    {
        if (orientation > 2) {
            NSLog(@"UIDeviceOrientationLandscapeLeft!");
            
            //define the "key" xylophone note rectangles
            keyRects[0] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0 + kXOrientationAdjust,//derive xi
                                     [UIScreen mainScreen].bounds.size.width * 0.0,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[1] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.16,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[2] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.32,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[3] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.48,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[4] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.64,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[5] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.80,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
        }
        else
        {
            NSLog(@"UIDeviceOrientationPortrait!");
            //define the "key" xylophone note rectangles
            keyRects[0] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [self view].bounds.size.width * 0.0 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[1] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.16 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[2] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.32 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[3] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.48 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[4] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.64 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );
            keyRects[5] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                                     [UIScreen mainScreen].bounds.size.width * 0.80 + kYOrientationAdjust,//derive y
                                     [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                                     [UIScreen mainScreen].bounds.size.width * 0.16// 1/6th width of screen
                                     );

        }




    }

    /* 
     //define the "key" xylophone note rectangles
     keyRects[0] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
     [self view].bounds.size.width * 0.0 + yOrientationAdjust,//derive y
     [self view].bounds.size.width * 1.0,//span across entire screen
     [self view].bounds.size.width * 0.16// 1/6th width of screen
     );
     
     keyRects[1] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
     [self view].bounds.size.width * 0.16 + yOrientationAdjust,//derive y
     [self view].bounds.size.width * 1.0,//span across entire screen
     [self view].bounds.size.width * 0.16// 1/6th width of screen
     );
     
     keyRects[2] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
     [self view].bounds.size.width * 0.32 + yOrientationAdjust,//derive y
     [self view].bounds.size.width * 1.0,//span across entire screen
     [self view].bounds.size.width * 0.16// 1/6th width of screen
     );
     
     keyRects[3] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
     [self view].bounds.size.width * 0.48 + yOrientationAdjust,//derive y
     [self view].bounds.size.width * 1.0,//span across entire screen
     [self view].bounds.size.width * 0.16// 1/6th width of screen
     );
     
     keyRects[4] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
     [self view].bounds.size.width * 0.64 + yOrientationAdjust,//derive y
     [self view].bounds.size.width * 1.0,//span across entire screen
     [self view].bounds.size.width * 0.16// 1/6th width of screen
     );
     
     keyRects[5] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
     [self view].bounds.size.width * 0.80 + yOrientationAdjust,//derive y
     [self view].bounds.size.width * 1.0,//span across entire screen
     [self view].bounds.size.width * 0.16// 1/6th width of screen
     );
 
 
 
     */



#if TARGET_IPHONE_SIMULATOR
    //For your convience in configuring keyRects 
    
    UILabel *label0 = [ [UILabel alloc ] initWithFrame:keyRects[0] ];
    label0.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:0.839 alpha:0.500];
    label0.text = [NSString stringWithFormat: @"keyRect[0]"];
    
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
    
    self.view.bounds = [UIScreen mainScreen].bounds;
    
    [self drawKeyRects];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(didRotate:)name:UIDeviceOrientationDidChangeNotification object:nil];

    
    
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(onDoneButtonPress:)
     forControlEvents:UIControlEventTouchUpInside];
    
    [button setTitle:@"Close"
            forState:UIControlStateNormal];
    
    button.autoresizingMask = ( UIViewAutoresizingFlexibleWidth |
                               UIViewAutoresizingFlexibleLeftMargin |
                               UIViewAutoresizingFlexibleRightMargin |
                               UIViewAutoresizingFlexibleBottomMargin );
    
   
  /*  
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    
    
    if ((orientation = UIDeviceOrientationLandscapeLeft | UIDeviceOrientationLandscapeRight)) {
        NSLog(@"UIDeviceOrientationLandscapeLeft!");
        
        //define the "key" xylophone note rectangles
        keyRects[0] = CGRectMake([self view].bounds.size.width * 0.0,//derive xi
                                 [self view].bounds.size.width * 0.0,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[1] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                 [self view].bounds.size.width * 0.16,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[2] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                 [self view].bounds.size.width * 0.32,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[3] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                 [self view].bounds.size.width * 0.48,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[4] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                 [self view].bounds.size.width * 0.64,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[5] = CGRectMake([self view].bounds.size.width * 0.0,//derive x
                                 [self view].bounds.size.width * 0.80,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );

        
        
    }
    
    
    
    if ((orientation = UIDeviceOrientationPortrait | UIDeviceOrientationPortraitUpsideDown)) {
        NSLog(@"UIDeviceOrientationPortrait!");
        
        //define the "key" xylophone note rectangles
        keyRects[0] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                 [self view].bounds.size.width * 0.0 + kYOrientationAdjust,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[1] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                 [self view].bounds.size.width * 0.16 + kYOrientationAdjust,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[2] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                 [self view].bounds.size.width * 0.32 + kYOrientationAdjust,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[3] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                 [self view].bounds.size.width * 0.48 + kYOrientationAdjust,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[4] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                 [self view].bounds.size.width * 0.64 + kYOrientationAdjust,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );
        
        keyRects[5] = CGRectMake([self view].bounds.size.width * 0.0 + kXOrientationAdjust,//derive x
                                 [self view].bounds.size.width * 0.80 + kYOrientationAdjust,//derive y
                                 [self view].bounds.size.width * 1.0,//span across entire screen
                                 [self view].bounds.size.width * 0.16// 1/6th width of screen
                                 );

        
        
    }
    
    //define the "key" xylophone note rectangles
    keyRects[0] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
                             [self view].bounds.size.width * 0.0 + yOrientationAdjust,//derive y
                             [self view].bounds.size.width * 1.0,//span across entire screen
                             [self view].bounds.size.width * 0.16// 1/6th width of screen
                             );
    
    keyRects[1] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
                             [self view].bounds.size.width * 0.16 + yOrientationAdjust,//derive y
                             [self view].bounds.size.width * 1.0,//span across entire screen
                             [self view].bounds.size.width * 0.16// 1/6th width of screen
                             );

    keyRects[2] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
                             [self view].bounds.size.width * 0.32 + yOrientationAdjust,//derive y
                             [self view].bounds.size.width * 1.0,//span across entire screen
                             [self view].bounds.size.width * 0.16// 1/6th width of screen
                             );
    
    keyRects[3] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
                             [self view].bounds.size.width * 0.48 + yOrientationAdjust,//derive y
                             [self view].bounds.size.width * 1.0,//span across entire screen
                             [self view].bounds.size.width * 0.16// 1/6th width of screen
                             );
    
    keyRects[4] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
                             [self view].bounds.size.width * 0.64 + yOrientationAdjust,//derive y
                             [self view].bounds.size.width * 1.0,//span across entire screen
                             [self view].bounds.size.width * 0.16// 1/6th width of screen
                             );
    
    keyRects[5] = CGRectMake([self view].bounds.size.width * 0.0 + xOrientationAdjust,//derive x
                             [self view].bounds.size.width * 0.80 + yOrientationAdjust,//derive y
                             [self view].bounds.size.width * 1.0,//span across entire screen
                             [self view].bounds.size.width * 0.16// 1/6th width of screen
                             );
    
    

*/


/*
#if TARGET_IPHONE_SIMULATOR
   //For your convience in configuring keyRects 

    UILabel *label0 = [ [UILabel alloc ] initWithFrame:keyRects[0] ];
    label0.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:0.839 alpha:0.500];
    label0.text = [NSString stringWithFormat: @"keyRect[0]"];
    
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
    
    
 */
    
    [super viewDidLoad];
;

   /* 
    keyRects[1] = CGRectMake(55, 304, [UIScreen mainScreen].bounds.size.width * 1.0, 42);
    keyRects[2] = CGRectMake(55, 258, [UIScreen mainScreen].bounds.size.width * 1.0, 44);
    keyRects[3] = CGRectMake(55, 213, [UIScreen mainScreen].bounds.size.width * 1.0, 44);
    keyRects[4] = CGRectMake(55, 166, [UIScreen mainScreen].bounds.size.width * 1.0, 44);
    keyRects[5] = CGRectMake(55, 43,  [UIScreen mainScreen].bounds.size.width * 1.0, 121);
    */
    
    //}
    
    //else {
        //
    //}
    
    //create the mixer
    self.mixerHost = [[MixerHostAudio alloc] init];
    
    //start the audio graph
    [mixerHost startAUGraph];
}


- (void) didRotate:(NSNotification *)notification {

    [self drawKeyRects];
    
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
 
    if (orientation == UIDeviceOrientationLandscapeLeft) {
        NSLog(@"UIDeviceOrientationLandscapeLeft!");
        //your code here
        
    }
    
    if (orientation == UIDeviceOrientationLandscapeRight) {
        NSLog(@"UIDeviceOrientationLandscapeRight!");
        //your code here
        
    }

    
    if (orientation == UIDeviceOrientationPortrait) {
        NSLog(@"UIDeviceOrientationPortrait!");
        //your code here
        
    }

    
    if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        NSLog(@"UIDeviceOrientationPortraitUpsideDown!");
        //your code here
        
    }

    
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


-(IBAction) onDoneButtonPress:(id)sender {
    
    NSLog(@"Done Button Press");
    
    if ([self respondsToSelector:@selector(presentingViewController)]) { 
        //Reference UIViewController.h Line:179 for update to iOS 5 difference - @RandyMcMillan
        [[self presentingViewController] dismissViewControllerAnimated:YES completion:nil];
    } else {
        [[self parentViewController] dismissModalViewControllerAnimated:YES];
    }

//    [ self closeBrowser];
    
  //  NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"about:blank"]];
    //[webView loadRequest:request];
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
