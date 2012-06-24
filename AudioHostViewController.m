//
//  AppleXylophone.m
//  AudioMeetupDemo
//
//  Created by Barry Ezell on 6/13/11.
//  Copyright 2011 DOCKMARKET LLC. All rights reserved.
//

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

- (void)viewDidLoad {
    
    
    
    
    
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
    
    
   
    
  //  if (IS_IPAD) {

    //define the "key" xylophone note rectangles
    keyRects[0] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                             [UIScreen mainScreen].bounds.size.height * 0.0,//derive y
                             [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                             [UIScreen mainScreen].bounds.size.height * 0.16// 1/6th heigth of screen
                             );
    
    keyRects[1] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                             [UIScreen mainScreen].bounds.size.height * 0.16,//derive y
                             [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                             [UIScreen mainScreen].bounds.size.height * 0.16// 1/6th heigth of screen
                             );

    keyRects[2] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                             [UIScreen mainScreen].bounds.size.height * 0.32,//derive y
                             [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                             [UIScreen mainScreen].bounds.size.height * 0.16// 1/6th heigth of screen
                             );
    
    keyRects[3] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                             [UIScreen mainScreen].bounds.size.height * 0.48,//derive y
                             [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                             [UIScreen mainScreen].bounds.size.height * 0.16// 1/6th heigth of screen
                             );
    
    keyRects[4] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                             [UIScreen mainScreen].bounds.size.height * 0.64,//derive y
                             [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                             [UIScreen mainScreen].bounds.size.height * 0.16// 1/6th heigth of screen
                             );
    
    keyRects[5] = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.0,//derive x
                             [UIScreen mainScreen].bounds.size.height * 0.80,//derive y
                             [UIScreen mainScreen].bounds.size.width * 1.0,//span across entire screen
                             [UIScreen mainScreen].bounds.size.height * 0.16// 1/6th heigth of screen
                             );
    
    
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
