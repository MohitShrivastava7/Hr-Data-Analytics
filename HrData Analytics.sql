CREATE DATABASE Hr;

USE Hr;


SELECT * FROM HrData;

SELECT COUNT(Attrition) AS TotalAttrition FROM HrData WHERE Attrition = 'Yes';

SELECT COUNT(employee_count) AS TotalEmployee FROM HrData;

-- ------------------------------------------Education wise Count----------------------------------------


SELECT education, COUNT(*) AS Total FROM HrData
WHERE education = 'High School'
GROUP BY education;

SELECT education, COUNT(*) AS Total FROM HrData
WHERE education = 'Associates Degree'
GROUP BY education;

SELECT education, COUNT(*) AS Total FROM HrData
WHERE education = "Master's Degree"
GROUP BY education;

SELECT education, COUNT(*) AS Total FROM HrData
WHERE education = "Bachelor's Degree"
GROUP BY education;

SELECT education, COUNT(*) AS Total FROM HrData
WHERE education = 'Doctoral Degree'
GROUP BY education;

-- ------------------------------------------Department wise Count----------------------------------------


SELECT department, COUNT(*) AS Total FROM HrData
WHERE department = 'Sales'
GROUP BY department;

SELECT department, COUNT(*) AS Total FROM HrData
WHERE department = 'R&D'
GROUP BY department;

SELECT department, COUNT(*) AS Total FROM HrData
WHERE department = 'HR'
GROUP BY department;

-- ------------------------------------------Education_Field wise Count----------------------------------------


SELECT education_field, COUNT(*) AS Total FROM HrData
WHERE education_field = 'Life Sciences'
GROUP BY education_field;

SELECT education_field, COUNT(*) AS Total FROM HrData
WHERE education_field = 'Medical'
GROUP BY education_field;

SELECT education_field, COUNT(*) AS Total FROM HrData
WHERE education_field = 'Other'
GROUP BY education_field;

SELECT education_field, COUNT(*) AS Total FROM HrData
WHERE education_field = 'Technical Degree'
GROUP BY education_field;

SELECT education_field, COUNT(*) AS Total FROM HrData
WHERE education_field = 'Marketing'
GROUP BY education_field;

-- ------------------------------------------Education wise attrition----------------------------------------


SELECT education,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND education = 'High School'
GROUP BY attrition, education,gender;


SELECT education,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND education = 'Associates Degree'
GROUP BY attrition, education,gender;


SELECT education,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND education = "Master's Degree"
GROUP BY attrition, education,gender;


SELECT education,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND education = "Bachelor's Degree"
GROUP BY attrition, education,gender;


SELECT education,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND education = 'Doctoral Degree'
GROUP BY attrition, education,gender;

SELECT education,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' 
GROUP BY attrition, education;

-- ------------------------------------------Department wise attrition----------------------------------------
SELECT department,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'Sales' 
GROUP BY attrition, department,gender;

SELECT department,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'R&D'
GROUP BY attrition, department,gender;

SELECT department,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'HR'
GROUP BY attrition, department,gender;

-- ------------------------------------------Departmental and education_field wise attrition----------------------------------------
SELECT education_field,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' 
GROUP BY attrition, education_field;


SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'Sales' and education_field = 'Life Sciences'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'Sales' and education_field = 'Medical'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'Sales' and education_field = 'Technical Degree'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'Sales' and education_field = 'Marketing'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'Sales' and education_field = 'Other'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'R&D' and education_field = 'Life Sciences'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'R&D' and education_field = 'Medical'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'R&D' and education_field = 'Technical Degree'
GROUP BY attrition, department,gender,education_field;


SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'R&D' and education_field = 'Other'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'HR' and education_field = 'Life Sciences'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'HR' and education_field = 'Medical'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'HR' and education_field = 'Technical Degree'
GROUP BY attrition, department,gender,education_field;

SELECT department,education_field,gender,attrition, COUNT(*) AS Total FROM HrData
WHERE attrition = 'Yes' AND department = 'HR' and education_field = 'Human Resources'
GROUP BY attrition, department,gender,education_field;

-- ------------------------------------------Attrition Rate----------------------------------------
SELECT (round((SELECT COUNT(attrition) FROM HrData WHERE attrition = 'Yes')/
SUM(employee_count)*100,2)) AS AttritionRate FROM HrData;

-- ------------------------------------------%Department wise Attrition Rate----------------------------------------
SELECT (round((SELECT COUNT(attrition) FROM HrData WHERE attrition = 'Yes' AND department = 'Sales') /
SUM(employee_count)*100,2)) AS AttritionRateInPercentage FROM HrData
WHERE department = 'Sales';

SELECT (round((SELECT COUNT(attrition) FROM HrData WHERE attrition = 'Yes' AND department = 'HR') /
SUM(employee_count)*100,2)) AS AttritionRateInPercentage FROM HrData
WHERE department = 'HR';

SELECT (round((SELECT COUNT(attrition) FROM HrData WHERE attrition = 'Yes' AND department = 'R&D') /
SUM(employee_count)*100,2)) AS AttritionRateInPercentage FROM HrData
WHERE department = 'R&D';

SELECT Department, COUNT(*) AS Total, round(COUNT(Attrition)/ (SELECT COUNT(Attrition) FROM HrData WHERE Attrition = 'Yes')*100,2) AS PercentageWise
FROM HrData WHERE Attrition = 'Yes'
GROUP BY Department;

-- ------------------------------------------Attrition By Gender----------------------------------------
SELECT Gender,Count(attrition) As Total FROM HrData WHERE Attrition = 'Yes'
GROUP BY Gender;


-- ------------------------------------------Active Employee----------------------------------------
SELECT SUM(employee_count) - (SELECT COUNT(attrition) FROM HrData where attrition = 'Yes') As ActiveEmployee
FROM HrData;

-- ------------------------------------------No. Of Employee By Age----------------------------------------
SELECT Age, Count(*) AS NoOfEmployee FROM HrData 
GROUP BY Age
ORDER BY Age;


-- ------------------------------------------Average Age of Employee----------------------------------------
SELECT round(AVG(Age)) As AverageAgeofEmployee FROM HrData;



-- ------------------------------------------Attrition Rate By Gender From Diferent Age Group----------------------------------------
SELECT Gender, Age_band, Count(*) AS Total,
ROUND(COUNT(Attrition)/ (SELECT COUNT(Attrition) FROM HrData WHERE attrition = 'Yes')*100,2)
AS PCTTotal FROM HrData
WHERE Attrition = 'Yes'
GROUP BY Gender,Age_band
ORDER BY age_band;

-- ------------------------------------------Job Satisfaction ----------------------------------------
SELECT
    job_role,
    SUM(CASE WHEN job_satisfaction = 1 THEN employee_count ELSE 0 END) AS satisfaction_1,
    SUM(CASE WHEN job_satisfaction = 2 THEN employee_count ELSE 0 END) AS satisfaction_2,
    SUM(CASE WHEN job_satisfaction = 3 THEN employee_count ELSE 0 END) AS satisfaction_3,
    SUM(CASE WHEN job_satisfaction = 4 THEN employee_count ELSE 0 END) AS satisfaction_4
FROM
    HrData
GROUP BY
    job_role
ORDER BY
    job_role;

