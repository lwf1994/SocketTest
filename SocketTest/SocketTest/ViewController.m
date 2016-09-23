//
//  ViewController.m
//  SocketTest
//
//  Created by liuwanfang on 16/9/23.
//  Copyright © 2016年 liuwanfang. All rights reserved.
//

#import "ViewController.h"
#import <sys/socket.h> // socket相关
#import <netinet/in.h> // internet相关
#import <arpa/inet.h> // 地址解析协议相关
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *contextTextField;
- (IBAction)connectButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;
@property (weak, nonatomic) IBOutlet UITextField *IPtextfield;
@property (weak, nonatomic) IBOutlet UITextField *duanKouTextField;

@property (nonatomic, assign) int socketID;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.socketID = socket(AF_INET, SOCK_STREAM, 0);
}

- (void)socket {
    // 1， 创建socket
//    int socket(int, int, int);
    /**
     参数
     第一个：int：domain: 协议域， AF_INET(IPV4的网络开发）
     第二个：type： socket 类型， SOCK_STREAM（TCP）、SOCK_DGRAM（UDP）
     第三个：int： protocol  IPPROTO_TCP， 如果输入0，可以根据第二个参数自动选择协议返回值
     Socket > 0 ,成功
     */
    
    
    
    // 2. connection（链接到服务器）
//    connect(int, const struct sockaddr *, socklen_t)
    /**
     参数：
     1> 客户端socket
     2> 指向数据结构sockaddr的指针，其中包括目的端口和IP地址服务器的“结构体”地址，C语言没有对象
     3> 结构体数据长度
     返回值 
     0 成功
     */
    struct sockaddr_in addr;
    socklen_t addrLen = size
    connect(_socketID, &addr, <#socklen_t#>)
    // 发送数据
//    send(int, const void *, size_t, int);
    /**
     参数
     1。客户端Socket
     2.发送内容的地址
     3.发送内容太的长度
     4.发送方式的标志，一般为0
     返回值
     如果成功，则返回发送的字节数，失败择返回SOCKET_ERROR
     */
    
    // 接受数据
//    recv(int, void *, size_t, int);
    
    /**
     参数：第一个int： 创建的socket
     void* 接受内容的地址
     size_t： 接受内容的长度
     第二个int： 接受数据的标记 0，就是阻塞式一直等待服务器的数据
     返回值
     接受到的数据长度
     */
    
    // close
//    close（int）；
//    int：创建的socket
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)connect:(id)sender {
}

- (IBAction)send:(id)sender {
}
- (IBAction)connectButton:(id)sender {
}
@end
