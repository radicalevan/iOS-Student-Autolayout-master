//
//  LPAViewController.m
//  Autolayout
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPAViewController.h"

@interface LPAViewController ()

@property (nonatomic, weak) UIButton *  squareButton;
@property (nonatomic, weak) UIButton *  portraitButton;
@property (nonatomic, weak) UIButton *  landscapeButton;

@property (nonatomic, weak) UIView *                framingView;
@property (nonatomic, weak) NSLayoutConstraint *    framingViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    framingViewWidth;

@property (nonatomic, weak) UIView *                purpleView;
@property (nonatomic, weak) NSLayoutConstraint *    purpleViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    purpleViewWidth;

@property (nonatomic, weak) UIView *                orangeRightView;
@property (nonatomic, weak) NSLayoutConstraint *    orangeRightViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    orangeRightViewWidth;

@property (nonatomic, weak) UIView *                orangeLeftView;
@property (nonatomic, weak) NSLayoutConstraint *    orangeLeftViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    orangeLeftViewWidth;

@property (nonatomic, weak) UIView *                redView;
@property (nonatomic, weak) NSLayoutConstraint *    redViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    redViewWidth;

@property (nonatomic, weak) UIView *                blueTopView;
@property (nonatomic, weak) NSLayoutConstraint *    blueTopViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    blueTopViewWidth;

@property (nonatomic, weak) UIView *                blueCenterView;
@property (nonatomic, weak) NSLayoutConstraint *    blueCenterViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    blueCenterViewWidth;

@property (nonatomic, weak) UIView *                blueBottomView;
@property (nonatomic, weak) NSLayoutConstraint *    blueBottomViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *    blueBottomViewWidth;






@end

@implementation LPAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *squareButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [squareButton setTitle:@"Square" forState:UIControlStateNormal];
    [squareButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:squareButton];
    squareButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.squareButton = squareButton;
    
    UIButton *portraitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [portraitButton setTitle:@"Portrait" forState:UIControlStateNormal];
    [portraitButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:portraitButton];
    portraitButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.portraitButton = portraitButton;
    
    UIButton *landscapeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [landscapeButton setTitle:@"Landscape" forState:UIControlStateNormal];
    [landscapeButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:landscapeButton];
    landscapeButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.landscapeButton = landscapeButton;
    
    UIView *framingView = [[UIView alloc] initWithFrame:CGRectZero];
    framingView.translatesAutoresizingMaskIntoConstraints = NO;
    framingView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:framingView];
    self.framingView = framingView;
    
    NSString *buttonsHorizontalConstraints = @"|[squareButton(==portraitButton)][portraitButton(==landscapeButton)][landscapeButton]|";
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:buttonsHorizontalConstraints
                                                                      options:NSLayoutFormatAlignAllCenterY
                                                                      metrics:nil
                                                                        views:NSDictionaryOfVariableBindings(squareButton, portraitButton, landscapeButton)]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:squareButton
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:-50.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:framingView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:framingView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:-50.0]];
    
    NSLayoutConstraint *framingViewHeight = [NSLayoutConstraint constraintWithItem:framingView
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:500.0];
    
    NSLayoutConstraint *framingViewWidth = [NSLayoutConstraint constraintWithItem:framingView
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:500.0];
    
    [framingView addConstraint:framingViewHeight];
    [framingView addConstraint:framingViewWidth];
    
    self.framingViewHeight = framingViewHeight;
    self.framingViewWidth = framingViewWidth;
  
  
  
  
  

  
  
  
    //purpleView
  
  UIView *purpleView = [[UIView alloc] initWithFrame:CGRectZero];
  purpleView.translatesAutoresizingMaskIntoConstraints = NO;
  purpleView.backgroundColor = [UIColor purpleColor];
  [self.framingView addSubview:purpleView];
  self.purpleView = purpleView;
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:purpleView
                                                        attribute:NSLayoutAttributeRightMargin
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeRightMargin
                                                       multiplier:1.0
                                                         constant:-20.0]];
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:purpleView
                                                        attribute:NSLayoutAttributeBottomMargin
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeBottomMargin
                                                       multiplier:1.0
                                                         constant:-20.0]];
  
  
  NSLayoutConstraint *purpleViewHeight = [NSLayoutConstraint constraintWithItem:purpleView
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:50.0];
  
  NSLayoutConstraint *purpleViewWidth = [NSLayoutConstraint constraintWithItem:purpleView
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:framingView
                                                                      attribute:NSLayoutAttributeWidth
                                                                     multiplier:(305.0/500.0)
                                                                       constant:0];
  
  [purpleView addConstraint:purpleViewHeight];
  [framingView addConstraint:purpleViewWidth];
  
  self.purpleViewHeight = purpleViewHeight;
  self.purpleViewWidth = purpleViewWidth;
  
  
  
  
  
  // blueCenterView
  
  UIView *blueCenterView = [[UIView alloc] initWithFrame:CGRectZero];
  blueCenterView.translatesAutoresizingMaskIntoConstraints = NO;
  blueCenterView.backgroundColor = [UIColor blueColor];
  [self.framingView addSubview:blueCenterView];
  self.blueCenterView = blueCenterView;
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:blueCenterView
                                                        attribute:NSLayoutAttributeCenterY
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeCenterY
                                                       multiplier:1.0
                                                         constant:0.0]];
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:blueCenterView
                                                        attribute:NSLayoutAttributeCenterX
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeCenterX
                                                       multiplier:1.0
                                                         constant:0.0]];
  
  
  NSLayoutConstraint *blueCenterViewHeight = [NSLayoutConstraint constraintWithItem:blueCenterView
                                                                          attribute:NSLayoutAttributeHeight
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:nil
                                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                                         multiplier:1.0
                                                                           constant:50];
  
  NSLayoutConstraint *blueCenterViewWidth = [NSLayoutConstraint constraintWithItem:blueCenterView
                                                                         attribute:NSLayoutAttributeWidth
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:50];
  
  [framingView addConstraint:blueCenterViewHeight];
  [framingView addConstraint:blueCenterViewWidth];
  
  self.blueCenterViewHeight = blueCenterViewHeight;
  self.blueCenterViewWidth = blueCenterViewWidth;
  
  
  
  
  
  
  
  // blueTopView
  
  UIView *blueTopView = [[UIView alloc] initWithFrame:CGRectZero];
  blueTopView.translatesAutoresizingMaskIntoConstraints = NO;
  blueTopView.backgroundColor = [UIColor blueColor];
  [self.framingView addSubview:blueTopView];
  self.blueTopView = blueTopView;
  
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:blueTopView
                                                        attribute:NSLayoutAttributeCenterY
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:blueCenterView
                                                        attribute:NSLayoutAttributeCenterY
                                                       multiplier:.45
                                                         constant:0.0]];
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:blueTopView
                                                        attribute:NSLayoutAttributeCenterX
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeCenterX
                                                       multiplier:1.0
                                                         constant:0.0]];
  
  NSLayoutConstraint *blueTopViewHeight = [NSLayoutConstraint constraintWithItem:blueTopView
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:50];
  
  NSLayoutConstraint *blueTopViewWidth = [NSLayoutConstraint constraintWithItem:blueTopView
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:50];
  
  [framingView addConstraint:blueTopViewHeight];
  [framingView addConstraint:blueTopViewWidth];
  
  self.blueTopViewHeight = blueTopViewHeight;
  self.blueTopViewWidth = blueTopViewWidth;
  
  
  
  
  
  
  
  
  // blueBottomView
  
  UIView *blueBottomView = [[UIView alloc] initWithFrame:CGRectZero];
  blueBottomView.translatesAutoresizingMaskIntoConstraints = NO;
  blueBottomView.backgroundColor = [UIColor blueColor];
  [self.framingView addSubview:blueBottomView];
  self.blueBottomView = blueBottomView;
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:blueBottomView
                                                        attribute:NSLayoutAttributeCenterY
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:blueCenterView
                                                        attribute:NSLayoutAttributeCenterY
                                                       multiplier:1.55
                                                         constant:0.0]];
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:blueBottomView
                                                        attribute:NSLayoutAttributeCenterX
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeCenterX
                                                       multiplier:1.0
                                                         constant:0.0]];
  
  NSLayoutConstraint *blueBottomViewHeight = [NSLayoutConstraint constraintWithItem:blueBottomView
                                                                          attribute:NSLayoutAttributeHeight
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:nil
                                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                                         multiplier:1.0
                                                                           constant:50];
  
  NSLayoutConstraint *blueBottomViewWidth = [NSLayoutConstraint constraintWithItem:blueBottomView
                                                                         attribute:NSLayoutAttributeWidth
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:50];
  
  [framingView addConstraint:blueBottomViewHeight];
  [framingView addConstraint:blueBottomViewWidth];
  
  self.blueBottomViewHeight = blueBottomViewHeight;
  self.blueBottomViewWidth = blueBottomViewWidth;
  
  
  
  
  
  
  // redView
  
  UIView *redView = [[UIView alloc] initWithFrame:CGRectZero];
  redView.translatesAutoresizingMaskIntoConstraints = NO;
  redView.backgroundColor = [UIColor redColor];
  [self.framingView addSubview:redView];
  self.redView = redView;
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:redView
                                                        attribute:NSLayoutAttributeRightMargin
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeRightMargin
                                                       multiplier:1.0
                                                         constant:-20.0]];
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:redView
                                                        attribute:NSLayoutAttributeTopMargin
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeTopMargin
                                                       multiplier:1.0
                                                         constant:20.0]];
  
  
  NSLayoutConstraint *redViewHeight = [NSLayoutConstraint constraintWithItem:redView
                                                                   attribute:NSLayoutAttributeHeight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1.0
                                                                    constant:46.0];
  
  NSLayoutConstraint *redViewWidth = [NSLayoutConstraint constraintWithItem:redView
                                                                  attribute:NSLayoutAttributeWidth
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:1.0
                                                                   constant:144];
  
  [framingView addConstraint:redViewHeight];
  [framingView addConstraint:redViewWidth];
  
  self.redViewHeight = redViewHeight;
  self.redViewWidth = redViewWidth;
  
  
  
  
  
  
  
  
  
  
  
  
  
  //orangeRightView
  
  UIView *orangeRightView = [[UIView alloc] initWithFrame:CGRectZero];
  orangeRightView.translatesAutoresizingMaskIntoConstraints = NO;
  orangeRightView.backgroundColor = [UIColor orangeColor];
  [self.framingView addSubview:orangeRightView];
  self.orangeRightView = orangeRightView;
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:orangeRightView
                                                        attribute:NSLayoutAttributeRightMargin
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeRightMargin
                                                       multiplier:1.0
                                                         constant:-28.0]];
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:orangeRightView
                                                        attribute:NSLayoutAttributeTopMargin
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeTopMargin
                                                       multiplier:1.0
                                                         constant:28.0]];
  
  
  NSLayoutConstraint *orangeRightViewHeight = [NSLayoutConstraint constraintWithItem:orangeRightView
                                                                      attribute:NSLayoutAttributeHeight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:30.0];
  
  NSLayoutConstraint *orangeRightViewWidth = [NSLayoutConstraint constraintWithItem:orangeRightView
                                                                     attribute:NSLayoutAttributeWidth
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:nil
                                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                                    multiplier:1.0
                                                                      constant:50];
  
  [orangeRightView addConstraint:orangeRightViewHeight];
  [orangeRightView addConstraint:orangeRightViewWidth];
  
  self.orangeRightViewHeight = orangeRightViewHeight;
  self.orangeRightViewWidth = orangeRightViewWidth;
  
  
  
  
  
  
  
  
  
  
  
  
  //orangeLeftView
  
  UIView *orangeLeftView = [[UIView alloc] initWithFrame:CGRectZero];
  orangeLeftView.translatesAutoresizingMaskIntoConstraints = NO;
  orangeLeftView.backgroundColor = [UIColor orangeColor];
  [self.framingView addSubview:orangeLeftView];
  self.orangeRightView = orangeLeftView;
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:orangeLeftView
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:orangeRightView
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1.0
                                                         constant:-8]];
  
  [self.view addConstraint:[NSLayoutConstraint constraintWithItem:orangeLeftView
                                                        attribute:NSLayoutAttributeTopMargin
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:framingView
                                                        attribute:NSLayoutAttributeTopMargin
                                                       multiplier:1.0
                                                         constant:28.0]];
  
  
  NSLayoutConstraint *orangeLeftViewHeight = [NSLayoutConstraint constraintWithItem:orangeLeftView
                                                                           attribute:NSLayoutAttributeHeight
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:nil
                                                                           attribute:NSLayoutAttributeNotAnAttribute
                                                                          multiplier:1.0
                                                                            constant:30.0];
  
  NSLayoutConstraint *orangeLeftViewWidth = [NSLayoutConstraint constraintWithItem:orangeLeftView
                                                                          attribute:NSLayoutAttributeWidth
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:nil
                                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                                         multiplier:1.0
                                                                           constant:70];
  
  [orangeLeftView addConstraint:orangeLeftViewHeight];
  [orangeLeftView addConstraint:orangeLeftViewWidth];
  
  self.orangeLeftViewHeight = orangeLeftViewHeight;
  self.orangeLeftViewWidth = orangeLeftViewWidth;

}

- (void)resizeFramingView:(id)sender
{
    CGFloat newWidth = 0.0;
    CGFloat newHeight = 0.0;
    
    if (sender == self.squareButton) {
        newWidth = 500.0;
        newHeight = 500.0;
    } else if (sender == self.portraitButton) {
        newWidth = 350.0;
        newHeight = 550.0;
    } else if (sender == self.landscapeButton) {
        newWidth = 900.0;
        newHeight = 300.0;
    }
    
    [UIView animateWithDuration:2.0 animations:^(){
        self.framingViewHeight.constant = newHeight;
        self.framingViewWidth.constant = newWidth;
        [self.view layoutIfNeeded];
    }];
}

@end
