//
//  ViewController.m
//  GenericSnapChat
//
//  Created by Daniel Williamson on 14/07/2014.
//  Copyright (c) 2014 DWApps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Create an animation with pulsating effect
    CABasicAnimation *theAnimation;
    [UIView animateWithDuration:1.0
                     animations:^{
                         self.fb_icon.center = CGPointMake(self.fb_icon.center.x + 20, self.fb_icon.center.y - 100);
                         self.twitter_icon.center = CGPointMake(self.twitter_icon.center.x -20, self.twitter_icon.center.y - 100);
                     }];
     
    theAnimation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    theAnimation.duration=2.0;
    theAnimation.fromValue=[NSNumber numberWithFloat:0.0];
    theAnimation.toValue=[NSNumber numberWithFloat:1.0];

    
    [self.fb_icon.layer addAnimation:theAnimation
                           forKey:@"animateOpacity"];
  
    
    [self.twitter_icon.layer addAnimation:theAnimation
                              forKey:@"animateOpacity"];
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
