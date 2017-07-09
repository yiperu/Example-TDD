//
//  Broker.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/9/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "Broker.h"

@interface Broker()
@property (nonatomic, strong) NSMutableDictionary *rates;

@end

@implementation Broker

-(instancetype)init {
  if (self = [super init]) {
    self.rates = [@{}mutableCopy];
  }
  return self;
}

- (Money *)reduce:(Money *)money toCurrency:(NSString * )currency {

  
  return money;
}

- (void)addRate:(NSInteger)rate fromCurrency:(NSString *)fCurrendy toCurrency:(NSString *)tCurrendy {
  [self.rates setObject:@(rate) forKey:[self keyFromCurrency:fCurrendy toCurrency:tCurrendy]];
}


#pragma mark - Utils
- (NSString *)keyFromCurrency:(NSString *)fromCurrency toCurrency:(NSString *)toCurrency {
  return [NSString stringWithFormat:@"%@-%@",fromCurrency, toCurrency];
}

@end
