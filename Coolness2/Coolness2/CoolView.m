#import "CoolView.h"
#import "CoolCell.h"

@interface CoolView () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@end

@implementation CoolView

- (IBAction)addCoolView {
    NSLog(@"In %s", __func__);
    CoolCell *cell = [[CoolCell alloc] init];
    cell.text = self.textField.text;
    cell.backgroundColor = UIColor.brownColor;
    [cell sizeToFit];
    [self.contentView addSubview:cell];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
