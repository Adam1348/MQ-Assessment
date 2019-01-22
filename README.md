# MQ assessment
Create script in a XML file and execute using Scriptella.

## Getting Started
[Scriptella](http://scriptella.org/) is an open source ETL (Extract-Transform-Load) and script execution tool written in Java.

### Prerequisites
* MySQL
* Java Runtime Environment

Check if JRE has been installed correctly by running java -version.

I used Java 8.0 and MySQL 8.0.

### Installation
* Download Scriptella binary distribution.
* Unpack it and add a `<SCRIPTELLA_DIR>/bin` to a system `PATH` variable.
* Use set `PATH=%PATH%;SCRIPTELLA_DIR\bin` for Windows and export `PATH=${PATH}:SCRIPTELLA_DIR/bin` for Unix.
* Optional step: Put JDBC drivers required by your scripts to `<SCRIPTELLA_DIR>/lib` directory or directly specify classpath attribute in script connection elements.

### Running
```
cd my-assessment
```
`etl.xml` is the main file.

Provide database connection information in `assessment.properties`. There are two variables in there, `action.db` and `out.csv`. `action.db` is used to decide whether you want to initialize a database or use an existing database. `out.csv` decides export query result to a
csv or not.

`../text` is the input folder.

Type the following command into terminal to run `etl.xml`:
```
java -jar ../lib/scriptella.jar etl.xml
```
Check `../output` folder to see the csv.

### Output
`Report.csv` is the query result. Departments with 100 or more employees.

## Reference
[Welcome to Scriptella ETL Project](http://scriptella.org/)
