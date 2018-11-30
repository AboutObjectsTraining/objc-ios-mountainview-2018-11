#import "CoolController.h"
#import "CoolCell.h"

@interface CoolController () <UITextFieldDelegate>
//@property (weak, nonatomic) UITextField *textField;
//@property (weak, nonatomic) UIView *contentView;
@end

@implementation CoolController

//- (void)addCoolView {
//    NSLog(@"In %s", __func__);
//    CoolCell *cell = [[CoolCell alloc] init];
//    cell.text = self.textField.text;
//    cell.backgroundColor = UIColor.brownColor;
//    [cell sizeToFit];
//    [self.contentView addSubview:cell];
//}
//
//- (BOOL)textFieldShouldReturn:(UITextField *)textField {
//    [textField resignFirstResponder];
//    return YES;
//}

//- (void)XXXloadView
//{
//    UIView *backgroundView = [[UIView alloc] initWithFrame:UIScreen.mainScreen.bounds];
//    backgroundView.backgroundColor = UIColor.brownColor;
//    
//    self.view = backgroundView;
//    
//    CGRect accessoryRect;
//    CGRect contentRect;
//    CGRectDivide(self.view.frame, &accessoryRect, &contentRect, 90.0, CGRectMinYEdge);
//    
//    UIView *accessoryView = [[UIView alloc] initWithFrame:accessoryRect];
//    UIView *contentView = [[UIView alloc] initWithFrame:contentRect];
//    
//    self.contentView = contentView;
//    
//    contentView.clipsToBounds = YES;
//    
//    [backgroundView addSubview:accessoryView];
//    [backgroundView addSubview:contentView];
//    
//    accessoryView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.7];
//    contentView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.5];
//    
//    // Controls
//    
//    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 46, 240, 30)];
//    [accessoryView addSubview:textField];
//    textField.borderStyle = UITextBorderStyleRoundedRect;
//    textField.placeholder = @"Enter some text";
//    
//    self.textField = textField;
//    self.textField.delegate = self;
//    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
//    [accessoryView addSubview:button];
//    [button setTitle:@"Add" forState:UIControlStateNormal];
//    [button sizeToFit];
//    
//    button.frame = CGRectOffset(button.frame, 268, 46);
//    
//    [button addTarget:self action:@selector(addCoolView) forControlEvents:UIControlEventTouchUpInside];
//    
//    // Cool Cells
//    CoolCell *subview1 = [[CoolCell alloc] initWithFrame:CGRectMake(20, 80, 120, 40)];
//    CoolCell *subview2 = [[CoolCell alloc] initWithFrame:CGRectMake(50, 150, 120, 40)];
//    
//    subview1.text = @"Hello World! 🌎😎";
//    subview2.text = @"CoolCells rock! 🎉";
//    
//    [subview1 sizeToFit];
//    [subview2 sizeToFit];
//    
//    [contentView addSubview:subview1];
//    [contentView addSubview:subview2];
//    
//    subview1.backgroundColor = UIColor.purpleColor;
//    subview2.backgroundColor = UIColor.orangeColor;
//}

@end
