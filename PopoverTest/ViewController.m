//
//  ViewController.m
//

#import "ViewController.h"
#import "LoremViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonHandler:(id)sender
{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoremViewController* vc = [storyboard instantiateViewControllerWithIdentifier:@"LoremID"];
    UINavigationController* nv = [[UINavigationController alloc] initWithRootViewController:vc];
    nv.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:nv animated:YES completion:nil];
    
}

@end
