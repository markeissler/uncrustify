//
// Test source for codewidth_fix.
//
// On wrapped lines, when codewidth is set to less than 90, it should not break
// wrapped OC message params on an ampersand.
//
// Incorrect...
//
// [self findstart:&startBarcode
// end:&endBarcode
// forLine:greenScalePixels
// derivative:greenDerivative
// centerAt:xAxisCenterPoint
// min:&minValue
// max:&
// maxValue];
//
// Correct...
//
// [self findstart:&startBarcode
// end:&endBarcode
// forLine:greenScalePixels
// derivative:greenDerivative
// centerAt:xAxisCenterPoint
// min:&minValue
// max:&maxValue];
//
- (void)someMethod:(NSString *)aString
{
  // a long line
  [self findstart:&startBarcode end:&endBarcode forLine:greenScalePixels
  derivative:greenDerivative centerAt:xAxisCenterPoint min:&minValue
  max:&maxValue];

  // pre-wrapped (on colon) Xcode style
  [self findstart:&startBarcode
  end:&endBarcode
  forLine:greenScalePixels
  derivative:greenDerivative
  centerAt:xAxisCenterPoint
  min:&minValue
  max:&maxValue];

  // as single asterisk (address)
  [self findstart:&startBarcode end:&endBarcode forLine:greenScalePixels
  derivative:greenDerivative centerAt:xAxisCenterPoint min:&minValue
  max:*maxValue];

  // a double asterisk (handle)
  [self findstart:&startBarcode end:&endBarcode forLine:greenScalePixels
  derivative:greenDerivative centerAt:xAxisCenterPoint min:&minValue
  max:**maxValue];

  // with spaces before type
  [self findstart: &startBarcode end: &endBarcode forLine: greenScalePixels
  derivative: greenDerivative centerAt: xAxisCenterPoint min: &minValue
  max: **maxValue];
}