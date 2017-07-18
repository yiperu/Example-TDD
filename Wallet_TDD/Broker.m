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

  
  if ([money.currency isEqualToString:currency]) {
    return money;
  }
  
  double rate = [[self.rates objectForKey:[self keyFromCurrency:money.currency toCurrency:currency]] doubleValue];
  Money *resul;
  if (rate == 0) {
    // No hay tasa de conversion, exepcion que te crio
    [NSException raise:@"NoConversionRateException" format:@"Must have a conversion from %@ to %@", money.currency, currency];
  } else {
    NSInteger monto = [money.amount integerValue] * rate; // Esto no me comvence ???hat   [money.amount integerValue] * rate
    resul = [[Money alloc] initWithAmount:monto andCurrency:currency];
  }
  return resul;

}

- (void)addRate:(NSInteger)rate fromCurrency:(NSString *)fCurrendy toCurrency:(NSString *)tCurrendy {
  [self.rates setObject:@(1.0/rate) forKey:[self keyFromCurrency:fCurrendy toCurrency:tCurrendy]];
  [self.rates setObject:@(rate) forKey:[self keyFromCurrency:tCurrendy toCurrency:fCurrendy]];
}


#pragma mark - Utils
- (NSString *)keyFromCurrency:(NSString *)fromCurrency toCurrency:(NSString *)toCurrency {
  return [NSString stringWithFormat:@"%@-%@",fromCurrency, toCurrency];
}

@end
