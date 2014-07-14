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
    
    //within the animation we will adjust the "opacity"
    //value of the layer
    theAnimation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    //animation lasts 0.4 seconds
    theAnimation.duration=1.5;
    //and it repeats forever
    //we want a reverse animation
    //justify the opacity as you like (1=fully visible, 0=unvisible)
    theAnimation.fromValue=[NSNumber numberWithFloat:0.0];
    theAnimation.toValue=[NSNumber numberWithFloat:1.0];

    
    //Assign the animation to your UIImage layer and the
    //animation will start immediately
    [self.fb_icon.layer addAnimation:theAnimation
                           forKey:@"animateOpacity"];
    self.fb_icon.layer.shouldRasterize = YES;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
