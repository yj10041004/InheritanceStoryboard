//
//  ViewController.m
//  TestReuseStoryBoard

#import "ViewController.h"
#import "SuperViewController.h"
#import "Sub1ViewController.h"
#import "Sub2ViewController.h"


@interface ViewController ()
- (IBAction)tapSub1:(id)sender;
- (IBAction)tapSub2:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
}


//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender  {    @@ not working..
//  if ([segue.identifier isEqualToString:@"Sub1"]) {
//    [SuperViewController   setConcreteSubclassToInstantiate:[Sub1ViewController class]];
//  }else  {
//    
//    [SuperViewController  setConcreteSubclassToInstantiate:[Sub2ViewController class]];
//  }
//}


- (IBAction)tapSub1:(id)sender {
  
  [SuperViewController setConcreteSubclassToInstantiate:[Sub1ViewController class]];
  Sub1ViewController *sub1 = (Sub1ViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"SuperViewController"];
  [self.navigationController pushViewController:sub1 animated:YES];
  
}

- (IBAction)tapSub2:(id)sender {

  [SuperViewController setConcreteSubclassToInstantiate:[Sub2ViewController class]];
  Sub2ViewController *sub2 = (Sub2ViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"SuperViewController"];
  [self.navigationController pushViewController:sub2 animated:YES];

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
  
}



@end
