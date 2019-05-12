//
//  ViewController.m
//  SampleApp
//
//  Created by mlch911 on 2019/4/21.
//  Copyright © 2019 mlch911. All rights reserved.
//

#import "ViewController.h"
#import "NormalTableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

-(instancetype) init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:tableView];
    
//    tableView.rowHeight = 200;
    tableView.dataSource = self;
    tableView.delegate = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2000;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *controller = [[UIViewController alloc] init];
    controller.view.backgroundColor = [UIColor whiteColor];
    controller.title = [NSString stringWithFormat: @"第%@行", @(indexPath.row)];
    [self.navigationController pushViewController:controller animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    创建可重用cell
    NormalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if (!cell) {
        cell = [[NormalTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    
//    cell.textLabel.text = [[NSString alloc] initWithFormat:@"主标题：第%@行", @(indexPath.row)];
//    cell.detailTextLabel.text = [[NSString alloc] initWithFormat:@"副标题：第%ld行", (long)indexPath.row];
//    cell.imageView.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
	[cell layoutTableViewCell];
	
    return cell;
}

@end
