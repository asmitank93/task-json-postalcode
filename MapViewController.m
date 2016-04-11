//
//  MapViewController.m
//  task json postalcode
//
//  Created by tops on 3/22/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize map_vw,lat,lng;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
      self.map_vw.delegate = self;
    
    NSString *st_format=[NSString stringWithFormat:@"http://api.geonames.org/findNearbyPostalCodesJSON?lat=%@&lng=%@&username=progab",lat,lng];
    NSURL *url=[NSURL URLWithString:st_format];
    NSData *data=[NSData dataWithContentsOfURL:url];
    NSDictionary *dict=[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    arr_3=[dict objectForKey:@"postalcodes"];
    NSLog(@"%@",dict);

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
