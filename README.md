# Data-Science-Intern-Challenge
**Question 1** \
Given some sample data, write a program to answer the following: click here to access the required data set
On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis.\
1.Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.\
**Solution:**
After applying Describe method to our Data Frame of given data, average order amount was $3145.128 which is taken by Shopify as a final answer to AOV. Simply the average is calculated as:

       > Average=Sum of observations/total number of observations

This formula will be applied by Describe function which calculates the AOV by dividing the total sum of ‘order_amount’ by number of observations or rows present in the ‘order_amount’ column, however AOV is calculated as:

	> Average Order Amount=Total Order Amount/Sum of total items

If we calculate AOV by dividing total sum of ‘order_amount’ by ‘total_items’, we can correctly evaluate this data.\

2.What metric would you report for this dataset?

To determine the correct Average Order Value (AOV), the reporting metrics are the respective sums of both 'order_amount' and 'total_items':
AOV= df['order_amount'].sum()/df['total_items'].sum()\

3.What is its value?\
The Average order Value is 357.922.\

**Question 2**\
For this question you’ll need to use SQL. Follow this link to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.\
1.How many orders were shipped by Speedy Express in total?\
Answer:54 Orders were shipped by Speedy Express in total.\

2.What is the last name of the employee with the most orders?\
Answer:Peacock is the last name of the employee with the most orders.\

3.What product was ordered the most by customers in Germany?\
Answer: Outback Lager was ordered the most by customers in Germany.



