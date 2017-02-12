//
//  ViewController.m
//  weatherTable
//
//  Created by Yohan Yi on 2017. 2. 12..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dict1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"미국",@"지역",@"눈",@"날씨", nil];
    NSDictionary *dict3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국3",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국5",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국6",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국7",@"지역",@"눈",@"날씨", nil];
    NSDictionary *dict7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국8",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국9",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국0",@"지역",@"눈",@"날씨", nil];
    NSDictionary *dict10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국11",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국12",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict12 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국13",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict13 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국15",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict14 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국16",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict15 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국17",@"지역",@"눈",@"날씨", nil];
    NSDictionary *dict16 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한3국",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict17 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한6국",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict18 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한4국",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict19 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한6국",@"지역",@"우박",@"날씨", nil];
    
    dataList = [[NSArray alloc]initWithObjects:dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15,dict16,dict17,dict18,dict19, nil];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [dataList objectAtIndex:indexPath.row];
    NSString *weatherStr = [dicTemp objectForKey:@"날씨"];
    
    cell.textLabel.text = [dicTemp objectForKey:@"지역"];
    cell.detailTextLabel.text = weatherStr;
    
    if ([weatherStr isEqualToString:@"맑음"]) {
        cell.imageView.image = [UIImage imageNamed:@"1.jpg"];
    }else if ([weatherStr isEqualToString:@"비"]){
        cell.imageView.image = [UIImage imageNamed:@"2.jpg"];
    }else if ([weatherStr isEqualToString:@"눈"]){
        cell.imageView.image = [UIImage imageNamed:@"3.jpg"];
    }else if ([weatherStr isEqualToString:@"흐림"]){
        cell.imageView.image = [UIImage imageNamed:@"4.jpg"];
    }else{
        cell.imageView.image = [UIImage imageNamed:@"5.jpg"];
    }
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
