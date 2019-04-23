//
//  ViewController.m
//  SampleApp
//
//  Created by mlch911 on 2019/4/21.
//  Copyright © 2019 mlch911. All rights reserved.
//

#import "ViewController.h"

@implementation TestView

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
        [super willMoveToSuperview: newSuperview];
}
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow: newWindow];
}
- (void)didMoveToWindow{
    [super didMoveToWindow];
}

@end

@interface ViewController ()

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
    TestView *view1 = [[TestView alloc] init];
    view1.frame = CGRectMake(100, 100, 100, 100);
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview: view1];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    [view1 addGestureRecognizer:tapGesture];
}

- (void)pushController {
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"内容";
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧标题" style:UIBarButtonItemStyleDone target:self action:nil];
    
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
