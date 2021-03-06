//
//  SBSPersonDetailsViewController.h
//  FactoryThing
//
//  Created by William Corrigan on 6/3/14.
//  Copyright (c) 2014 Spencer Merpi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SBSMember;

@interface SBSPersonDetailsViewController : UIViewController

@property (nonatomic) SBSMember *person;
@property IBOutlet UILabel *nameLabel;
@property IBOutlet UILabel *bioLabel;
@property IBOutlet UIImageView *portrait;
@property IBOutlet UITextView *nameBio;
@property IBOutlet UILabel *nameTwitter;
@property IBOutlet UILabel *nameFacebook;
@property IBOutlet UILabel *nameEmail;

@end
