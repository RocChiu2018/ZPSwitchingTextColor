//
//  ViewController.m
//  切换文字颜色-第一个iOS程序
//
//  Created by apple on 16/4/22.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 xib上面的一个按钮可以关联代码中的多个方法，同时代码中的一个方法也可以关联xib中的多个按钮，是多对多的关系。
 */
#import "ViewController.h"
#import "NSObject+HighClass.h"

/**
 分类：可以为原来的类添加额外的方法，但是不能添加额外的属性；
 类拓展：既可以为原来的类添加额外的方法，也可以添加额外的属性；
 分类在小括号内会有分类的名称，而类扩展则在小括号内不写任何东西；
 类拓展既可以写在.h文件中也可以写在.m文件中，但是为了有更好的封装性一般写在.m文件中；
 基于一个ViewController控制一个View的原则，为了有更好的封装性，所以其他的ViewController最好不能操纵当前ViewController里面的属性，故而属性最好不要写在.h文件中，应该写在.m文件中的类扩展里面。
 */
@interface ViewController ()

@property (nonatomic, strong) IBOutlet UILabel *label;

@end


@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark ————— 点击红色按钮 —————
-(IBAction)redClick:(id)sender
{
    //改变文字颜色
    self.label.textColor = [UIColor redColor];
    //改变文字内容
    self.label.text = @"我是红色文字";
    //改变文字大小
    self.label.font = [UIFont systemFontOfSize:20];
    
    [self.label print];
}

#pragma mark ————— 点击绿色按钮 —————
-(IBAction)greenClick:(id)sender
{
    self.label.textColor = [UIColor greenColor];
    self.label.text = @"我是绿色文字";
    self.label.font = [UIFont systemFontOfSize:20];
}

#pragma mark ————— 点击蓝色按钮 —————
-(IBAction)blueClick:(id)sender
{
    self.label.textColor = [UIColor blueColor];
    self.label.text = @"我是蓝色文字";
    self.label.font = [UIFont systemFontOfSize:20];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
