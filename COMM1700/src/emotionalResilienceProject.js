var prompt = require("prompt-sync")()
var sqlSelectPhysicalActivity = "select * from physicalactivity";
var sqlSelectMentalActivity = "select * from mentalactivity";
var sqlSelectAnxiety = "select * from anxiety";
var sqlSelectStress = "select * from stress";
var sqlSelectEmotionalResilienceProject = "select * from emotionalresilienceproject";
var event = new Date();
var stressID;
var anxietyID;
var physicalActivityID;
var mentalActivityID;
var menuOption;

menu();

function menu (){
    menuOption = 0;
    console.log("Welcome to the PPIT Project");
    console.log("Project Name: Emotional Resilience");
    console.log("Menu: \n1. See Physical Activities Informed\n2. See Mental Activities Informed\n3. See Stress Levels\n4. See Anxiety Levels\n5. See history of mental and physical activities\n6. Insert new activity\n7. End");
    menuOption = prompt("What you want to do: ");
    if (menuOption == 1) {
        talkingToTheDatabase(sqlSelectPhysicalActivity);
    } else if (menuOption == 2) {
        talkingToTheDatabase(sqlSelectMentalActivity);
    } else if (menuOption == 3) {
        talkingToTheDatabase(sqlSelectStress);
    }  else if (menuOption == 4) {
        talkingToTheDatabase(sqlSelectAnxiety);
    } else if (menuOption == 5) {
        talkingToTheDatabase(sqlSelectEmotionalResilienceProject);
    } else if (menuOption == 6) {
        var stressID = prompt("Please inform Stress Level: ");
        var anxietyID = prompt("Please inform Anxiety Level: ");
        var physicalActivityID = prompt("Please inform Physical Activity Performed: ");
        var mentalActivityID = prompt("Please inform Mental Activity Performed: ");
        insertDatabase(event, stressID, anxietyID, physicalActivityID, mentalActivityID);
    } else if (menuOption == 7) {
        return;
    }
}

function insertDatabase (event, stressID, anxietyID, physicalActivityID, mentalActivityID) {
    var mysql = require('mysql');
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "root",
        database: "iwpcomm1700erp"
    });
    con.connect(function(err) {
        if (err) throw err;
        console.log("Connected to the Database. Executing query.");
        var sql = `INSERT INTO emotionalresilienceproject 
                VALUES
                (
                    ?, ?, ?, ?, ?
                )`;
        con.query(sql, [event, stressID, anxietyID, physicalActivityID, mentalActivityID], function (err, res) {
            if (err) throw err;
            console.log("Data inserted!")
        });
        con.end();
    });
}

function talkingToTheDatabase (sql) {
    var mysql = require('mysql');
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "root",
        database: "iwpcomm1700erp"
    });
    con.connect(function(err) {
        if (err) throw err;
        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log(JSON.parse(JSON.stringify(result)));
        });
        con.end();
    });
}

