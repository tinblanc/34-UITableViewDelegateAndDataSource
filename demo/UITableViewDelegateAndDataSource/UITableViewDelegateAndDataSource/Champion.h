//
//  Champion.h
//  UITableViewDelegateAndDataSource
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Champion : NSObject
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* role;
@property (nonatomic, strong) UIImage* photo;

-(instancetype) init: (NSString*) name withRole: (NSString*) role andPhoto: (NSString*) photo;
@end
