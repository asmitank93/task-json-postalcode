//
//  ViewController.h
//  task json postalcode
//
//  Created by Mac on 3/21/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *arr;
}

@property (weak, nonatomic) IBOutlet UITableView *tbl_vw;
@property(retain,nonatomic)NSString *str_vw_1;

@end

