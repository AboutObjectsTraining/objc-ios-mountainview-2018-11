#import <XCTest/XCTest.h>

void SayHello(void) {
    printf("Hello!\n");
}

void SayThings(void (*saySomething)(void)) {
    for (int i = 0; i < 3; i++) {
        saySomething();
    }
}

void Speak(void (^block)(void)) {
    for (int i = 0; i < 3; i++) {
        block();
    }
}

@interface UnitTests : XCTestCase
@end

@implementation UnitTests

- (void)testFunctionPointer {
    void (*myFunctionPointer)(void) = SayHello;
    myFunctionPointer();
}

- (void)testFunctionPointerAsParameter {
    SayThings(SayHello);
}

- (void)testBlockLiteral {
    void (^myBlockLiteral)(void) = ^{
        printf("Hello!\n");
    };
    
    myBlockLiteral();
}

- (void)testBlockLiteralAsParameter {
    Speak(^{
        printf("Wheee!!!\n");
    });
}

@end
