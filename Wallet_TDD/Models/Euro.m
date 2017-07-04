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

- (instancetype)initWithAmount:(NSUInteger)amount {

  if(self = [super init]) {
    _amount = amount;
  }
  
  return self;
}

- (void)times:(NSUInteger)multiplier {
  self.amount *=  multiplier;
}

@end
