//
//  Euro.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/3/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "Euro.h"
#import "Money-Private.h"


@implementation Euro

- (Euro *)times:(NSUInteger)multiplier {
  
  return [[Euro alloc] initWithAmount:[self.amount integerValue] * multiplier];
  
}

@end
