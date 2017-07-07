//
//  Dolar.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "Dolar.h"
#import "Money-Private.h"

@implementation Dolar

- (Dolar *)times:(NSUInteger)multiplier {
  
  return [[Dolar alloc] initWithAmount:self.amount * multiplier];
  
}

@end
