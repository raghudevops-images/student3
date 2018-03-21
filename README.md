# student1

Modify src/main/resources/application.properties with the DB details.

Usage :: This is for all DB values hardcoded under src/main/resources/application.properties file


### How to COmpile
```
mvn clean package -DDBIP=10.142.0.18 -DDBUSER=student -DDBPASS=student
```

### Run the war file 

```
# java -jar student.war --DBIP=10.142.0.18 --DBUSER=student --DBPASS=student
```

### Pre-Requisites.
Ensure you have database access from the host where you are compiling

### DB Table
```
> use test;
> CREATE TABLE students(student_id INT NOT NULL AUTO_INCREMENT,
	student_name VARCHAR(100) NOT NULL,
        student_addr VARCHAR(100) NOT NULL,
	student_age VARCHAR(3) NOT NULL,
	student_qual VARCHAR(20) NOT NULL,
	student_percent VARCHAR(10) NOT NULL,
	student_year_passed VARCHAR(10) NOT NULL,
	PRIMARY KEY (student_id)
);
```


### CURL to POST data.
```
# curl -H "Content-Type: application/json" -X POST -d '{"studentName": "Ramu", "studentAddr": "Hyderabad", "studentAge": "20", "studentQulaification": "Poly", "studentPercent": "99%", "studentYearPassword": "2017"}' http://35.227.35.98:8080/student
```

RESPONSE 
```
{"httpStatus":201,"status":true,"data":{"message":"Student Saved Successfully","object":{"student_id":1,"studentName":"Ramu","studentAddr":"Hyderabad","studentAge":"20","studentQulaification":"Poly","studentPercent":"99%","studentYearPassword":"2017"}}}
```

### CURL to list the data.
```
# curl http://35.227.35.98:8080/student/list
{"httpStatus":200,"status":true,"data":{"objects":[{"student_id":1,"studentName":"Ramu","studentAddr":"Hyderabad","studentAge":"20","studentQulaification":"Poly","studentPercent":"99%","studentYearPassword":"2017"}]}}

```
