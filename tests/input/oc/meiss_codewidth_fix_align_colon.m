// def as argument
[self.printInteractionController presentFromRect:button.bounds inView:button animated:YES completionHandler:completionHandlerBlock];

[self.printInteractionController presentFromRect:((CHECK) ? blah : blahblah) inView:button animated:YES completionHandler:completionHandlerBlock];

::blah;
