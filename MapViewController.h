//
//  MapViewController.h
//  task json postalcode
//
//  Created by tops on 3/22/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController<MKMapViewDelegate>
{
    NSArray *arr_3;
}

@property (weak, nonatomic) IBOutlet MKMapView *map_vw;
@property (retain,nonatomic)NSString *lat;
@property(retain,nonatomic)NSString *lng;

@end
