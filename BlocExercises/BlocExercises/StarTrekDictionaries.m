//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries


- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id favoriteDrink = characterDictionary[@"favorite drink"];
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        NSLog(@"No Error");
    }else{
        NSLog(@"Error");
    }
    return favoriteDrink;
}


- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSUInteger count = charactersArray.count;
    NSMutableArray *favoriteDrinkArray = [NSMutableArray array];
    NSMutableDictionary *tempDictionary = [NSMutableDictionary dictionary];
    for (NSInteger i = 0; count > i; i++) {
        tempDictionary = charactersArray[i];
        [favoriteDrinkArray addObject:tempDictionary[@"favorite drink"]];
    }
    return favoriteDrinkArray;
}


- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    [mutableCharacterDictionary setObject:@"I am Jean-Luc Picard" forKey:@"quote"];
    return mutableCharacterDictionary;
}


@end
