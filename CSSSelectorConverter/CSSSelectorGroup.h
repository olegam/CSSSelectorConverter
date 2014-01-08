//
//  CSSSelectorGroup.h
//  CSSSelectorConverter
//
//  Created by Chong Francis on 14年1月8日.
//  Copyright (c) 2014年 Ignition Soft. All rights reserved.
//

#import "CSSBaseSelector.h"
#import "CSSSelectors.h"

#define PUSH_SELECTORS_GROUP() [CSSSelectorGroup pushSelectorGroup:self.assembly];

@interface CSSSelectorGroup : CSSBaseSelector

@property (nonatomic, strong) NSMutableArray* selectors;

-(void) addSelectors:(CSSSelectors*)selectors;

+(void) pushSelectorGroup:(PKAssembly*)assembly;

@end