//
//  NormalTableViewCell.m
//  SampleApp
//
//  Created by mlch911 on 2019/5/12.
//  Copyright © 2019 mlch911. All rights reserved.
//

#import "NormalTableViewCell.h"

@interface NormalTableViewCell ()

@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UILabel *sourceLabel;
@property(nonatomic, strong) UILabel *commentLabel;
@property(nonatomic, strong) UILabel *timeLabel;

@end

@implementation NormalTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
	if (self) {
		[self addSubview:({
			self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 300, 50)];
//			self.titleLabel.backgroundColor = [UIColor redColor];
			self.titleLabel.font = [UIFont systemFontOfSize:16];
			self.titleLabel.textColor = [UIColor blackColor];
			self.titleLabel;
		})];
		[self addSubview:({
			self.sourceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 70, 30, 20)];
//			self.sourceLabel.backgroundColor = [UIColor redColor];
			self.sourceLabel.font = [UIFont systemFontOfSize:12];
			self.sourceLabel.textColor = [UIColor grayColor];
			self.sourceLabel;
		})];
		[self addSubview:({
			self.commentLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 70, 30, 20)];
//			self.commentLabel.backgroundColor = [UIColor redColor];
			self.commentLabel.font = [UIFont systemFontOfSize:12];
			self.commentLabel.textColor = [UIColor grayColor];
			self.commentLabel;
		})];
		[self addSubview:({
			self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(120, 70, 30, 20)];
//			self.timeLabel.backgroundColor = [UIColor redColor];
			self.timeLabel.font = [UIFont systemFontOfSize:12];
			self.timeLabel.textColor = [UIColor grayColor];
			self.timeLabel;
		})];
	}
	return self;
}

- (void) layoutTableViewCell {
	self.titleLabel.text = @"极客时间iOS开发";
	
	self.sourceLabel.text = @"极客时间";
	[self.sourceLabel sizeToFit];

	self.commentLabel.text = @"1888评论";
	[self.commentLabel sizeToFit];
	self.commentLabel.frame = CGRectMake(self.sourceLabel.frame.origin.x + self.sourceLabel.frame.size.width + 15, self.commentLabel.frame.origin.y, self.commentLabel.frame.size.width, self.commentLabel.frame.size.height);
	
	self.timeLabel.text = @"三分钟前";
	[self.timeLabel sizeToFit];
	self.timeLabel.frame = CGRectMake(self.commentLabel.frame.origin.x + self.commentLabel.frame.size.width + 15, self.timeLabel.frame.origin.y, self.timeLabel.frame.size.width, self.timeLabel.frame.size.height);
}

@end
