//
//  Euro.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/3/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "Euro.h"


@interface Euro ()

@property (nonatomic) NSUInteger amount;

@end

@implementation Euro

- (Euro *)times:(NSUInteger)multiplier {
  
  return [[Euro alloc] initWithAmount:self.amount * multiplier];
  
}

@end
