1) Execute the scripts in sequence in "Pre Deployment SQL Script" folder. Execute this one to create the database "Calculator_Script_1" and then execute this one to create database objects "Calculator_Script_2".
2) Run the Web API Project First which would "CalculatorWebAPI"
3) Update the app.config key "BaseURL" of consol app which is "CalculatorConsoleApp", by the base url of Web API project e.g. "http://localhost:53712/".
