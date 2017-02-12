//
//  MasterViewController.m
//  CustomCell
//
//  Created by Yohan Yi on 2017. 2. 12..
//  Copyright © 2017년 Yohan Yi. All rights reserved.
//

#import "MasterViewController.h"
#import "CustomCell.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *item1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"사과",@"name",@"10.jpg",@"image",@"10",@"amount",@"3000원",@"value", nil];
    NSDictionary *item2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"블루베리",@"name",@"11.jpg",@"image",@"11",@"amount",@"30000원",@"value", nil];
    NSDictionary *item3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"당근",@"name",@"12.jpg",@"image",@"12",@"amount",@"20400원",@"value", nil];
    NSDictionary *item4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"체리",@"name",@"13.jpg",@"image",@"13",@"amount",@"6000원",@"value", nil];
    NSDictionary *item5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"포도",@"name",@"14.jpg",@"image",@"14",@"amount",@"78000원",@"value", nil];
    NSDictionary *item6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"토마토",@"name",@"15.jpg",@"image",@"15",@"amount",@"3000원",@"value", nil];
    NSDictionary *item7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"키위",@"name",@"16.jpg",@"image",@"16",@"amount",@"75000원",@"value", nil];
    NSDictionary *item8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"레몬",@"name",@"17.jpg",@"image",@"17",@"amount",@"4500원",@"value", nil];
    NSDictionary *item9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"라임",@"name",@"18.jpg",@"image",@"18",@"amount",@"300원",@"value", nil];
    NSDictionary *item10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"고기",@"name",@"19.jpg",@"image",@"14",@"amount",@"67000원",@"value", nil];
    NSDictionary *item11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"멜론",@"name",@"20.jpg",@"image",@"10",@"amount",@"13000원",@"value", nil];
    
    itemList = [[NSArray alloc]initWithObjects:item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11, nil];
    
    UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"10.jpg"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    backgroundImageView.frame = self.tableView.frame;

    self.tableView.backgroundView = backgroundImageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Hello" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [itemList objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = [dicTemp objectForKey:@"name"];
    cell.amountLabel.text = [dicTemp objectForKey:@"amount"];
    cell.valueLabel.text = [dicTemp objectForKey:@"value"];
    cell.imgView.image = [UIImage imageNamed:[dicTemp objectForKey:@"image"]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier]isEqualToString:@"showDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        [[segue destinationViewController]setDetailData:[itemList objectAtIndex:indexPath.row]];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
