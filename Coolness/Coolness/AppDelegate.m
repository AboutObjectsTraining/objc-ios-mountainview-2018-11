#import "AppDelegate.h"
#import "CoolCell.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = UIColor.yellowColor;
    self.window.rootViewController = [[UIViewController alloc] init];
    
    UIView *backgroundView = [[UIView alloc] initWithFrame:UIScreen.mainScreen.bounds];
    backgroundView.backgroundColor = UIColor.brownColor;
    [self.window addSubview:backgroundView];
    
    // TODO: Update data type
    UIView *subview1 = [[CoolCell alloc] initWithFrame:CGRectMake(20, 80, 120, 40)];
    UIView *subview2 = [[CoolCell alloc] initWithFrame:CGRectMake(50, 150, 120, 40)];
    
    [backgroundView addSubview:subview1];
    [backgroundView addSubview:subview2];
    
    subview1.backgroundColor = UIColor.purpleColor;
    subview2.backgroundColor = UIColor.orangeColor;
    
    [self.window makeKeyAndVisible];
}

@end
