//
//  SuperViewController.m
//  TestReuseStoryBoard


#import "SuperViewController.h"
#import <objc/runtime.h>


@interface SuperViewController ()

@end


Class _concreteSubclass = nil;

@implementation SuperViewController


//http://stackoverflow.com/questions/17379980/how-to-change-a-uiviewcontroller-class-name-in-a-uistoryboard-at-runtime

+ (void) setConcreteSubclassToInstantiate:(Class)c {
  _concreteSubclass = c;
}

+ (id)allocWithZone: (NSZone *)zone {
  
  Class c = _concreteSubclass ?: [self class];
  void *object = calloc(class_getInstanceSize(c), 1);
  *(Class *)object = c;
  return (id)CFBridgingRelease(object);
  
}


- (void)viewDidLoad {
    [super viewDidLoad];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section  {
  return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
  
  UITableViewCell  *cell  = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
  cell.textLabel.text = @"text";
  return cell;
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

