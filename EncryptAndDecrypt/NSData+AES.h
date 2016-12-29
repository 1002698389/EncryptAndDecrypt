//
//  NSData+AES.h
//  EncryptAndDecrypt
//
//  Created by Mac on 2016/12/29.
//  Copyright © 2016年 zhangjing90s@foxmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface NSData (AES)
- (NSData *)AES256EncryptWithKey:(NSString *)key;
- (NSData *)AES256DecryptWithKey:(NSString *)key;
@end
