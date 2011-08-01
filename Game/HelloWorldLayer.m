

// Import the interfaces
#import "HelloWorldLayer.h"
#import "TestViewController.h"
#import "SimpleAudioEngine.h"


// HelloWorldLayer implementation
@implementation HelloWorldLayer

+ (CCScene*) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}


#pragma mark -
#pragma mark Go To UIView method
-(void)gotoUIVeiw{
    
    NSLog(@"go to UIView");
    
//  [[SimpleAudioEngine sharedEngine] audioSessionInterrupted];
	[[CCDirector sharedDirector] pause];
    
	UIWindow* window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationBeginsFromCurrentState:YES];
//	[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:window cache:YES];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
    
	[[CCDirector sharedDirector].openGLView removeFromSuperview];
	testViewController.view.hidden = false;
	[window addSubview:testViewController.view];
	
    [UIView commitAnimations];

}


// on "init" you need to initialize your instance
- (id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {

//        // Test View init
//        testViewController = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:[NSBundle mainBundle]];
//        
//        // Menu Item Font
//        CCMenuItemFont *font = [CCMenuItemFont itemFromString:@"Change" target:self selector:@selector(gotoUIVeiw)];
//        CCMenu *menu = [CCMenu menuWithItems:font, nil];
//        [self addChild:menu];
        
        
        
        elevatorSprite = [CCSprite spriteWithFile:@"Icon.png"];
        [self addChild:elevatorSprite];
        elevatorSprite.position = ccp(200, 60);
        
		self.isTouchEnabled = YES;
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// don't forget to call "super dealloc"
	[super dealloc];
}


#pragma mark -
#pragma mark Touch Event Delegate
//- (void) registerWithTouchDispatcher {
//	[[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
//}

//- (BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
//	CGPoint location = [touch locationInView:[touch view]];
//	location = [[CCDirector sharedDirector] convertToGL:location];
//
//	return YES;
//}

-(void)ccTouchMoved:(UITouch *)touch withEvent:(UIEvent *)event {
    
    CGPoint location = [touch locationInView: [touch view]];
    CGPoint convertedCoordinate = [[CCDirector sharedDirector] convertToGL:location];
    elevatorSprite.position = ccp(elevatorSprite.position.x, convertedCoordinate.y);
    
    NSLog(@"Touch Moved");
}


@end
