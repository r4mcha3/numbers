DivInfo[] divs = new DivInfo[1012]; 
int currentNum;

void setup() {
  size(1001, 195);
  background(0);
  currentNum = 1;
  for (int i=0; i<divs.length; i++) {
    divs[i] = new DivInfo(i);
  }
}

void draw() {
  //noCursor();
  background(0);
  fill(#323247);
  noStroke();
  rect(0, 0, width, 75);
  fill(#E3DBB6);
  stroke(255);

  textAlign(LEFT);
  textSize(21);
  text("1001 Integers: Divisors & More", 20, 22);
  textSize(10);
  text("by Ramona Chae", 23, 36); 
  //rtext("Factorial: " + divs[currentNum].factorial(currentNum), 23, 66);
  //text("Next Prime: " + divs[currentNum].nextPrime(currentNum), 23, 60);
  textSize(9);
  fill(127);
  noStroke();
  rect(0, 175, width, 20);
  textAlign(CENTER);
  fill(0);
  text("Controls: Click and drag on the number line or use left or right arrow keys. Up and down keys increases or decreases number by 12. Inspired by numberempire.com", width/2, 189);


  textSize(50); 
  fill(10);
  text(currentNum, 407, 57);
  textSize(50); 
  fill(#BABACF);
  text(currentNum, 405, 55);

  // This Prime
  textSize(10); 
  fill(#BABACF);
  text("This prime: " + divs[currentNum].primeList.get(currentNum), 405, 68);
  //if(currentNum > 1){
  //  textAlign(LEFT);
  //  text("Previous prime: " + divs[currentNum].primeList.get(currentNum-1) + " | Next Prime: " + divs[currentNum].primeList.get(currentNum+1), 20, 65);
  //}

  //println(str());

  textSize(9);
  textAlign(LEFT);
  fill(#E3DBB6);
  text("Binary: " + binary(currentNum, 12), 475, 20);
  text("Hexadecimal: " + hex(currentNum, 4), 475, 35);
  text("Square: " + sq(currentNum), 475, 50);
  text("Square Root: " + sqrt(currentNum), 475, 65);

  text("Arc Tangent: " + atan(currentNum), 600, 20);
  text("Sine of Angle: " + sin(radians(float(currentNum))), 600, 35);
  text("Cosine of Angle: " + cos(radians(float(currentNum))), 600, 50);
  text("Logarithm: " + log(float(currentNum)), 600, 65);

  text("Base 4 Quaternary: " + divs[currentNum].convert(currentNum, 4), 743, 20);
  text("Base 5 Quinary: " + divs[currentNum].convert(currentNum, 5), 743, 35);
  text("Base 6 Senary: " + divs[currentNum].convert(currentNum, 6), 743, 50);
  text("Base 7 Septenary: " + divs[currentNum].convert(currentNum, 7), 743, 65);


  text("Base 8 Octal: " + divs[currentNum].convert(currentNum, 8), 865, 20);
  text("Base 9 Nonary: " + divs[currentNum].convert(currentNum, 9), 865, 35);
  text("Base 11 Undecimal: " + divs[currentNum].convert(currentNum, 11), 865, 50);
  text("Base 12 Duodecimal: " + divs[currentNum].convert(currentNum, 12), 865, 65);

  fill(66);
  rect(0, 75, width, 40);
  //fill(#E3DBB6);
  //line(0, 100, width, 100);
  stroke(255, 0, 0);
  strokeWeight(3);
  fill(#E3DBB6);
  line(currentNum, 95, currentNum, 105);
  textAlign(LEFT);
  strokeWeight(1);
  stroke(#E3DBB6);
  line(0, 100, width, 100);
  for (int i = 0; i<width; i+=25) {
    strokeWeight(1);
    stroke(#E3DBB6);
    line(i, 95, i, 105);
    textSize(8);
    textAlign(CENTER);
    text(i, i, 90);
  }

  textSize(14);
  textAlign(LEFT);
  if (divs[currentNum].getDivs(currentNum).contains("1 2 3 4 5 6 7 ")) {
    fill(255, 0, 0);
    text("Divisors: " + divs[currentNum].getDivs(currentNum), 50, 140);
  } else if (divs[currentNum].getDivs(currentNum).contains("1 2 3 4 5 6 ")) {
    fill(255, 165, 0);
    text("Divisors: " + divs[currentNum].getDivs(currentNum), 50, 140);
  } else if (divs[currentNum].getDivs(currentNum).contains("1 2 3 4 5 ")) {
    fill(0, 255, 0);
    text("Divisors: " + divs[currentNum].getDivs(currentNum), 50, 140);
  } else if (divs[currentNum].getDivs(currentNum).contains("1 2 3 4 ") || divs[currentNum].getDivs(currentNum).contains("1 2 3 4 ")) {
    fill(255, 255, 0);
    text("Divisors: " + divs[currentNum].getDivs(currentNum), 50, 140);
  } else {
    fill(#E3DBB6);
    text("Divisors: " + divs[currentNum].getDivs(currentNum), 50, 140);
  }
  //text("Divisors: " + divs[currentNum].divs, 50, 140);
  fill(#E3DBB6);
  text("Factors: " + divs[currentNum].getFactors(currentNum), 50, 165);
  if ((float)divs[currentNum].divSum(currentNum)/currentNum > 1.89) {
    fill(255, 0, 0);
  } else {
    fill(#E3DBB6);
  }
  text("Divisors Total: " + divs[currentNum].divSum(currentNum) + " | Ratio 1 : " + (float)divs[currentNum].divSum(currentNum)/currentNum, 250, 165);
  text("Divisors Total Including Itself: " + divs[currentNum].divSum2(currentNum) + " | Ratio 1 : " + (float)divs[currentNum].divSum2(currentNum)/currentNum, 560, 165);

  textSize(8);
  textAlign(CENTER);
  //Draw the Regular reference
  //if (divs[currentNum].isHamming(currentNum)) {
  if (divs[currentNum].getDivs(currentNum).contains(" 2 ") || divs[currentNum].getDivs(currentNum).contains(" 3 ") || divs[currentNum].getDivs(currentNum).contains(" 5 ")) {
    fill(#E3DBB6);
    noStroke();
    ellipse(150, 40, 25, 25); 
    fill(0);
    text("Reg", 150, 43);
  } else {
    noFill();
    stroke(#BABACF);
    ellipse(150, 40, 25, 25);  
    fill(#BABACF);
    text("Reg", 150, 43);
  }
  // Draw the prime reference
  if (divs[currentNum].isPrime(currentNum)) {
    fill(#E3DBB6);
    noStroke();
    ellipse(180, 40, 25, 25);
    fill(0);
    text("Prime", 180, 43);
  } else {
    noFill();
    stroke(#BABACF);
    ellipse(180, 40, 25, 25);

    fill(#BABACF);
    text("Prime", 180, 43);
  }
  // Draw the fib reference
  if (divs[currentNum].isFibonacci(currentNum)) {
    fill(#E3DBB6);
    noStroke();
    ellipse(210, 40, 25, 25); 
    fill(0);
    text("Fib", 210, 43);
  } else {
    noFill();
    stroke(#BABACF);
    ellipse(210, 40, 25, 25);  
    fill(#BABACF);
    text("Fib", 210, 43);
  }
  // Draw the perfect number reference
  if (divs[currentNum].divSum(currentNum) == currentNum) {
    fill(#E3DBB6);
    noStroke();
    ellipse(240, 40, 25, 25); 
    fill(0);
    text("Perfect", 240, 43);
  } else {
    noFill();
    stroke(#BABACF);
    ellipse(240, 40, 25, 25);  
    fill(#BABACF);
    text("Perfect", 240, 43);
  }

  //Draw the Catalan reference
  if (divs[currentNum].isCatalan(currentNum)) {
    fill(#B6B6E3);
    noStroke();
    ellipse(270, 40, 25, 25); 
    fill(0);
    text("Cat", 270, 43);
  } else {
    noFill();
    stroke(#BABACF);
    ellipse(270, 40, 25, 25);  
    fill(#BABACF);
    text("Cat", 270, 43);
  }
  //Draw the Bell reference
  if (divs[currentNum].isBell(currentNum)) {
    fill(#B6B6E3);
    noStroke();
    ellipse(300, 40, 25, 25); 
    fill(0);
    text("Bell", 300, 43);
  } else {
    noFill();
    stroke(#BABACF);
    ellipse(300, 40, 25, 25);  
    fill(#BABACF);
    text("Bell", 300, 43);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && currentNum < 987) {
      currentNum+=12;
    } else if (keyCode == DOWN && currentNum >12) {
      currentNum-=12;
    } else if (keyCode == RIGHT && currentNum < 1001) {
      currentNum++;
    } else if (keyCode == LEFT && currentNum > 0) {
      currentNum--;
    }
  }
}

void mousePressed() {
  // Draw the number info
  if (mouseX >= 0 && mouseY > 75 && mouseX < width && mouseY<115) {
    currentNum = mouseX;
  }
}
void mouseDragged() {
  if (mouseX >= 0 && mouseY > 75 && mouseX < width && mouseY<115) {
    currentNum = mouseX;
  }
}