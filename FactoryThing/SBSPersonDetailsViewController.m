//
//  SBSPersonDetailsViewController.m
//  FactoryThing
//
//  Created by William Corrigan on 6/3/14.
//  Copyright (c) 2014 Spencer Merpi. All rights reserved.
//

#import "SBSPersonDetailsViewController.h"
#import "SBSMember.h"

@interface SBSPersonDetailsViewController ()

@end

@implementation SBSPersonDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.nameLabel.text = self.person.name;
    self.portrait.image = self.person.pic;
    self.bioLabel.text = self.person.name;
    self.nameBio.text = self.person.bio;
    self.nameTwitter.text = self.person.twitter;
    self.nameFacebook.text = self.person.fb;
    self.nameEmail.text = self.person.email;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 */

@end
