//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your method implemenation here.
 
 */

- (NSArray*) arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init]; //created new NSMutableArray called sequence with empty value
    
    for (NSUInteger i = 0; i < index + 1; i++) {    //for loop counter limited by index +1 and increments by one
        
        if (i == 0) {
         
            [sequence addObject:@0];
            
        }                                  //sequence primed @0 and @1 manually passed on first two iterations
        
        else if (i == 1) {
            
            [sequence addObject:@1];
        }
        
        else {
            NSUInteger pIntA = [sequence [i - 2] unsignedIntegerValue]; //pulled previous two numbers out of sequence array
            
            NSUInteger pIntB = [sequence [i - 1] unsignedIntegerValue];  //converted to integer primitives
            
            NSUInteger newSequence = pIntA + pIntB;  //calculates next fibonacci number in the sequence
            
            [sequence addObject:@(newSequence)];  //new number added to sequence array
            
           //can also be written NSUInteger newSequence=[sequence [i-2] unsignedIntegerValue]+[sequence [i-1] unsignedIntegerValue]
            
        }
        
    }
    
    NSLog(@"%@\n\n\n\n", sequence);
    
    return sequence;
    
}

@end
