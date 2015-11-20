//
//  ViewController.m
//  Ziczac
//
//  Created by Aragon on 11/20/15.
//  Copyright © 2015 Aragon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtSoHang;
@property (weak, nonatomic) IBOutlet UITextField *txtLength;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnPrinf:(id)sender {
    NSString *SoHang= self.txtSoHang.text;
    NSString *Length= self.txtLength.text;
    [self PrinfScreenLine:[SoHang intValue] Length:[Length intValue]];
    
}
-(void)PrinfScreenLine:(int)SoDong Length:(int)DoDai{
    if (SoDong==1) {
        printf("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    }
    else
    {
        for (int a=0; a<SoDong; a++) {
            for (int i= 1; i<=DoDai; i++)
            {
                for (int j= 1; j<=(SoDong-1)*2; j++)
                {
                    if (j==SoDong-a||j==SoDong+a) {
                        printf("+");
                        
                    }else
                    {
                        printf("-");
                    }
                    
                }
            }
            printf("\n");
            // in cac dong con lai
        }
        
    }
    
    
}

@end
