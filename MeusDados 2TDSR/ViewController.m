//
//  ViewController.m
//  MeusDados 2TDSR
//
//  Created by Usuário Convidado on 17/02/17.
//  Copyright © 2017 Victor Viel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    lb1.text=@"Meu nome.....";
    lb2.text=@"E minha idade é";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnExibir:(id)sender {
    
    lb1.text = @"Victor";
    lb2.text=@"21";
    
    
}
@end
