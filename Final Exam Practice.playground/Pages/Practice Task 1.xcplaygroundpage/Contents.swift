//: # Exam Prep 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![blur](blur.png "Blur")
 
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
*/

// Create a canvas object to use
let canvas = Canvas(width: 400, height: 600)
//
//// Begin your solution here...
//
//// REMINDER: here's how to create a square with a fill
//canvas.fillColor = Color(hue: 56, saturation: 7, brightness: 56, alpha: 100)
//canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 50, height: 50)

//background
canvas.fillColor = Color.init(hue: 191, saturation: 100, brightness: 85, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

//dates and time
canvas.drawText(message: "saturday                                     mandela hall                                special guest", size: 10, x: 20, y: 560, kerning: -0.5)
canvas.drawText(message: "october 16 1993 / 8 pm           at unversity of sussex               salad, plus my life story", size: 10, x: 20, y: 552, kerning: -0.5)
canvas.drawText(message: "                                                                                                              £6.50 / £5.30 in advance", size: 10, x: 20, y: 535, kerning: -0.5)


//words
canvas.drawText(message: "blur", size: 200, x: 10, y: 290, kerning: 0)

//blurred affect
canvas.textColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 15)

for y in stride(from: 310, to: -60, by: -7) {
canvas.drawText(message: "blur", size: 200, x: 10, y: y, kerning: 0)
}


//// HINT: You can use the kerning property to change the distance between letters
////       Try adjusting the value to positive or negative values. What happens?

/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
