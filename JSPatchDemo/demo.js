defineClass('JPViewController', {
            handleBtn: function(sender) {
            var alertView = require('HYQAlertView').alloc().initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("测试------", null, null, "Cancel", "OK", null)
            alertView.handlerClickedButton(block('NSInteger', function(btnIndex) {
                                                 //                                                 NSLog("Did Click Index %", (btnIndex));
                                                 }))
            alertView.show()
            //    var tableViewCtrl = JPTableViewController.alloc().init()
            //    self.navigationController().pushViewController_animated(tableViewCtrl, YES)
            }
})
defineClass('JPViewController', {
            tableView_didSelectRowAtIndexPath: function(tableView, indexPath) {
            var cell = tableView.cellForRowAtIndexPath(indexPath);
            cell.setSelected(NO);
            
//            var alertView = require('HYQAlertView').alloc().initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("测试------", null, null, "Cancel", "OK", null)
//            alertView.handlerClickedButton(block('NSInteger', function(btnIndex) {
//                                                 //                                                 NSLog("Did Click Index %", (btnIndex));
//                                                 }))
//            alertView.show()
            
            self.handleBtn(null);
            },
            tableView_heightForRowAtIndexPath: function(tableView, indexPath) {
            return 100;
            }
});