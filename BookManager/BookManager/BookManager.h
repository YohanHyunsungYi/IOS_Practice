//
//  BookManager.h
//  BookManager
//
//  Created by Yohan Yi on 2017. 2. 4..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;
@interface BookManager : NSObject{
    NSMutableArray *bookList;
}

-(void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSUInteger)countBook;
-(NSString *)findBook:(NSString *)name;
-(NSString *)removeBook:(NSString *)name;

@end
