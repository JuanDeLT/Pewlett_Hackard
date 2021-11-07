# Pewlett_Hackard

## Overview of Project

For this assignment I am using SQL to analyse employee data for Pewlett Hackard in order to determine how many of their employees will be retiring from the near future, and how many employees are eligible for a potential mentorship program.

## Results of Analysis

<img width="750" alt="retirement_titles" src="https://user-images.githubusercontent.com/89175578/140633720-052771a7-da66-4a52-b273-060a0376120c.png">

- The retirement_titles table is able to show when employees were promoted and how long it took them to get a promotion.
    - This information could be used to select for mentors that were able to promote faster than others, so that they could help mentees move up in the company faster.

<img width="521" alt="unique_titles" src="https://user-images.githubusercontent.com/89175578/140633744-b6bfe964-4441-47fb-bb55-c5dcd4cf88d0.png">

- The unique_titles table removes the duplicates from the retirement_titles table.
    - Removing the duplicates shrinks the size of the table. It also streamlines the process for selecting potential mentors

<img width="271" alt="retiring_titles" src="https://user-images.githubusercontent.com/89175578/140633728-df2f7a2c-f6d9-44c7-a3c5-dd4b4a7d2f92.png">

- The retiring_titles table shows how many employees from each department are projected to retire.
    - This information is extremely valuable. With this information Pewlett Hackard will know how many people they should expect to hire and train for each department. Furthermore, more mentors should be selected for departments that are expected to lose a lot of employees.

<img width="874" alt="mentorship_eligibility" src="https://user-images.githubusercontent.com/89175578/140633684-95a22ef4-bc3d-4425-a47d-02878304d6a9.png">

- The mentorship_eligibility table shows younger employees that could be mentored by older, retiring employees.
    - This table shows the employee and their title, which simplifies the process of finding mentees for the mentors and vice versa.

## Summary 

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

<img width="742" alt="summary_1" src="https://user-images.githubusercontent.com/89175578/140633738-6255d0cc-e5ea-421d-95db-8a8ae293928a.png">

- The query to answer this question is a sum of all the projected retiring employees. I did this by using the unique_titles table and using COUNT() to sum up all of the retiring employees by their first name.

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

<img width="220" alt="summary2" src="https://user-images.githubusercontent.com/89175578/140633741-0ca2415f-8359-4076-8312-22823684a2da.png">

- The query to answer this question is a comparison of all the projected retiring employees and the mentees. I did this by using the table I made previously and then making another table that summed up the number of employees in the mentorship eligibility list. Then I joined these two table using a full outer join to be able to compare them easily. By comparing these numbers we can determine how many spots will be vacant, and how many current employees could take up those spots. It seems that unless a large portion of the retiring employees decide to take on the part time mentorship role the company is ill equipped to train a large influx of new employees.











