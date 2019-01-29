var mysql = require ("mysql");
var inquirer = require("inquirer");

// creat the connection information for the sql database

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    passowrd: "Mosaihh.10",
    database: "bamazon_DB"
});

// connect to mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    //run start function after connection is made to prompt user
    start();
});
// function prompting user to buy
function start() {
    connection.query("SELECT * FROM products", function(err, results) {
        if (err) throw err;
    inquirer
    .prompt([
        {
        name: "item_id",
        type: "rawlist",
        choices: function() {
            var choiceArray = [];
            for (var i =0; i < results.length; i++) {
                choiceArray.push(results[i].item_id);
            }
            return choiceArray;
        },
        message: "Choose the ID of the item you would like to buy?"
    },
    {
        name: "stock",
        type: "input",
        message: "How many would you like to buy?"
    }
])
    .then(function(answer) {
        var chosenItem;
        for (var i = 0; i < results.length; i++) {
            if (results[i].item_id === answer.choice) {
                chosenItem = results[i];
            }
        }

        if (chosenItem.stock_quantity > parseInt(answer.quantity)) {
            connection.query(
                "UPDATE auctions SET? WHERE?",
                [
                    {
                        stock_quantity: answer.quantity
                    },
                    {
                        id: chosenItem.id
                    }
                ],
                function(error) {
                    if (error) throw err;
                    console.log("Insufficient Quantity!");
                    start();
                }
            );
        }
        else {
            console.log("All Sales Final...");
            start();
        }
        });
    });
}