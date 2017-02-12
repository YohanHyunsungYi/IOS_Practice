//
//  ViewController.m
//  selectCar
//
//  Created by Yohan Yi on 2017. 2. 11..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView;

- (void)viewDidLoad {
    [super viewDidLoad];
    companyName = [[NSArray alloc]initWithObjects:@"테슬라",@"람보르기니",@"포르세", nil];
    
    carModel = [[NSArray alloc]init];
    carModelImage = [[NSArray alloc]init];
    
    
    tesla = [[NSArray alloc]initWithObjects:@"모델S",@"모델X", nil];
    teslaImageNames = [[NSArray alloc]initWithObjects:@"1.jpg",@"2.jpg", nil];
    
    lamborghini = [[NSArray alloc]initWithObjects:@"자기1",@"자기2",@"자기3", nil];
    lamborghiniImageNames = [[NSArray alloc]initWithObjects:@"12.jpg",@"13.jpg", @"14.jpg", nil];
    
    porsche = [[NSArray alloc]initWithObjects:@"자기4",@"자기5",@"자기6",@"자기7", nil];
    porscheImageNames = [[NSArray alloc]initWithObjects:@"17.jpg",@"18.jpg",@"19.jpg",@"20.jpg", nil];
    
    carModel = tesla;
    carModelImage = teslaImageNames;
    
    imgView.layer.cornerRadius = 30.0;
    imgView.layer.masksToBounds = true;

}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0 ){
        return companyName.count;
    }else{
        return carModel.count;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0){
        return [companyName objectAtIndex:row];
    }else{
        return [carModel objectAtIndex:row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component == 0 && row == 0){
        carModel = tesla;
        carModelImage = teslaImageNames;
    }else if (component == 0 && row == 1){
        carModel = lamborghini;
        carModelImage = lamborghiniImageNames;
    }else if (component == 0 && row == 2){
        carModel = porsche;
        carModelImage = porscheImageNames;
    }
    [pickerView reloadAllComponents];
    
    imgView.image = [UIImage imageNamed:[carModelImage objectAtIndex:[pickerView selectedRowInComponent:1]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
