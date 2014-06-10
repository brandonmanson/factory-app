//
//  SBSMember.m
//  FactoryThing
//
//  Created by William Corrigan on 6/3/14.
//  Copyright (c) 2014 Spencer Merpi. All rights reserved.
//

#import "SBSMember.h"

@implementation SBSMember

- (id)initWithDictionary:(NSDictionary *)properties {
    self = [super init];
    if (self) {
        _objectId = properties[@"ObjectId"];
        _ama = properties[@"AMA"];
        _bio = properties[@"BIO"];
        _email = properties[@"EMAIL"];
        _fb = properties[@"FB"];
        _name = properties[@"NAME"];
        _twitter = properties[@"TWITTER"];
        _pic = properties[@"pic"];
    }
    return self;
}

@end
