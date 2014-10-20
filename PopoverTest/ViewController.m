//
//  ViewController.m
//

#import "ViewController.h"
#import "LoremViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)button1Handler:(id)sender
{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoremViewController* vc = [storyboard instantiateViewControllerWithIdentifier:@"LoremID"];
    UINavigationController* nv = [[UINavigationController alloc] initWithRootViewController:vc];
    nv.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:nv animated:YES completion:nil];
    
}

- (IBAction)button2Handler:(id)sender
{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoremViewController* vc = [storyboard instantiateViewControllerWithIdentifier:@"LoremID"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)button3Handler:(id)sender
{
    LoremViewController* vc = [[LoremViewController alloc] init];
    
    vc.button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [vc.button1 setTitle:@"This is 1" forState:UIControlStateNormal];
    [vc.button1 addTarget:vc action:@selector(button1Handler:) forControlEvents:UIControlEventTouchUpInside];
    vc.button1.frame = CGRectMake(100, 100, 100, 44);
    [vc.view addSubview:vc.button1];
    
    vc.button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [vc.button2 setTitle:@"This is 2" forState:UIControlStateNormal];
    [vc.button2 addTarget:vc action:@selector(button2Handler:) forControlEvents:UIControlEventTouchUpInside];
    vc.button2.frame = CGRectMake(100, 100 + 44, 100, 44);
    [vc.view addSubview:vc.button2];
    
    [self presentViewController:vc animated:YES completion:nil];
}

@end
