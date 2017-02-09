//
//  Book.m
//  BookManager
//
//  Created by Yohan Yi on 2017. 2. 4..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize name,genre,author;

-(void)bookPrint{
    NSLog(@"Name : %@",name);
    NSLog(@"Genre : %@",genre);
    NSLog(@"Author : %@",author);
}

@end
