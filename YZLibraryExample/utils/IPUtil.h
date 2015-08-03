//
//  IPUtil.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/31.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IPUtil : NSObject
/**获取设备ip地址*,有可能为nil*/
+(NSString*)getDeviceIPAddress;
/**获取设备子网掩码，有可能为nil*/
+(NSString*)getDeviceMaskAddress;
@end
