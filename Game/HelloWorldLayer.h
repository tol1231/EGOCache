//
// Tiny Wings http://github.com/haqu/tiny-wings
//

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

@class TestViewController;

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer <CCStandardTouchDelegate>
{
    
    TestViewController *testViewController;
    
    CCSprite *elevatorSprite;
    
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+ (CCScene*) scene;

@end
