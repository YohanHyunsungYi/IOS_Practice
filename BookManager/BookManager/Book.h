//
//  Book.h
//  BookManager
//
//  Created by Yohan Yi on 2017. 2. 4..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *author;

-(void)bookPrint;

@end
