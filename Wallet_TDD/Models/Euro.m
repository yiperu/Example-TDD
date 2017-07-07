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

- (Euro *)times:(NSUInteger)multiplier {
  
  return [[Euro alloc] initWithAmount:self.amount * multiplier];
  
}

#pragma mark - overwritten

//El metodo hash es del la superclase del method NSObject
//devuelve un numero que es la direccion de memoria, la direccion donde esta el objeto
- (NSUInteger)hash {
  return (NSUInteger)self.amount;
}
@end
