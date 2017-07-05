//
//  Money.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "Money.h"

@interface Money ()

@property (nonatomic) NSUInteger amount;

@end

@implementation Money


- (instancetype)initWithAmount:(NSUInteger)amount {
  
  if(self = [super init]) {
    _amount = amount;
  }
  
  return self;
}

- (Money *)times:(NSUInteger)multiplier {
  
  // Este metodo no se deberia llamar
  // Sino que se debería usar el que se implementa en la subclase
  return self;
}

@end
