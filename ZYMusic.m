//
//  ZYMusic.m
//  ZYMusicPlayer
//
//  Created by 王志盼 on 15/10/12.
//  Copyright © 2015年 王志盼. All rights reserved.
//

#import "ZYMusic.h"

@implementation ZYMusic
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.icon = [aDecoder decodeObjectForKey:@"icon"];
        self.filename = [aDecoder decodeObjectForKey:@"filename"];
        self.lrcname = [aDecoder decodeObjectForKey:@"lrcname"];
        self.count = [aDecoder decodeObjectForKey:@"count"];
       
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.icon forKey:@"icon"];
    [aCoder encodeObject:self.filename forKey:@"filename"];
    [aCoder encodeObject:self.lrcname forKey:@"lrcname"];
    [aCoder encodeObject:self.count forKey:@"count"];
}
- (void)saveData:(ZYMusic*)model {
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Musics" ofType:@"plist"];
    [NSKeyedArchiver archiveRootObject:model toFile:plistPath];
}
@end
