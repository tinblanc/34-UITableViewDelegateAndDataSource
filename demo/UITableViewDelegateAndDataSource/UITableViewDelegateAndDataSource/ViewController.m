//
//  ViewController.m
//  UITableViewDelegateAndDataSource
//
//  Created by Tin Blanc on 4/26/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "ViewController.h"
#import "Champion.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController
{
    NSMutableArray* array ;
    Champion* champ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"League of Legends";
    
    Champion* champ1 = [[Champion alloc] init:@"Garen" withRole:@"Top" andPhoto:@"garen.png"];
    
    Champion* champ2 = [[Champion alloc] init:@"Lux" withRole:@"Mid" andPhoto:@"lux.png"];
    
    Champion* champ3 = [[Champion alloc] init:@"Vayne" withRole:@"AD Carry" andPhoto:@"vayne.png"];
    
    array = [[NSMutableArray alloc] init];
    [array addObject:champ1];
    [array addObject:champ2];
    [array addObject:champ3];
    
   
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"]; // Thay đổi style cho cell
    
    champ = array[indexPath.row];
    cell.textLabel.text = champ.name;
    cell.detailTextLabel.text = champ.role;
    cell.detailTextLabel.textColor = [UIColor grayColor];
    cell.imageView.image = champ.photo;
    
    
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

// Thay đổi chiều cao cho row
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}





@end
