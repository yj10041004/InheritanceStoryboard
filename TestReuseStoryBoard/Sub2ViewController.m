//
//  Sub2ViewController.m
//  TestReuseStoryBoard
//
//

#import "Sub2ViewController.h"

@interface Sub2ViewController ()

@end

@implementation Sub2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    NSLog(@"  sub 2 view didload");
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath  {
  NSLog(@" sub2   %s", __func__);

  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
