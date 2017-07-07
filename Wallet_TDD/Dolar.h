//
//  Dolar.h
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Dolar : Money

- (Dolar *)times:(NSUInteger)multiplier;

@end
