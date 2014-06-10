//
//  SBSMember.h
//  FactoryThing
//
//  Created by William Corrigan on 6/3/14.
//  Copyright (c) 2014 Spencer Merpi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SBSMember : NSObject

@property NSString *objectId;
@property NSString *ama;
@property NSString *bio;
@property NSString *email;
@property NSString *fb;
@property NSString *name;
@property NSString *twitter;
@property UIImage *pic;

- (id)initWithDictionary:(NSDictionary *)properties;

@end
