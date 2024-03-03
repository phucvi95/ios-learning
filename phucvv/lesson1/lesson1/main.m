//
//  main.m
//  lesson1
//
//  Created by Phúc Vi on 03/03/2024.
//
#import <Foundation/Foundation.h>

// Khai báo hàm
NSInteger getMinValue(NSInteger number1, NSInteger number2);
BOOL isEven(NSInteger number);
NSInteger countBs(NSString *str);
NSInteger countChar(NSString *str, unichar findText);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // function 1
        NSInteger number1 = 1;
        NSInteger number2 = -100;
        NSInteger minValue = getMinValue(number1, number2);
        NSLog(@"Min value of %ld and %ld is %ld", number1, number2, minValue);
        
        // function 2
        NSInteger number3 = -100;
        BOOL value2 = isEven(number3);
        NSLog(@"Number %ld is %s", number3, value2 ? "even" : "odd");
        
        // function 3
        NSString *testString = @"ThayHuyBupBe";
        NSInteger countBsValue = countBs(testString);
        NSLog(@"number of \"B\" characters in \"%@\" is: %ld", testString, countBsValue);
       
        unichar a = 'u';
        NSInteger countCharValue = countChar(testString, a);
        NSLog(@"number of \"%C\" characters in \"%@\" is: %ld", a, testString, countCharValue);
    }
    return 0;
}

/*
 1. Write a function min that takes two arguments and returns their minimum.
 */
NSInteger getMinValue(NSInteger number1, NSInteger number2) {
    return (number1 < number2) ? number1 : number2;
}

/*
 2. We’ve seen that % (the remainder operator) can be used to test whether a number is even or odd by using % 2 to see whether it’s divisible by two. Here’s another way to define whether a positive whole number is even or odd:
  • Zero is even.
  • One is odd.
  • For any other number N, its evenness is the same as N - 2.
 Define a recursive function isEven corresponding to this description. The function should accept a single parameter (a positive, whole number) and return a Boolean.
 Test it on 50 and 75. See how it behaves on -1. Why? Can you think of a way to fix this?
 */
BOOL isEven(NSInteger number) {
    return number % 2 == 0 ? true : false;
}


/*
 3. You can get the Nth character, or letter, from a string by writing "string"[N]. The returned value will be a string containing only one character (for example, "b"). The first character has position 0, which causes the last one to be found at position string.length - 1. In other words, a two-character string has length 2, and its characters have positions 0 and 1.
 Write a function countBs that takes a string as its only argument and returns a number that indicates how many uppercase “B” characters there are in the string.
 Next, write a function called countChar that behaves like countBs, except it takes a second argument that indicates the character that is to be counted (rather than counting only uppercase “B” characters). Rewrite countBs to make use of this new function.
 */
NSInteger countBs(NSString *str) {
    NSInteger countString = 0;
    for (int i = 0; i < [str length]; i++) {
        unichar kyTu = [str characterAtIndex:i];
        if (kyTu == 'B') {
            countString++;
        }
    }
    return countString;
}

NSInteger countChar(NSString *str, unichar findText) {
    NSInteger countString = 0;
    for (int i = 0; i < [str length]; i++) {
        unichar kyTu = [str characterAtIndex:i];
        if (kyTu == findText) {
            countString++;
        }
    }
    return countString;
}
