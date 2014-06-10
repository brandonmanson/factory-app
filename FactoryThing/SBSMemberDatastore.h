//
//  SBSMemberDatastore.h
//  FactoryThing
//
//  Created by William Corrigan on 6/3/14.
//  Copyright (c) 2014 Spencer Merpi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SBSMember;

@interface SBSMemberDatastore : NSObject

- (id)initWithTestData;
- (NSUInteger)count;
- (SBSMember *)recordAtIndex:(NSUInteger)index;

@end
