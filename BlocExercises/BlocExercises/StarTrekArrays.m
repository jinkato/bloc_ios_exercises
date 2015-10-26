//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *starTrekArray = [characterString componentsSeparatedByString:@";"];
    NSMutableArray *mutableStarTrekArray = [starTrekArray mutableCopy];
//    NSSortDescriptor *sortDes = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
//    [mutableStarTrekArray sortUsingDescriptors:@[sortDes]];
    return mutableStarTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *allMyTasks = [characterArray componentsJoinedByString:@";"];
    return allMyTasks;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *mutableStarTrekArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDes = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [mutableStarTrekArray sortUsingDescriptors:@[sortDes]];
    return mutableStarTrekArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *mutableStarTrekArray = [characterArray mutableCopy];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [mutableStarTrekArray filterUsingPredicate:containsWorf];
    BOOL hasTheWord = true;
    if (mutableStarTrekArray.count == 0) {
        hasTheWord = false;
    }
    return hasTheWord;
}

@end
