//
//  SecondViewController.m
//  001:protocol&delegate
//
//  Created by Yamagami Hiroyuki on 2014/05/25.
//  Copyright (c) 2014年 Hiroyuki Yamagami. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // View1から受け取った値をテキストボックスにセットする。
    self.myTextbox.text = self.myText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewWillDisappear:(BOOL)animated
{
    // ヘッダーファイルの @protocol で定義したメソッドを実装しているか確認する。
    if ([delegate respondsToSelector:@selector(respondsToSelector:)]){
        // 実装していればメソッドを実行する。
        [delegate returnMyTextboxValue:self.myTextbox.text];
    }
}

@end
