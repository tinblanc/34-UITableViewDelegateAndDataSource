//
//  Champion.m
//  UITableViewDelegateAndDataSource
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "Champion.h"


@implementation Champion

-(instancetype) init: (NSString*) name
            withRole: (NSString*) role
            andPhoto: (NSString*) photo{
        self.name = name;
        self.role = role;
        self.photo = [UIImage imageNamed:photo];
    
    
    return self;
}

@end
