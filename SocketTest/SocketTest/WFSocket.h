//
//  WFSocket.h
//  SocketTest
//
//  Created by liuwanfang on 16/9/25.
//  Copyright © 2016年 liuwanfang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFSocket : NSObject
@property (nonatomic, assign) int socketClientId;

@property (nonatomic, assign) BOOL   success;

- (void)createSocket;
@end
