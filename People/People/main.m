#import <Foundation/Foundation.h>
#import "Person.h"

void CreatePerson(void) {
    Person *fred = [[Person alloc] init];
    NSLog(@"Person, %@", fred);
    
    [fred setFirstName:@"Fred"];
    NSLog(@"Person, %@", fred);
    
    Person *copyOfFred = [fred copy];
    NSLog(@"Copy of fred, %@", copyOfFred);
}

void InitializePerson(void) {
    Person *fred = [[Person alloc] initWithFirstName:@"Fred" lastName:@"Smith"];
    NSLog(@"%@", fred);

    Person *bob = nil;
    NSString *foo = nil;
    NSLog(@"Bob's name is %@, foo is %@", [bob firstName], [foo capitalizedString]);
}

//void PlayWithStrings(void) {
//    NSString *c1 = @"Hello";
//    NSString *c2 = @"Hello";
//    NSString *c3 = @"There";
//    NSString *s1 = [NSString alloc];
//    NSString *s2 = [NSString alloc];
//    NSMutableString *s3 = [NSMutableString alloc];
//    s1 = [s1 initWithFormat:@"Hello %@", @"World!"];
//    NSLog(@"%@", s1);
//}


int main(int argc, const char * argv[]) {
//    CreatePerson();
//    PlayWithStrings();
    InitializePerson();
}
