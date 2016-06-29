//
//  ViewController.m
//  text1
//
//  Created by 傻子露 on 16/6/24.
//  Copyright © 2016年 Liqingquan. All rights reserved.
//

#import "ViewController.h"
#import "Item1Controller.h"
#import "Item2Controller.h"
#import "Item3Controller.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnClicked:(UIButton *)sender {
    switch (sender.tag) {
        case 10:
        {
            UIStoryboard *mainStory = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            Item1Controller * Item1VC = [mainStory instantiateViewControllerWithIdentifier:@"Item1"];
            Item1VC.navigationItem.title = @"个人所得税计算";
            [self.navigationController pushViewController:Item1VC animated:YES];
        }
            break;
        case 20:
        {
            UIStoryboard *mainStory = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            Item2Controller * Item2VC = [mainStory instantiateViewControllerWithIdentifier:@"Item2"];
            Item2VC.navigationItem.title = @"银行贷款计算";
            [self.navigationController pushViewController:Item2VC animated:YES];
        }
            break;
        case 30:
        {
            UIStoryboard *mainStory = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            Item3Controller * Item3VC = [mainStory instantiateViewControllerWithIdentifier:@"Item3"];
            Item3VC.navigationItem.title = @"排列组合计算";
            [self.navigationController pushViewController:Item3VC animated:YES];
        }
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
