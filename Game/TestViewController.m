//
//  TestViewController.m
//  TestSample
//
//  Created by marco on 20/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TestViewController.h"
#import "cocos2d.h"

@implementation TestViewController


-(IBAction)gotoCocosTwoD{
    
    NSLog(@"go to cocos2d ");
    
    UIWindow* window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationBeginsFromCurrentState:YES];
//	[UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:window cache:YES];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
    
	[self.view removeFromSuperview];
	[window addSubview:[CCDirector sharedDirector].openGLView];
    
	[UIView commitAnimations];
    
	[[CCDirector sharedDirector] resume];
//	[[SimpleAudioEngine sharedEngine] audioSessionResumed];
 
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
