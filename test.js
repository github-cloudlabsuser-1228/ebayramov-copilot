// Function to add two numbers
function add(x, y) {
    return x + y;
}

// Function to subtract two numbers
function subtract(x, y) {
    return x - y;
}

// Function to multiply two numbers
function multiply(x, y) {
    return x * y;
}

// Function to divide two numbers
function divide(x, y) {
    if (y === 0) {
        return "Error! Division by zero.";
    }
    return x / y;
}

// Function to perform the calculator operations
function calculator() {
    const readline = require('readline');
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    console.log("Select operation:");
    console.log("1. Add");
    console.log("2. Subtract");
    console.log("3. Multiply");
    console.log("4. Divide");

    rl.question("Enter choice (1/2/3/4): ", function(choice) {
        if (['1', '2', '3', '4'].includes(choice)) {
            rl.question("Enter first number: ", function(num1) {
                rl.question("Enter second number: ", function(num2) {
                    num1 = parseFloat(num1);
                    num2 = parseFloat(num2);

                    let result;
                    switch (choice) {
                        case '1':
                            result = add(num1, num2);
                            break;
                        case '2':
                            result = subtract(num1, num2);
                            break;
                        case '3':
                            result = multiply(num1, num2);
                            break;
                        case '4':
                            result = divide(num1, num2);
                            break;
                    }

                    console.log(`Result: ${result}`);
                    rl.close();
                });
            });
        } else {
            console.log("Invalid choice. Please enter a valid number.");
            rl.close();
        }
    });
}

// Run the calculator function
calculator();