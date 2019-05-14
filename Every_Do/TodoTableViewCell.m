//
//  TodoTableViewCell.m
//  Every_Do
//
//  Created by Luiz on 5/14/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "TodoTableViewCell.h"
@protocol TodoTableViewCellDelegate

@end

@implementation TodoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
