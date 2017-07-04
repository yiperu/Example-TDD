//
//  EuroTest.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/3/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface EuroTest : XCTestCase

@end

@implementation EuroTest

- (void)testMultiplicacion {
  
  Euro * euro = [[Euro alloc] initWithAmount:5];
  [euro times:5];
  
  XCTAssertEqual(euro.amount, 10, @" 5 x 2 should be 10");
  
}

@end
