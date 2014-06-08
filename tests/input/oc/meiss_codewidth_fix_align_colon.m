// def as argument
[self.printInteractionController presentFromRect:button.bounds inView:button animated:YES completionHandler:completionHandlerBlock];

[self.printInteractionController presentFromRect:((isChecked) ? checked : unchecked) inView:button animated:YES completionHandler:completionHandlerBlock];
