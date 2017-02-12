//
//  CustomCell.m
//  CustomCell
//
//  Created by Yohan Yi on 2017. 2. 12..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize imgView,nameLabel,valueLabel,amountLabel;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    imgView.layer.cornerRadius = 50.0;
    imgView.layer.masksToBounds = true;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
