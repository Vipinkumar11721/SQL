
DROP TABLE IF EXISTS hospital_data;


-- Create Tables
CREATE TABLE Hospital_Data (
    Hospital_Name VARCHAR(100),
    Location_name VARCHAR(100),
    Department VARCHAR(50),
	Doctors_Count INT,
	Patients_Count INT,
    Admission_Date VARCHAR(20),
	Discharge_Date VARCHAR(20),
    Medical_Expenses NUMERIC(10, 2)
);

SELECT * FROM Hospital_Data;

-- Import Data into Hospital Table
COPY Hospital_Data(Hospital_Name, Location_name, Department, Doctors_Count,
Patients_Count, Admission_Date, Discharge_Date, Medical_Expenses) 
FROM 'C:\Users\Vipin Kumar\Desktop\Vk\SQL\Hospital_Data.csv' 
CSV HEADER;




--1. Total Number of Patients 
--o Write an SQL query to find the total number of patients across all hospitals. 
    SELECT SUM(patients_count) AS total_patients
FROM hospital_data;



--2. Average Number of Doctors per Hospital 
--o Retrieve the average count of doctors available in each hospital.
  SELECT hospital_name, ROUND(AVG(doctors_count), 2) AS avg_doctors
FROM hospital_data
GROUP BY hospital_name
ORDER BY hospital_name;



--3. Top 3 Departments with the Highest Number of Patients 
--o Find the top 3 hospital departments that have the highest number of patients. 
  SELECT department, SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY department
ORDER BY total_patients DESC
LIMIT 3;


--4. Hospital with the Maximum Medical Expenses 
--o Identify the hospital that recorded the highest medical expenses.
SELECT hospital_name, ROUND(SUM(medical_expenses), 2) AS total_expenses
FROM hospital_data
GROUP BY hospital_name
ORDER BY total_expenses DESC
LIMIT 1;


--5. Daily Average Medical Expenses 
--o Calculate the average medical expenses per day for each hospital. 
SELECT hospital_name,
       ROUND(SUM(medical_expenses) / SUM(discharge_date::date - admission_date::date), 2) AS avg_expense_per_day
FROM hospital_data
GROUP BY hospital_name
ORDER BY avg_expense_per_day DESC;


--6. Longest Hospital Stay 
--o Find the patient with the longest stay by calculating the difference between 
--Discharge Date and Admission Date. 
SELECT *
FROM hospital_data
ORDER BY (discharge_date::date - admission_date::date) DESC
LIMIT 1;



--7. Total Patients Treated Per City 
--o Count the total number of patients treated in each city. 
SELECT location_name, SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY location_name
ORDER BY total_patients DESC;


--8. Average Length of Stay Per Department 
--o Calculate the average number of days patients spend in each department. 
SELECT department,
       ROUND(AVG(discharge_date::date - admission_date::date), 2) AS avg_length_of_stay
FROM hospital_data
GROUP BY department
ORDER BY avg_length_of_stay DESC;


--9. Identify the Department with the Lowest Number of Patients 
--o Find the department with the least number of patients. 
SELECT department, SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY department
ORDER BY total_patients ASC
LIMIT 1;


--10. Monthly Medical Expenses Report 
--• Group the data by month and calculate the total medical expenses for each month.
SELECT TO_CHAR(admission_date::date, 'YYYY-MM') AS month,
       ROUND(SUM(medical_expenses), 2) AS total_expenses
FROM hospital_data
GROUP BY TO_CHAR(admission_date::date, 'YYYY-MM')
ORDER BY month;





