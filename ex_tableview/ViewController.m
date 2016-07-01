//
//  ViewController.m
//  ex_tableview
//
//  Created by Captain 10.11.4 on 01/07/16.
//  Copyright © 2016 Captain 10.11.4. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize table_vw_1,table_vw_2,lbl_content;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    table_vw_1.dataSource=self;
    table_vw_1.delegate=self;
    
    table_vw_2.dataSource=self;
    table_vw_2.delegate=self;
    
    arrfruits=[[NSArray alloc]initWithObjects:@"apple",@"mango",@"peach",@"chikoo",@"blueberry",@"asd",@"avvb", nil];
    
    arrtech=[[NSArray alloc]initWithObjects:@"ios",@"android",@"php",@"java",@".net",@"abc", nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView==table_vw_1)
    {
        return arrfruits.count;
    }
    else
    {
        return arrtech.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=nil;
    cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    if (tableView==table_vw_1)
    {
        cell.textLabel.text=[arrfruits objectAtIndex:indexPath.row];
    }
    else if (tableView==table_vw_2)
    {
        cell.textLabel.text=[arrtech objectAtIndex:indexPath.row];
    }
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView==table_vw_1)
    {
        lbl_content.text=[arrfruits objectAtIndex:indexPath.row];
    }
    else if (tableView==table_vw_2)
    {
       lbl_content.text=[arrtech objectAtIndex:indexPath.row];
    }
    

    
    
   }
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
