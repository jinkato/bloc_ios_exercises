//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer


- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.memoryOfArray = arrayToRemember;
}


- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.myCopyOfArray = arrayToCopy;
}


- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    NSLog(@"floatToRemember------------------------------- %f     %f", self.myCopyOfFloat, floatToRemember);
//    self.myCopyOfFloat = &(floatToRemember);
    NSLog(@"floatToRemember------------------------------- %f     %f", self.myCopyOfFloat, floatToRemember);
}


- (NSMutableArray *) arrayYouShouldRemember {
    NSMutableArray *returnArray = self.memoryOfArray;
    return returnArray;
}



- (NSMutableArray *) arrayYouShouldCopy {
    NSMutableArray *returnArray = self.myCopyOfArray;
    return returnArray;
}



- (CGFloat) floatYouShouldRemember {
//    CGFloat *returnFloat = self.myCopyOfFloat;
//    NSLog(@"floatYouShouldRemember------------------------------- %f", returnFloat);
    return 0.0f;
}

@end