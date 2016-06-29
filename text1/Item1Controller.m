//
//  Item1Controller.m
//  text1
//
//  Created by 傻子露 on 16/6/24.
//  Copyright © 2016年 Liqingquan. All rights reserved.
//

#import "Item1Controller.h"

@interface Item1Controller ()

@property (weak, nonatomic) IBOutlet UITextField *MySalaryTF;
@property (weak, nonatomic) IBOutlet UILabel *afterGalary;
@property (weak, nonatomic) IBOutlet UILabel *WuxianYijinE;
@property (weak, nonatomic) IBOutlet UILabel *personalIncomeTax;

@end

@implementation Item1Controller
/**
 *  养老保险单位缴纳比例：21%;个人缴纳比例：8%
 　　医疗保险单位缴纳比例：11%;个人缴纳比例：2%
 　　失业保险单位缴纳比例：1.5%;个人缴纳比例：0.5%
 　　生育保险单位缴纳比例：1%;个人不承担缴费
 　　工伤保险单位缴纳比例：0.5%;个人不承担缴费
 
 1、工资扣除标准3500元/月(2011年9月1日起正式执行)(工资、薪金所得适用)
 　　2、应纳个人所得税税额=应纳税所得额×适用税率-速算扣除数
 　　应纳税所得额=扣除三险一金后月收入-扣除标准
 　　交税计算
 　　工资个税的计算公式为:
 　　应纳税额=(工资薪金所得 -“五险一金”-扣除数)×适用税率-速算扣除数
 　　个税起征点是3500，使用超额累进税率的计算方法如下：
 　　1、缴税=全月应纳税所得额*税率-速算扣除数
 　　2、实发工资=应发工资-四金-缴税
 　　3、全月应纳税所得额=(应发工资-四金)-3500
 　　4、扣除标准：个税按3500元/月的起征标准算
 　　例：如果某人的工资收入为5000元，他应纳个人所得税为：(5000—3500)×3%—0=45(元)。
 　　税率表
 　　上海扣税实行7级超额累进个人所得税税率表
 　　应纳个人所得税税额= 应纳税所得额× 适用税率- 速算扣除数
 　　2011年9月1日起调整后的7级超额累进税率
 全月应纳税所得额                         税率          速算扣除数（元）
 全月应纳税所得额不超过1500元               3%           0     45
 全月应纳税所得额超过1500元至4500元         10%          105    300
 全月应纳税所得额超过4500元至9000元         20%          555    400
 全月应纳税所得额超过9000元至35000元        25%          1005
 全月应纳税所得额超过35000元至55000元       30%          2755
 全月应纳税所得额超过55000元至80000元       35%          5505
 全月应纳税所得额超过80000元               45%          13505

 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)GalaryPut:(UITextField *)sender {
    
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
