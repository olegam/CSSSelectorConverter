//
//  CSSTypeSelector.m
//  CSSSelectorConverter
//
//  Created by Francis Chong on 7/1/14.
//  Copyright (c) 2014 Ignition Soft. All rights reserved.
//

#import "CSSTypeSelector.h"

@implementation CSSTypeSelector

- (id)initWithSyntaxTree:(CPSyntaxTree *)syntaxTree {
    self = [self init];
    if (self) {
        NSArray *components = [syntaxTree children];
        if ([components count] > 0 && [components[0] isIdentifierToken]) {
            self.name = [(CPIdentifierToken*)components[0] identifier];
        }
    }
    return self;
}

-(NSString*) description {
    return [NSString stringWithFormat:@"<TypeSelector %@>", self.name];
}

-(NSString*) toXPath {
    return [NSString stringWithFormat:@"%@", self.name];
}

@end
