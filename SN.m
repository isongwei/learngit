CGRect rect =self.view.frame;
UIGraphicsBeginImageContext(rect.size);
CGContextRef context = UIGraphicsGetCurrentContext();
[self.view.layer renderInContext:context];
UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext();

float originX ;
float originy ;
float width ;
float height ;
//你需要的区域起点,宽,高;

CGRect rect1 = CGRectMake(originX , originY , width , height); UIImage * imgeee = [UIImage imageWithCGImage:CGImageCreateWithImageInRect([img CGImage], rect1)];
