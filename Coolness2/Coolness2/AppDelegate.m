#import "AppDelegate.h"
#import "CoolController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = UIColor.yellowColor;
    self.window.rootViewController = [[CoolController alloc] initWithNibName:@"CoolStuff" bundle:nil];
    
    [self.window makeKeyAndVisible];
}

@end
