//
//  StringTest.h
//  SortingTest
//
//  Created by Kumar Mishra, R. F. on 07/07/15.
//  Copyright (c) 2015 Ranjna Mishra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringTest : NSObject

- (instancetype) init:(NSString *) dataValue;

-(NSString *)removeRedundant;
-(NSString *)removeRedundantChar;

@end
