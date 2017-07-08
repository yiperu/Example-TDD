//
//  Money.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "Money.h"
#import "NSObject+GNUStepAddons.h"
#import "Money-Private.h"
#import "Euro.h"
#import "Dolar.h"

@implementation Money

+ (id)euroWithAmount:(NSInteger)amount {
  return [[Euro alloc] initWithAmount:amount];
}

+ (id)dollarWithAmount:(NSInteger)amount {
  return [[Dolar alloc] initWithAmount:amount];
}


- (instancetype)initWithAmount:(NSInteger)amount {
  
  if(self = [super init]) {
    _amount = @(amount);
  }
  
  return self;
}

- (Money *)times:(NSUInteger)multiplier {
  
  // Este metodo no se deberia llamar
  // Sino que se debería usar el que se implementa en la subclase
  return [self subclassResponsibility:_cmd];
}

#pragma mark - Overwritten
- (NSString *)description {
  // TODO: Verificar
  return [NSString stringWithFormat:@"<%@ amount: %li", [self class], [[self amount] integerValue]];
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
