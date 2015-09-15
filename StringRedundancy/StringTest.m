//
//  StringTest.m
//  SortingTest
//
//  Created by Kumar Mishra, R. F. on 07/07/15.
//  Copyright (c) 2015 Ranjna Mishra. All rights reserved.
//

#import "StringTest.h"

@interface StringTest ()

@property(copy)NSString *data;

@end

@implementation StringTest


- (instancetype) init {
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (instancetype) init:(NSString *) dataValue{
    self = [self init];
    self.data = dataValue;
    return  self;
    
}

-(NSString *)removeRedundant{
    
    NSString *input  = self.data;
    
    NSMutableSet *seenCharacters = [NSMutableSet set];
    NSMutableString *result = [NSMutableString string];
    [input enumerateSubstringsInRange:NSMakeRange(0, input.length) options:NSStringEnumerationByComposedCharacterSequences
                           usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                               
        if (![seenCharacters containsObject:substring]) {
            [seenCharacters addObject:substring];
            [result appendString:substring];
        }
    }];
    NSLog(@"String with duplicate characters removed: %@", result);
    NSLog(@"Sorted characters in input: %@", [seenCharacters.allObjects sortedArrayUsingSelector:@selector(compare:)]);

    return result;
}



-(NSString *)removeRedundantChar{
    
    NSString *input  = self.data;
        
    NSMutableArray *seenCharacters = [NSMutableArray array];
    NSMutableString *result = [NSMutableString string];
    
    for (int index = 0; index < input.length; index++) {
        NSString *subString = [input substringWithRange:NSMakeRange(index, 1)];
        
        if(![seenCharacters containsObject:subString]){
            [seenCharacters addObject:subString];
            [result appendString:subString];
        }
        
    }
    
    NSLog(@"String with duplicate characters removed: %@", result);

    return result;
}


-(NSString *)removeRedundantCharwithoutApi{
    NSString *input  = self.data;
    NSMutableArray *array = [NSMutableArray array];
    NSMutableString *result = [NSMutableString string];

    for (int index = 0; index < input.length; index++) {
        NSString *subString = [input substringWithRange:NSMakeRange(index, 1)];
        
        if([array count] > 0){
            for (int arrayIndex = 0; arrayIndex < [array count]; arrayIndex++) {
                NSString *string = [array objectAtIndex:arrayIndex];
                
                if(![subString isEqualToString:string]){
                    [array addObject:subString];
                    [result appendString:subString];
                }
                
            }
        }else{
            [array addObject:subString];
            [result appendString:subString];

        }
        
    }
    
    NSLog(@"String with duplicate characters removed: %@", result);

    return result;

}

@end
