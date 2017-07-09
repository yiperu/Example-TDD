//
//  BrokerTest.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/9/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Broker.h"
#import "Money.h"

@interface BrokerTest : XCTestCase

@end

@implementation BrokerTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSimpleReduction {
  
  Broker *broker = [[Broker alloc] init];
  Money *sum = [[Money dollarWithAmount:5] plus:[Money dollarWithAmount:5]];
  
  Money *reduced = [broker reduce:sum toCurrency:@"USD"];
  
  XCTAssertEqualObjects(sum, reduced, @"Conversion to same currency should be a NOP");

}

// $10 == e5 2:1
- (void)testReduction {

  Broker *broker = [[Broker alloc] init];
  [broker addRate:2 fromCurrency:@"USD" toCurrency:@"EUR"];
  
  Money *dollar = [Money dollarWithAmount:10];
  Money *euros = [Money euroWithAmount:5];
  
  Money *converter = [broker reduce:dollar toCurrency:@"EUR"];
  
  XCTAssertEqualObjects(converter, euros,@"$10 = e5 2:1");
  
}


@end
