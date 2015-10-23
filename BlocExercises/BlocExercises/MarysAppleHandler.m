//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;

    /* WORK HERE */
    if (dollars < 5) {
        itemToReturn = @"get out of my store";
    }else if(dollars < 6){
        itemToReturn = @"have some gum";
    }else if (dollars < 7){
        itemToReturn = @"have an apple";
    }else if (dollars < 10001){
        itemToReturn = @"have an Apple computer";
    }else{
        itemToReturn = @"have The Big Apple";
    }
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */
    NSUInteger cost = 24;
    
    if (self.getsDiscount && self.drinkingAge) {
        cost *= .75;
    }
    
    return cost;
}

@end
