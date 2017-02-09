//
//  ViewController.m
//  VisualAdressBook
//
//  Created by Yohan Yi on 2017. 2. 4..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "ViewController.h"
#import "BookManager.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize resultTextView,nameTextField,genreTextField,authorTextField,countLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Book *book1 = [[Book alloc]init];
    book1.name = @"햄릿";
    book1.genre = @"비극";
    book1.author = @"섹스피어";
    
    //[book1 bookPrint];
    
    Book *book2 = [[Book alloc]init];
    book2.name = @"누구를 위하여 종은 울리나";
    book2.genre = @"전쟁";
    book2.author = @"헤밍웨이";
    
    //[book2 bookPrint];
    
    Book *book3 = [[Book alloc]init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";
    
    //[book3 bookPrint];
    
    myBook = [[BookManager alloc]init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];

    countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
    
}


-(IBAction)showAllBookAction:(id)sender{
    resultTextView.text = (@"%@", [myBook showAllBook]);
}

-(IBAction)addBookAction:(id)sende{
    Book *bookTemp = [[Book alloc]init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook:bookTemp];
    resultTextView.text = @"추가되었습니다.";
    
    countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)findBookAction:(id)sender{
    NSString *strTemp = [myBook findBook:nameTextField.text];
    if (strTemp != nil){
        resultTextView.text = strTemp;
    }else{
        resultTextView.text = @"찾으시는 책이 없습니다.";
    }
    
}


-(IBAction)removeBookAction:(id)sender{
    NSString *strTemp = [myBook removeBook:nameTextField.text];
    if (strTemp != nil){
        NSMutableString *str = [[NSMutableString alloc]init];
        [str appendString:strTemp];
        [str appendString:@" 책이 지워졌습니다."];
        resultTextView.text = str;
        countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
    }else{
        resultTextView.text = @"지우려는 책이 없습니다.";
    }
    
}

@end
