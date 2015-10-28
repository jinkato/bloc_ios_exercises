//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler



- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSInteger newInt = [number integerValue];
    newInt = newInt * 2;
    NSNumber *returnInt = [NSNumber numberWithInteger: newInt];
    return returnInt;
}



- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger heigherNumber;
    NSInteger lowerNumber;
    NSMutableArray *arrayOfNumber = [NSMutableArray new];
    NSNumber* wrapper;
    
    if (number > otherNumber) {
        heigherNumber = number;
        lowerNumber = otherNumber;
    }else{
        heigherNumber = otherNumber;
        lowerNumber = number;
    }
    
    for (NSInteger i = lowerNumber; i <= heigherNumber; i++) {
        wrapper = [NSNumber numberWithInteger:i];
        [arrayOfNumber addObject:wrapper];
    }
    return arrayOfNumber;
}



- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSInteger countOfArray = arrayOfNumbers.count;
    NSNumber *lowestNumber = [arrayOfNumbers objectAtIndex:0];
    for (NSInteger i = 0; i < countOfArray; i++) {
        if ([lowestNumber integerValue] > [[arrayOfNumbers objectAtIndex:i] integerValue]) {
            lowestNumber = [arrayOfNumbers objectAtIndex:i];
        }
    }
    return [lowestNumber integerValue];
}

@end
