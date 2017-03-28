# JLPieProgressView
仿新浪微博图片加载进度条
实现代码如下：
```objc
#import "JLPieProgressView.h"

@implementation JLPieProgressView

- (void)setProgressValue:(CGFloat)progressValue{
    
    _progressValue = progressValue;
    
    //重绘
    [self setNeedsDisplay];
    
}

- (void)drawRect:(CGRect)rect {
    
    //开始角度
    CGFloat startAngle = -M_PI/2;
    //结束角度
    CGFloat endAngle = startAngle+M_PI*2*_progressValue;
    
    CGFloat smallRadius = 10;//内圆半径
    CGFloat bigRadius = smallRadius*2+2;//外圆半径
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //画外圆
    [[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8] set];
    CGContextAddArc(ctx, rect.size.width/2, rect.size.height/2,bigRadius,0 , M_PI*2, 0);
    CGContextStrokePath(ctx);
    
    //画内圆
    CGContextSetLineWidth(ctx, smallRadius*2);
    CGContextAddArc(ctx, rect.size.width/2, rect.size.height/2, smallRadius,startAngle , endAngle, 0);
    CGContextStrokePath(ctx);
    
}
```
效果图：

![效果图](https://github.com/JlongTian/JLPieProgressView/blob/master/images/show.gif)
