//
//  FirstViewController.m
//  001:protocol&delegate
//
//  Created by Yamagami Hiroyuki on 2014/05/25.
//  Copyright (c) 2014年 Hiroyuki Yamagami. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

// 採用したView2のprotoclに従ってメソッドを実装する。
- (void)returnMyTextboxValue:(NSString *)value
{
    // View2のテキストボックスの値をここでセットする。
    self.myTextbox.text = value;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // 遷移先のViewのインスタンスを取得する。
    SecondViewController *svc = segue.destinationViewController;
    
    // 遷移先のViewのテキストボックスに値をセットするための変数にセットする。
    // (テキストボックスのtextプロパティに直接セットは不可）
    svc.myText = self.myTextbox.text;
    
    // 
    svc.delegate = self;
}

@end
