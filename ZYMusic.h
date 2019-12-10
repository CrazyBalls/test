//
//  ZYMusic.h
//  ZYMusicPlayer
//
//  Created by 王志盼 on 15/10/12.
//  Copyright © 2015年 王志盼. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYMusic : NSObject<NSCoding>
/**
 *  歌曲名字
 */
@property (copy, nonatomic) NSString *name;
/**
 *  歌曲大图
 */
@property (copy, nonatomic) NSString *icon;
/**
 *  歌曲的文件名
 */
@property (copy, nonatomic) NSString *filename;
/**
 *  歌词的文件名
 */
@property (copy, nonatomic) NSString *lrcname;
/**
 *  歌手
 */
@property (copy, nonatomic) NSString *singer;
/**
 *  歌手图标
 */
@property (copy, nonatomic) NSString *singerIcon;


@property (copy, nonatomic) NSString * tag;

@property (copy, nonatomic) NSString * count;

@property (nonatomic,assign) NSInteger type; //1首页2收藏

@property (assign, nonatomic, getter = isPlaying) BOOL playing;

- (void)saveData:(ZYMusic*)model;
@end
