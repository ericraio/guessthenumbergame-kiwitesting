//
//  GuessTheNumberGame.m
//  GuessTheNumber
//
//  Created by Atrosity on 9/5/12.
//  Copyright (c) 2012 Eric Raio. All rights reserved.
//

#import "GuessTheNumberGame.h"

@implementation GuessTheNumberGame

@synthesize answer = _answer;
@synthesize numberOfGuesses = _numberOfGuesses;

- (id)initWithAnswer:(NSInteger)answer {
    self = [super init];
    if (self) {
        _answer = answer;
    }
    return self;
}

- (GuessResult)guess:(NSInteger)number {
    _numberOfGuesses++;
    
    if (number < self.answer) {
        return GuessResultTooLow;
    } else if (number > self.answer) {
        return GuessResultTooHigh;
    }
    
    return GuessResultCorrectAnswer;
}

@end
