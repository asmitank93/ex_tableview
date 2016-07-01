//
//  ViewController.h
//  ex_tableview
//
//  Created by Captain 10.11.4 on 01/07/16.
//  Copyright © 2016 Captain 10.11.4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *arrfruits;
    NSArray *arrtech;
}

@property (weak, nonatomic) IBOutlet UITableView *table_vw_1;
@property (weak, nonatomic) IBOutlet UITableView *table_vw_2;

@property (weak, nonatomic) IBOutlet UILabel *lbl_content;

@end

