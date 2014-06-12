// def - long
void (^ completionHandlerBlock)(UIPrintInteractionController *, BOOL,
  NSError *) =
  ^(UIPrintInteractionController *pic, BOOL completed, NSError *error) {
  if (!completed && error)
  {
    NSLog(@"%s %@", __FUNCTION__, error);
  }
};


// def - pre-wrapped
void (^ completionHandlerBlock)(UIPrintInteractionController *, BOOL,
  NSError *) =
  ^(UIPrintInteractionController *pic, BOOL completed, NSError *error) {
  if (!completed && error)
  {
    NSLog(@"%s %@", __FUNCTION__, error);
  }
};

// def as argument
[self.printInteractionController
    presentFromRect:button.bounds
             inView:button
           animated:YES
  completionHandler:completionHandlerBlock];

// inline - longer
[self.printInteractionController
    presentFromRect:button.bounds
             inView:button
           animated:YES
  completionHandler:^(UIPrintInteractionController *pic, BOOL completed, NSError *error) {
   if (!completed && error)
   {
     NSLog(@"%s %@", __FUNCTION__, error);
   }
 }];

// inline - shorter
[self.printInteractionController
    presentFromRect:button.bounds
             inView:button
           animated:YES
  completionHandler:^(NSString *pic) {
   if (!completed && error)
   {
     NSLog(@"%s %@", __FUNCTION__, error);
   }
 }];

// with #ifdef/endif preproc
void (^ completionHandlerBlock)(UIPrintInteractionController *, BOOL,
  NSError *) =
  ^(UIPrintInteractionController *pic, BOOL completed, NSError *error) {
#ifdef DEBUG
  if (!completed && error)
  {
    NSLog(@"%s %@", __FUNCTION__, error);
  }
#endif
};

