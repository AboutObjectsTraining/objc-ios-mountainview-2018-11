#import "CoolController.h"
#import "CoolCell.h"

@implementation CoolController

- (void)loadView
{
    UIView *backgroundView = [[UIView alloc] initWithFrame:UIScreen.mainScreen.bounds];
    backgroundView.backgroundColor = UIColor.brownColor;
    
    self.view = backgroundView;
    
    CoolCell *subview1 = [[CoolCell alloc] initWithFrame:CGRectMake(20, 80, 120, 40)];
    CoolCell *subview2 = [[CoolCell alloc] initWithFrame:CGRectMake(50, 150, 120, 40)];
    
    subview1.text = @"Hello World! 🌎😎";
    subview2.text = @"CoolCells rock! 🎉";
    
    [subview1 sizeToFit];
    [subview2 sizeToFit];
    
    [backgroundView addSubview:subview1];
    [backgroundView addSubview:subview2];
    
    subview1.backgroundColor = UIColor.purpleColor;
    subview2.backgroundColor = UIColor.orangeColor;
}

@end
