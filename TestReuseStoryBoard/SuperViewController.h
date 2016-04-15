//
//  SuperViewController.h
//  TestReuseStoryBoard

#import <UIKit/UIKit.h>


@interface SuperViewController : UITableViewController

+ (void) setConcreteSubclassToInstantiate:(Class)c;

@end
