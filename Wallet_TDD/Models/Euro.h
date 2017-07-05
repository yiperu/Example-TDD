//
//  Euro.h
//  Wallet_TDD
//
//  Created by Henry AT on 7/3/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Money.h"

@interface Euro : Money

- (instancetype)initWithAmount:(NSUInteger)amount;
- (Euro *)times:(NSUInteger)multiplier;

@end
