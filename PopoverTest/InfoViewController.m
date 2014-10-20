//
//  InfoViewController.m
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if( self ){
        NSLog( @"%s:%d", __FUNCTION__, __LINE__ );
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if( self ){
        NSLog( @"%s:%d", __FUNCTION__, __LINE__ );
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog( @"%s:%d", __FUNCTION__, __LINE__ );
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog( @"%s:%d", __FUNCTION__, __LINE__ );
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog( @"%s:%d", __FUNCTION__, __LINE__ );
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog( @"%s:%d", __FUNCTION__, __LINE__ );
}

- (void)dealloc
{
    NSLog( @"%s:%d", __FUNCTION__, __LINE__ );
}

@end
