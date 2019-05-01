//
//  ViewController.m
//  SampleApp
//
//  Created by mlch911 on 2019/4/21.
//  Copyright © 2019 mlch911. All rights reserved.
//

#import "ViewController.h"

//@interface TestView : UIView
//
//@end
//
//@implementation TestView
//
//- (instancetype)init {
//    self = [super init];
//    if (self) {
//
//    }
//    return self;
//}
//
//- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
//    [super willMoveToSuperview: newSuperview];
//}
//- (void)didMoveToSuperview{
//    [super didMoveToSuperview];
//}
//- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
//    [super willMoveToWindow: newWindow];
//}
//- (void)didMoveToWindow{
//    [super didMoveToWindow];
//}
//
//@end

@interface ViewController () <UITableViewDataSource>

@end

@implementation ViewController

-(instancetype) init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear: animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear: animated];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear: animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:tableView];
    
    tableView.rowHeight = 200;
    tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    创建可重用cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    
    cell.textLabel.text = [[NSString alloc] initWithFormat:@"主标题：第%ld行", (long)indexPath.row + 1];
    cell.detailTextLabel.text = [[NSString alloc] initWithFormat:@"副标题：第%ld行", (long)indexPath.row + 1];
    cell.imageView.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    
    return cell;
}

@end
