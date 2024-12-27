```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    if (self.myString) {
        self.myString = nil; // Release the existing string
    }
    self.myString = [[NSString alloc] initWithString:@"Hello"];
    // ... some code ...
}
@end
```

This improved version explicitly releases the old `NSString` object before assigning a new one, preventing memory accumulation. This is crucial in managing memory usage and preventing issues in long-running applications or those that perform these actions in a loop.  It's important to understand that ARC handles most memory management but does not automatically resolve all potential memory-related problems.