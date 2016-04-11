//
//  SecondViewController.m
//  task json postalcode
//
//  Created by Mac on 3/21/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize tbl_vw_2,postalcode,countryCode;

- (void)viewDidLoad;
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arr_2=[[NSMutableArray alloc]init];
    
    tbl_vw_2.dataSource=self;
    tbl_vw_2.delegate=self;
    
    NSString *st_format=[NSString stringWithFormat:@"http://api.geonames.org/postalCodeLookupJSON?postalcode=%@&country=%@&username=progab",postalcode,countryCode];
    NSURL *url=[NSURL URLWithString:st_format];
    NSData *data=[NSData dataWithContentsOfURL:url];
    NSDictionary *dict=[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    arr_2=[dict objectForKey:@"postalcodes"];
    NSLog(@"%@",dict);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arr_2.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=nil;
    cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    cell.textLabel.text=[[arr_2 objectAtIndex:indexPath.row]objectForKey:@"postalcode"];
    cell.detailTextLabel.text=[[arr_2 objectAtIndex:indexPath.row]objectForKey:@"countryCode"];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MapViewController *mc=[self.storyboard instantiateViewControllerWithIdentifier:@"MapViewController"];
    mc.lat=[[arr_2 objectAtIndex:indexPath.row]objectForKey:@"lat"];
    mc.lng=[[arr_2 objectAtIndex:indexPath.row]objectForKey:@"lng"];
    [self.navigationController pushViewController:mc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
