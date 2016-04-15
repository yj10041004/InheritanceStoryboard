//
//  Sub1ViewController.m
//  TestReuseStoryBoard
//

#import "Sub1ViewController.h"

@interface Sub1ViewController ()

@end


@implementation Sub1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath  {
  
  NSLog(@" sub1   %s", __func__);
  
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
