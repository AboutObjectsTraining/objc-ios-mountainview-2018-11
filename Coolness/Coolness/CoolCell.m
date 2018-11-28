#import "CoolCell.h"

@implementation CoolCell

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = touches.anyObject;
    CGPoint currLocation = [touch locationInView:nil];
    CGPoint prevLocation = [touch previousLocationInView:nil];
    
    CGPoint newLocation = self.center;
    newLocation.x += currLocation.x - prevLocation.x;
    
    self.center = newLocation;
}

@end
