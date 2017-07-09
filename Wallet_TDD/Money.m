//
//  Money.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "Money.h"
#import "NSObject+GNUStepAddons.h"

@interface Money ()

@property (nonatomic, strong) NSNumber *amount;

@end

@implementation Money

+ (id)euroWithAmount:(NSInteger)amount {
  return [[Money alloc] initWithAmount:amount andCurrency:@"EUR"];
}

+ (id)dollarWithAmount:(NSInteger)amount {
  return [[Money alloc] initWithAmount:amount andCurrency:@"USD"];
}

- (instancetype)initWithAmount:(NSInteger)amount andCurrency:(NSString *)currency {
  
  if(self = [super init]) {
    _amount = @(amount);
    _currency = currency;
  }
  
  return self;
}

- (id)times:(NSUInteger)multiplier {
  
  return [[Money alloc] initWithAmount:[self.amount integerValue] * multiplier andCurrency:self.currency];
  
}

- (Money *)plus:(Money *)money {
  
  NSInteger suma = [self.amount integerValue] + [money.amount integerValue];
  Money *total = [[Money alloc] initWithAmount:suma andCurrency:self.currency];
  return total;
}


#pragma mark - Overwritten
- (NSString *)description {
  // TODO: Verificar
  return [NSString stringWithFormat:@"<%@ amount: %li>", [self class], [[self amount] integerValue]];
}

#pragma mark - overwritten

-(BOOL)isEqual:(id)object {
  
  if ([self.currency isEqual:[object currency]]) {
    return ([self amount] == [object amount]);
  } else {
    return NO;
  }
}

//El metodo hash es del la superclase del method NSObject
//devuelve un numero que es la direccion de memoria, la direccion donde esta el objeto
- (NSUInteger)hash {
  return [self.amount unsignedIntegerValue];
}
@end
