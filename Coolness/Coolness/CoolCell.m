#import "CoolCell.h"

UIEdgeInsets TextInsets = { .top = 8, .left = 14, .bottom = 9, .right = 14 };
CGPoint TextOrigin = { 14, 8 };

@interface CoolCell ()

@property (nonatomic, getter=isHighlighted) BOOL highlighted;
@property (nonatomic, readonly) NSDictionary *textAttributes;

@end


@implementation CoolCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if (!(self = [super initWithFrame:frame])) return nil;
    [self configureLayer];
    [self configureGestureRecognizers];
    return self;
}

// TODO: implement initWithCoder:

- (void)configureLayer {
    self.layer.cornerRadius = 10.0;
    self.layer.masksToBounds = YES;
    self.layer.borderWidth = 3.0;
    self.layer.borderColor = UIColor.whiteColor.CGColor;
}

- (void)configureGestureRecognizers {
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bounce)];
    recognizer.numberOfTapsRequired = 2;
    [self addGestureRecognizer:recognizer];
}

- (NSDictionary *)textAttributes {
    return @{ NSFontAttributeName: [UIFont boldSystemFontOfSize:24],
              NSForegroundColorAttributeName: UIColor.whiteColor };
}

- (void)setHighlighted:(BOOL)highlighted {
    _highlighted = highlighted;
    self.alpha = highlighted ? 0.5 : 1.0;
}

- (void)bounce {
    NSLog(@"In %s", __func__);
}

// MARK: - Drawing and resizing

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize newSize = [self.text sizeWithAttributes:self.textAttributes];
    newSize.width += TextInsets.left + TextInsets.right;
    newSize.height += TextInsets.top + TextInsets.bottom;
    return newSize;
}

- (void)drawRect:(CGRect)rect {
    [self.text drawAtPoint:TextOrigin withAttributes:self.textAttributes];
}

@end


// MARK: - UIResponder methods

@implementation CoolCell (RespondingToTouches)

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.superview bringSubviewToFront:self];
    self.highlighted = YES;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = touches.anyObject;
    CGPoint currLocation = [touch locationInView:nil];
    CGPoint prevLocation = [touch previousLocationInView:nil];

    CGPoint newLocation = self.center;
    newLocation.x += currLocation.x - prevLocation.x;
    newLocation.y += currLocation.y - prevLocation.y;
    
    self.center = newLocation;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.highlighted = NO;
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.highlighted = NO;
}

@end
