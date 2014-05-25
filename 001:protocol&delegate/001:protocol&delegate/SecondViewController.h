//
//  SecondViewController.h
//  001:protocol&delegate
//
//  Created by Yamagami Hiroyuki on 2014/05/25.
//  Copyright (c) 2014年 Hiroyuki Yamagami. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate
@required
// myTextboxの値を返すためのメソッド
- (void) returnMyTextboxValue:(NSString *) value;
@end

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *myTextbox;

// View1から、View2のmyTextboxにセットする値を入れるためのプロパティ
@property (nonatomic) NSString *myText;

// SecondViewControllerDelegate に適合したプロパティを宣言。
// このプロパティを通じて上の protocol で宣言したメソッドを使用する。
@property (nonatomic) NSString<SecondViewControllerDelegate> *delegate;

@end
