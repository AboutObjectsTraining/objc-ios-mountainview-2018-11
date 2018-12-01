#import "RELReadingListController.h"
#import "RELBookDetailController.h"
#import "RELDataSource.h"
#import <ReadingListModel/ReadingListModel.h>

@interface RELReadingListController ()
@property (strong, nonatomic) IBOutlet RELDataSource *dataSource;
@end


@implementation RELReadingListController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    RELBookDetailController *controller = segue.destinationViewController;
    RLMBook *book = [self.dataSource bookAtIndexPath:self.tableView.indexPathForSelectedRow];
    controller.book = book;
}


// MARK: - Unwind segues

- (IBAction)doneEditing:(UIStoryboardSegue *)segue {
    // TODO: sync UI and save changes
}

- (IBAction)doneAdding:(UIStoryboardSegue *)segue {
    
}

- (IBAction)cancel:(UIStoryboardSegue *)segue {

}

@end
