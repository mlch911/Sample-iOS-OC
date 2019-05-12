//
//  RecommendViewController.m
//  SampleApp
//
//  Created by mlch911 on 2019/5/12.
//  Copyright © 2019 mlch911. All rights reserved.
//

#import "RecommendViewController.h"

@interface RecommendViewController ()

@end

@implementation RecommendViewController

- (instancetype)init
{
	self = [super init];
	if (self) {
		self.view.backgroundColor = [UIColor whiteColor];
		self.tabBarItem.title = @"推荐";
		self.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
		self.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x.png"];
	}
	return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
	scrollView.backgroundColor = [UIColor whiteColor];
	scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 5, self.view.bounds.size.height);
	scrollView.pagingEnabled = YES;
	
	NSArray *colorArray = @[[UIColor redColor], [UIColor blueColor], [UIColor yellowColor], [UIColor grayColor], [UIColor greenColor]];
	for (int i = 0; i < 5; i++) {
		[scrollView addSubview:({
			UIView *view = [[UIView alloc] initWithFrame:CGRectMake(scrollView.bounds.size.width * i, 0, scrollView.bounds.size.width, scrollView.bounds.size.height)];
			view.backgroundColor = colorArray[i];
			view;
		})];
	}
	
	[self.view addSubview:scrollView];
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
