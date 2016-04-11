//
//  SecondViewController.h
//  task json postalcode
//
//  Created by Mac on 3/21/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapViewController.h"

@interface SecondViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *arr_2;
}
@property (weak, nonatomic) IBOutlet UITableView *tbl_vw_2;

@property(retain,nonatomic)NSString *postalcode;
@property(retain,nonatomic)NSString *countryCode;

@end
