//
//  Item3Controller.m
//  text1
//
//  Created by 傻子露 on 16/6/24.
//  Copyright © 2016年 Liqingquan. All rights reserved.
//

#import "Item3Controller.h"

@interface Item3Controller ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation Item3Controller{
    NSMutableArray * _array;
    UITableView * _tableview;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _array = [NSMutableArray array];
    // Do any additional setup after loading the view.
    [self configUI];
    [self calculated];
}
-(void)configUI{
    _tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    _tableview.delegate=self;
    _tableview.dataSource=self;
    [self.view addSubview:_tableview];
}
-(void)calculated{
    for (int i  = 1 ;i <10; i ++){
        for (int j =i+1 ;j< 10 ;j ++){
            for(int k =j+1;k<10;k++){//NSLog(@"%d,%d,%d",i,j,k);
                if (i+j+k == 24||i+j-k == 24||i+j*k == 24||i+j/k == 24||i*j+k == 24||i*j-k == 24||i*j*k == 24||i*j/k == 24||i/j/k == 24) {
                    NSLog(@"%d,%d,%d",i,j,k);
                    NSString * string = [NSString stringWithFormat:@"%d,%d,%d",i,j,k];
                    [_array addObject:string];
                }
            }
        }
    }
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *TableSampleIdentifier = @"TableSampleIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableSampleIdentifier];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:TableSampleIdentifier];
    }else{
        
    }
    cell.textLabel.text = _array[indexPath.row];
    return cell;
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
