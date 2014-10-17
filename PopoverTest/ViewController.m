//
//  ViewController.m
//

#import "ViewController.h"
#import "InfoViewController.h"

@interface ViewController ()
{
    UIPopoverController* _popover;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonHandler:(id)sender
{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    InfoViewController* vc = [storyboard instantiateViewControllerWithIdentifier:@"InfoVCID"];
    //InfoViewController* vc = [[InfoViewController alloc] init];
    vc.preferredContentSize = CGSizeMake(200, 300);
    _popover = [[UIPopoverController alloc] initWithContentViewController:vc];
    _popover.delegate = self;
    
    [_popover presentPopoverFromRect:CGRectMake(100, 100, 0, 0)
                                  inView:sender
                permittedArrowDirections:UIPopoverArrowDirectionAny
                                animated:YES];
}

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    _popover = nil;
}

@end
