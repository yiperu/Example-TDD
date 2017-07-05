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
  
  XCTAssertEqualObjects([[Euro alloc] initWithAmount:10], [five times:2],@"Both euros should be Equal");
  XCTAssertEqualObjects([[Euro alloc] initWithAmount:15], [five times:3],@"Both euros should be Equal");  
}


- (void)testEquality {
  
  Euro *five = [[Euro alloc] initWithAmount:5];
  Euro *ten = [[Euro alloc] initWithAmount:10];
  Euro *total = [five times:2];
  
  XCTAssertEqualObjects(ten, total, @"Equivalent Object should be Equal!");
  
}

@end
