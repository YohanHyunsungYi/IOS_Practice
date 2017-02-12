//
//  CustomCell.h
//  CustomCell
//
//  Created by Yohan Yi on 2017. 2. 12..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *amountLabel;
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imgView;


@end
