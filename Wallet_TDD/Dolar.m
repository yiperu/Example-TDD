//
//  Dolar.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "Dolar.h"

@interface Dolar ()

@property (nonatomic) NSUInteger amount;

@end

@implementation Dolar

- (instancetype)initWithAmount:(NSUInteger)amount {
  
  if(self = [super init]) {
    _amount = amount;
  }
  
  return self;
}

- (Dolar *)times:(NSUInteger)multiplier {
  
  return [[Dolar alloc] initWithAmount:self.amount * multiplier];
  
}

#pragma mark - overwritten

-(BOOL)isEqual:(id)object {
  return ([self amount] == [object amount]);
}

//El metodo hash es del la superclase del method NSObject
//devuelve un numero que es la direccion de memoria, la direccion donde esta el objeto
- (NSUInteger)hash {
  return (NSUInteger)self.amount;
}
@end
