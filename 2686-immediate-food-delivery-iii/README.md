<h2><a href="https://leetcode.com/problems/immediate-food-delivery-iii/">2686. Immediate Food Delivery III</a></h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Delivery</code></p>

<pre>+-----------------------------+---------+
| Column Name                 | Type    |
+-----------------------------+---------+
| delivery_id                 | int     |
| customer_id                 | int     |
| order_date                  | date    |
| customer_pref_delivery_date | date    |
+-----------------------------+---------+
delivery_id is the column with unique values of this table.
Each row contains information about food delivery to a customer that makes an order at some date and specifies a preferred delivery date (on the order date or after it).
</pre>

<p>If the customer's preferred delivery date is the same as the order date, then the order is called <strong>immediate,</strong>&nbsp;otherwise, it is <strong>scheduled</strong>.</p>

<p>Write a solution&nbsp;to find the percentage of immediate orders on each unique&nbsp;<code>order_date</code>, <strong>rounded to 2 decimal places</strong>.&nbsp;</p>

<p>Return <em>the result table ordered by</em> <code>order_date</code> <em>in <strong>ascending</strong> order.</em></p>

<p>The&nbsp;result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> 
Delivery table:
+-------------+-------------+------------+-----------------------------+
| delivery_id | customer_id | order_date | customer_pref_delivery_date |
+-------------+-------------+------------+-----------------------------+
| 1           | 1           | 2019-08-01 | 2019-08-02                  |
| 2           | 2           | 2019-08-01 | 2019-08-01                  |
| 3           | 1           | 2019-08-01 | 2019-08-01                  |
| 4           | 3           | 2019-08-02 | 2019-08-13                  |
| 5           | 3           | 2019-08-02 | 2019-08-02                  |
| 6           | 2           | 2019-08-02 | 2019-08-02                  |
| 7           | 4           | 2019-08-03 | 2019-08-03                  |
| 8           | 1           | 2019-08-03 | 2019-08-03                  |
| 9           | 5           | 2019-08-04 | 2019-08-08                  |
| 10          | 2           | 2019-08-04 | 2019-08-18                  |
+-------------+-------------+------------+-----------------------------+
<strong>Output:</strong> 
+------------+----------------------+
| order_date | immediate_percentage |
+------------+----------------------+
| 2019-08-01 | 66.67                |
| 2019-08-02 | 66.67                |
| 2019-08-03 | 100.00               |
| 2019-08-04 | 0.00                 |
+------------+----------------------+
<strong>Explanation:</strong> 
- On 2019-08-01 there were three orders, out of those, two were immediate and one was scheduled. So, immediate percentage for that date was 66.67.
- On 2019-08-02 there were three orders, out of those, two were immediate and one was scheduled. So, immediate percentage for that date was 66.67.
- On 2019-08-03 there were two orders, both were immediate. So, the immediate percentage for that date was 100.00.
- On 2019-08-04 there were two orders, both were scheduled. So, the immediate percentage for that date was 0.00.
order_date is sorted in ascending order.
</pre>
</div>