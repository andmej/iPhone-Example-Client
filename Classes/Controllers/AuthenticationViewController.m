//
//  OAuthViewController.m
//  Gowalla-Basic
//
//  Created by Mattt Thompson on 10/06/30.
//  Copyright 2010 Mattt Thompson. All rights reserved.
//

#import "AuthenticationViewController.h"

@implementation AuthenticationViewController


#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
	[super viewDidLoad];
	
	NSString * OAuthURLString = [kGowallaOAuthURL stringByAppendingFormat:@"?redirect_uri=%@&client_id=%@", kGowallaRedirectURI, kGowallaAPIKey];
	NSURL * OAuthURL = [NSURL URLWithString:OAuthURLString];
	NSURLRequest * OAuthURLRequest = [[[NSURLRequest alloc] initWithURL:OAuthURL] autorelease];
	
	[webView loadRequest:OAuthURLRequest];
}

#pragma mark -
#pragma mark UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)wv {
	NSLog(@"webViewDidStartLoad: %@", [wv.request URL]);
}

@end