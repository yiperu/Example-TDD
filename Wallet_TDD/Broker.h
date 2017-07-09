//
//  Broker.h
//  Wallet_TDD
//
//  Created by Henry AT on 7/9/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Broker : NSObject

- (Money *)reduce:(Money *)money toCurrency:(NSString * )currency;

@end
