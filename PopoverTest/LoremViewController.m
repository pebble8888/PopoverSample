//
//  LoremViewController.m
//  PopoverTest
//
//  Copyright (c) 2014年 pebble8888. All rights reserved.
//

#import "LoremViewController.h"
#import "InfoViewController.h"
#import "WYPopoverController.h"

@interface LoremViewController ()
<UIPopoverControllerDelegate,
 WYPopoverControllerDelegate
 >
{
    UIPopoverController* _uipopover;
    WYPopoverController* _wypopover;
}
@end

@implementation LoremViewController

- (IBAction)button1Handler:(id)sender
{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    InfoViewController* vc = [storyboard instantiateViewControllerWithIdentifier:@"InfoVCID"];
    vc.preferredContentSize = CGSizeMake(200, 300);
    _uipopover = [[UIPopoverController alloc] initWithContentViewController:vc];
    _uipopover.delegate = self;
    
    [_uipopover presentPopoverFromRect:CGRectMake(100, 100, 0, 0)
                                  inView:sender
                permittedArrowDirections:UIPopoverArrowDirectionAny
                                animated:YES];
    
}

- (IBAction)button2Handler:(id)sender
{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    InfoViewController* vc = [storyboard instantiateViewControllerWithIdentifier:@"InfoVCID"];
    vc.preferredContentSize = CGSizeMake(200, 300);
    _wypopover = [[WYPopoverController alloc] initWithContentViewController:vc];
    _wypopover.delegate = self;
    
    [_wypopover presentPopoverFromRect:CGRectMake(100, 100, 0, 0)
                                  inView:sender
                permittedArrowDirections:WYPopoverArrowDirectionAny
                                animated:YES];
    
        
}

- (void)popoverControllerDidDismissPopover:(id)popoverController
{
    if( _uipopover == popoverController ){
        _uipopover = nil;
    } else if( _wypopover == popoverController ){
        _wypopover = nil;
    }
}

@end
