//
//  EuroTest.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/3/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Euro.h"

@interface EuroTest : XCTestCase

@end

@implementation EuroTest

- (void)testMultiplicacion {
  
  Euro * five = [[Euro alloc] initWithAmount:5];
  Euro * product = [five times:2];
  
  XCTAssertEqual(product.amount, 10, @"Both amounts shoud be equal");
  product = [five times:3];
  XCTAssertEqual(product.amount, 15, @"Both amounts shoud be equal");
}

@end
