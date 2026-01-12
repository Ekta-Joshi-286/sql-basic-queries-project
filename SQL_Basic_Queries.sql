USE ekta_sql

SELECT * FROM tips LIMIT 10;
#### SQL Questions  - 
#### 
#### Load the Tips dataset in MYSQL  - 

#### Retrieve all records where the day is Sunday and the customer is a smoker.
SELECT * FROM tips 
WHERE day='Sun' AND smoker='Yes'
#### 

#### Display the records where the tip is greater than 5 and the total bill is less than 25.
SELECT * FROM tips WHERE tip > 5 AND total_bill < 25
#### 

#### Get all records where the customer is female and visited during Dinner time.
SELECT * FROM tips WHERE sex = 'Female' AND time = 'Dinner'
#### 

#### Show all entries where the size of the group is greater than or equal to 4 and day = 'Sat'.
SELECT * FROM tips WHERE size >= 4 AND day = 'Sat'
#### 

#### Retrieve the top 10 highest total bills using the ORDER BY and LIMIT clauses.
SELECT * FROM tips ORDER BY total_bill DESC LIMIT 10 
#### 

#### Display the 5 lowest tips given on Fridays using ORDER BY and LIMIT.
SELECT * FROM tips WHERE day = 'Fri' ORDER BY tip ASC LIMIT 5
#### 

#### Fetch all rows where the tip is between 3 and 6 and the customer is not a smoker.
SELECT * FROM tips WHERE tip BETWEEN 3 AND 6 AND smoker = 'No'
#### 

#### List the first 10 rows, then use OFFSET to display the next 10 rows (rows 11–20).
SELECT * FROM tips LIMIT 10 OFFSET 10
#### 

#### Retrieve all records where the total bill exceeds 40, order them by tip in descending order, and show only the top 5 results.
SELECT * FROM tips WHERE total_bill > 40 ORDER BY tip DESC LIMIT 5
#### 

#### Get all records where the time is Lunch and the tip is greater than 20% of the total bill (use a calculated condition in the WHERE clause).
SELECT *
FROM tips
WHERE time = 'Lunch'
  AND tip > (0.2 * total_bill);



#### Find the total number of records in the tips table.
SELECT COUNT(*) AS total_records FROM tips
#### 

#### Calculate the total sum of tips given by all customers.
SELECT SUM(tip) AS total_tip FROM tips
#### 

#### Find the average total bill amount.
SELECT AVG(total_bill) AS Avg_Bill FROM tips
#### 

#### Determine the maximum tip and minimum tip from the dataset.
SELECT MAX(tip) AS Max_Tip, MIN(tip) AS Min_Tip FROM tips
#### 

#### Calculate the average tip given by male and female customers separately.
SELECT sex, 
       AVG(tip) AS average_tip
FROM tips
GROUP BY sex;
 
#### 

SELECT smoker, 
       COUNT(*) AS total_customers
FROM tips
GROUP BY smoker;

#### 

#### Compute the average total bill per day (group by day).
SELECT day, AVG(total_bill) FROM tips GROUP BY day;
#### 

#### Find the total tip amount per day and sort the result in descending order of total tips.
SELECT day, SUM(tip) AS Total_Tip FROM tips GROUP BY day ORDER BY Total_Tip DESC;
#### 

#### Determine the average tip percentage (tip / total\_bill \* 100) for each day.
SELECT day, 
       AVG((tip / total_bill) * 100) AS avg_tip_percentage
FROM tips
GROUP BY day;

#### 

#### Calculate the average party size for each day and time combination.

SELECT day, 
       time, 
       AVG(size) AS average_party_size
FROM tips
GROUP BY day, time;


