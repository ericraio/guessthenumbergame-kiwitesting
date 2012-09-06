//
//  GuessTheNumberGame.h
//  GuessTheNumber
//
//  Created by Atrosity on 9/5/12.
//  Copyright (c) 2012 Eric Raio. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    GuessResultTooLow = 1,
    GuessResultTooHigh,
    GuessResultCorrectAnswer
} GuessResult;

@interface GuessTheNumberGame : NSObject

@property (nonatomic, readonly) NSInteger answer;
@property (nonatomic, readonly) NSInteger numberOfGuesses;

- (id)initWithAnswer:(NSInteger)answer;

- (GuessResult)guess:(NSInteger)number;

@end
