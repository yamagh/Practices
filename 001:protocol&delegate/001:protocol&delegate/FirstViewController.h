//
//  FirstViewController.h
//  001:protocol&delegate
//
//  Created by Yamagami Hiroyuki on 2014/05/25.
//  Copyright (c) 2014年 Hiroyuki Yamagami. All rights reserved.
//

#import <UIKit/UIKit.h>

//
#import "SecondViewController.h"

// SecondViewのdelegateを採用する
@interface FirstViewController : UIViewController <SecondViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *myTextbox;

@end
