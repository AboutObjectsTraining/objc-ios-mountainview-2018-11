//
//  RELDataSource.h
//  ReadingList
//
//  Created by Jonathan Lehr on 11/30/18.
//  Copyright © 2018 About Objects. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RLMBook;

@interface RELDataSource : NSObject

- (RLMBook *)bookAtIndexPath:(NSIndexPath *)indexPath;

@end
