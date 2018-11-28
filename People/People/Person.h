#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName;

@property (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *lastName;

@end
