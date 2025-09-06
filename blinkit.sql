

 

#1.           Import Data from table Grocery Sales using the provided CSV File.

select * from b1;


2.           Write an SQL query to show all Item_Identifier

select Item_Identifier from b1;

3.           Write an SQL query to show count of total Item_Identifier.

select count(Item_Identifier) from b1;

4.           Write an SQL query to show maximum Item Weight.

select max(Item_Weight) from b1;

5.           Write an SQL query to show minimum Item Weight.

select min(Item_Weight) from b1;

6.           Write an SQL query to show average Item_Weight.

select avg(Item_Weight) avg_Item_Weight from b1;

7.           Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.

select count(Item_Identifier),Item_Fat_Content from b1
where Item_Fat_Content='low fat';

8.           Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

select count(Item_Identifier),Item_Fat_Content from b1
where Item_Fat_Content='Regular';


9.           Write an SQL query to show maximum Item_MRP

select max(Item_MRP) from b1;

10.      Write an SQL query to show minimum Item_MRP

select min(Item_MRP) from b1;
11.      Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.

select Item_Identifier, Item_Fat_Content ,Item_Type,Item_MRP from b1
where Item_MRP > 200;

12.      Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat

select max(Item_MRP) from b1 b 
where Item_Fat_Content='low Fat';

13.      Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat

select min(Item_MRP) from b1 b 
where Item_Fat_Content='low Fat';

select * from b1;

14.      Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from b1 
where Item_MRP BETWEEN 50 and 100;

15.      Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

select distinct(Item_Fat_Content) from b1;

16.      Write an SQL query to show ALL UNIQUE value of  Item_Type

select  distinct(Item_Type) from b1;

17.      Write an SQL query to show ALL DATA in descending ORDER by Item MRP

select * from b1
order by Item_MRP desc;

18.      Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales

select * from b1
order by Item_Outlet_Sales asc;

19.      Write an SQL query to show ALL DATA in ascending by Item_Type

select  * from b1
order by Item_MRP asc;

20.      Write an SQL query to show DATA of item_type dairy & Meat

select * from b1
where Item_Type in ('dairy','Meat');

21.      Write an SQL query to show ALL UNIQUE value of Outlet_Size

select distinct(Outlet_Size) from b1;

22.      Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type

select distinct(Outlet_Location_Type) from b1;

23.      Write an SQL query to show ALL UNIQUE value of Outlet_Type

select distinct(Outlet_Type) from b1;
24.      Write an SQL query to show count of number of items by Item_Type  and order it in descending order

select count(Item_Identifier)no_item ,Item_Type from b1
group by Item_Type
order by no_item desc;

25.      Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order

select count(Item_Identifier)no_item, Outlet_Size from b1
group by Outlet_Size
order by no_item asc;


26.      Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.

select count(Item_Identifier)no_item,Outlet_Type  from b1 
group by Outlet_Type
order by no_item desc;


27.      Write an SQL query to show count of items by Outlet_Location_Type and order it in descending order

select count(Item_Identifier)no_item,Outlet_Location_Type from b1
group by Outlet_Location_Type
order by no_item desc;

28.      Write an SQL query to show maximum MRP by Item_Type

select max(Item_MRP),Item_Type from b1
group by Item_Type;

29.      Write an SQL query to show minimum MRP by Item_Type

select min(Item_MRP),Item_Type from b1
group by Item_Type;

30.      Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.

select min(Item_MRP)min_mrp ,Outlet_Establishment_Year from b1
group by Outlet_Establishment_Year
order by min_mrp desc;

31.      Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.

select max(Item_MRP)max_mrp ,Outlet_Establishment_Year from b1
group by Outlet_Establishment_Year
order by max_mrp desc;

32.      Write an SQL query to show average MRP by Outlet_Size and order it in descending order.

select avg(Item_MRP)avg_mrp ,Outlet_Size from b1
group by Outlet_Size
order by avg_mrp desc;
 

33.      Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.

select avg(Item_MRP)avg_mrp , Outlet_Type from b1
group by Outlet_Type
order by  avg_mrp asc;

34.      Write an SQL query to show maximum MRP by Outlet_Type

select max(Item_MRP),Outlet_Type from b1
group by Outlet_Type;

35.      Write an SQL query to show maximum Item_Weight by Item_Type

select min(Item_Weight),Item_Type from b1
group by Item_Type ;

36.      Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year

select max(Item_Weight),Outlet_Establishment_Year from b1 
group by Outlet_Establishment_Year ;

37.      Write an SQL query to show minimum Item_Weight by Outlet_Type

select min(Item_Weight),Outlet_Type from b1
group by Outlet_Type;

38.      Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order

select avg(Item_Weight)avg_weight,Outlet_Location_Type from b1
group by Outlet_Location_Type
order by avg_weight desc;

39.      Write an SQL query to show maximum Item_Outlet_Sales by Item_Type

select max(Item_Outlet_Sales) ,Item_Type from b1
group by Item_Type;

40.      Write an SQL query to show minimum Item_Outlet_Sales by Item_Type

select min(Item_Outlet_Sales),Item_Type from b1
group by Item_Type ;

41.      Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year

select min(Item_Outlet_Sales),Outlet_Establishment_Year from b1
group by Outlet_Establishment_Year ;

42.      Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order

select max(Item_Outlet_Sales)max_out_sales,Outlet_Establishment_Year from b1
group by Outlet_Establishment_Year
order by max_out_sales desc;

43.      Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order

select avg(Item_Outlet_Sales),Outlet_Size from b1
group by Outlet_Size
order by avg(Item_Outlet_Sales)desc;

44.      Write an SQL query to show average Item_Outlet_Sales by Outlet_Type

select avg(Item_Outlet_Sales) ,Outlet_Type from b1
group by Outlet_Type;


45.      Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type

select max(Item_Outlet_Sales) ,Outlet_Type from b1
group by Outlet_Type;


46.      Write an SQL query to show total Item_Outlet_Sales by Item_Type

select sum(Item_Outlet_Sales) ,Outlet_Type from b1
group by Outlet_Type;

47.      Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content

select sum(Item_Outlet_Sales) ,Item_Fat_Content from b1
group by Item_Fat_Content;

48.      Write an SQL query to show maximum Item_Visibility by Item_Type

select max(Item_Visibility),Item_Type from b1
group by  Item_Type ;

49.      Write an SQL query to show Minimum Item_Visibility by Item_Type

select min(Item_Visibility),Item_Type from b1
group by Item_Type ;


50.      Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1

select sum(Item_Outlet_Sales),Item_Type from b1
where Item_Type = 'Tier 1'
group by Item_Type
order by sum(Item_Outlet_Sales) desc;

select * from b1;

51.      Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF

 
select sum(Item_Outlet_Sales),Item_Type from b1
where Item_Fat_Content in('low fat','lf')
group by Item_Type
order by sum(Item_Outlet_Sales) desc;

 

 

 

 