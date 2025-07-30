# 1001 Integers: Divisors & More

## Overview
[1001 Integers: Divisors & More](https://r4mcha3.github.io/numbers/) is an interactive web application that visualizes mathematical properties of integers from 0 to 1001. This program provides a user-friendly interface to explore divisors, prime factors, base conversions, and various mathematical sequences and properties through a canvas-based number line.

## Features

### 1. **Interactive Number Line**
   - Navigate through integers 0 to 1001 using a visual number line.
   - Click and drag on the number line to select a number.
   - Use left/right arrow keys to increment or decrement the selected number by 1.
   - Use up/down arrow keys to increase or decrease the selected number by 12.

### 2. **Number Input**
   - Enter a number directly via an input field (range: 0–1001).
   - The canvas updates automatically to reflect the entered number.

### 3. **Divisors and Factors**
   - Displays all divisors of the selected number, color-coded based on specific divisor patterns:
     - Red: Includes divisors 1 through 7.
     - Orange: Includes divisors 1 through 6.
     - Green: Includes divisors 1 through 5.
     - Yellow: Includes divisors 1 through 4.
     - Default (beige): Other cases.
   - Lists the prime factors of the selected number.
   - Shows the sum of divisors (excluding the number itself) and the ratio to the number, highlighted in red if the ratio exceeds 1.89.
   - Shows the sum of divisors (including the number itself) and the corresponding ratio.

### 4. **Base Conversions**
   - Converts the selected number into various bases:
     - Binary (base 2)
     - Hexadecimal (base 16)
     - Base 4 (Quaternary)
     - Base 5 (Quinary)
     - Base 6 (Senary)
     - Base 7 (Septenary)
     - Base 8 (Octal)
     - Base 9 (Nonary)
     - Base 11 (Undecimal)
     - Base 12 (Duodecimal)

### 5. **Mathematical Properties**
   - Displays mathematical functions of the selected number:
     - Square
     - Square Root
     - Arc Tangent
     - Sine and Cosine (using the number as an angle in degrees)
     - Natural Logarithm (undefined for 0)

### 6. **Number Type Indicators**
   - Visual indicators (circles) for special number properties:
     - **Reg**: Number is divisible by 2, 3, or 5.
     - **Prime**: Number is prime.
     - **Fib**: Number is a Fibonacci number.
     - **Perfect**: Number equals the sum of its proper divisors.
     - **Cat**: Number is a Catalan number (checks first 10 Catalan numbers).
     - **Bell**: Number is a Bell number (checks first 10 Bell numbers).
   - Filled circles (beige or purple for Catalan/Bell) indicate the property is true; outlined circles indicate it is false.

### 7. **Visual Design**
   - Uses Tailwind CSS for styling the UI.
   - Canvas-based visualization with a dark theme.
   - Clear layout with headers, number line, properties, and footer with control instructions.

## Usage

1. **Open the App**
   - Open `index.html` in a web browser to launch the app.

2. **Interact with the Number Line**
   - Click and drag on the number line (gray bar with red marker) to select a number.
   - Use arrow keys for navigation:
     - Left/Right: Change number by 1.
     - Up/Down: Change number by 12.

3. **Enter a Number**
   - Type a number (0–1001) in the input field to jump directly to that number.

4. **Explore Properties**
   - View divisors, factors, base conversions, and mathematical properties on the canvas.
   - Check the indicators to see if the number has special properties like being prime, Fibonacci, or Catalan.

## Installation

No installation is required. Simply clone the repository and open the `index.html` file in a web browser:

```bash
git clone <repository-url>
cd <repository-name>
open index.html
```

### Dependencies
- **Tailwind CSS**: Included via CDN (`https://cdn.tailwindcss.com`).
- No additional setup or build tools are required.

## File Structure

- `index.html`: The main file containing the HTML, CSS, and JavaScript for the app.
- (No other files are required as dependencies are loaded via CDN.)

## Technical Details

- **Language**: HTML, CSS (with Tailwind CSS), JavaScript.
- **Canvas**: Uses the HTML5 Canvas API for rendering the number line and properties.
- **Math Functions**: Custom implementations for calculating divisors, factors, Catalan numbers, Bell numbers, Fibonacci numbers, and base conversions.
- **BigInt**: Used for factorial calculations to handle large numbers accurately.


## License

This project is open-source and available under the MIT License. See the `LICENSE` file for more details (if applicable).

## Future Improvements

- Add more mathematical properties (e.g., triangular numbers, Euler totient function).
- Improve performance for large calculations (e.g., optimize prime number generation).
- Enhance the UI with more interactive elements or tooltips for properties.
