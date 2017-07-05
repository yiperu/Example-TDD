//
//  DolarTest.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface DolarTest : XCTestCase

@end

@implementation DolarTest

- (void)testMultiplicacion {
  
  Dolar * five = [[Dolar alloc] initWithAmount:5];
  
  XCTAssertEqualObjects([[Dolar alloc] initWithAmount:10], [five times:2],@"Both euros should be Equal");
  XCTAssertEqualObjects([[Dolar alloc] initWithAmount:15], [five times:3],@"Both euros should be Equal");
}

@end
