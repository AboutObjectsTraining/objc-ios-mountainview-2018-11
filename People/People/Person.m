#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
{
    if (!(self = [super init])) return nil;
    
    _firstName = [firstName copy];
    _lastName = [lastName copy];
    
    return self;
}

//- (NSString *)firstName {
//    return _firstName;
//}
//- (void)setFirstName:(NSString *)newValue {
//    _firstName = [newValue copy];
//}
//
//- (NSString *)lastName {
//    return _lastName;
//}
//- (void)setLastName:(NSString *)newValue {
//    _lastName = newValue;
//}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    // FIXME: Produce an actual copy
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:
            @"first name: %@, "
            @"last name: %@",
            [self firstName],
            [self lastName]];
}
@end
