//
//  Johnson_Music_for_MacTests.m
//  Johnson Music for MacTests
//
//  Created by Isiah Johnson on 1/29/15.
//  Copyright (c) 2015 Johnson Network. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

@interface Johnson_Music_for_MacTests : XCTestCase

@end

@implementation Johnson_Music_for_MacTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
