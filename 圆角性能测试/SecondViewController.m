//
//  SecondViewController.m
//  圆角性能测试
//
//  Created by 张延深 on 2016/10/18.
//  Copyright © 2016年 宜信. All rights reserved.
//

#import "SecondViewController.h"
#import "YSTableViewCell.h"

@interface SecondViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISwitch *roundCornerSwitch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *borderSegmentedControl;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cell";
    YSTableViewCell *cell = (YSTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.showRoundCorner = self.roundCornerSwitch.on;
    cell.showBorder = self.borderSegmentedControl.selectedSegmentIndex;
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 88;
}

#pragma mark - Event response

- (IBAction)showRoundCorner:(UISwitch *)sender {
    [self.tableView reloadData];
}

- (IBAction)showBorder:(UISegmentedControl *)sender {
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"SecondViewController释放了！");
}

@end
