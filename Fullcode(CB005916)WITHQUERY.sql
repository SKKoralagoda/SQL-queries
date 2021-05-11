create database RichLookDesign_CB005916
use RichLookDesign_CB005916;


  create table garment
 (garment_id varchar(5) not null primary key,
  garment_type varchar(12) not null,
  garment_color varchar(10) not null,
  garment_design varchar(15),
  garment_size varchar(12), 
  );

	
  create table garment_details
  (garment_id varchar(5) not null primary key,
   retail_price float,
   sale_items int 
   );
  
  create table warehouse
  (warehouse_id varchar(5) not null primary key, 
   geopraphical_province varchar(20) not null, 
   city varchar(20), 
   garment_id varchar(5) foreign key references garment(garment_id)
   );
   
  create table supplierr 
  (rowmeterial_id varchar(6) not null primary key,
   rowmeterial_name varchar(15), 
   cost_price int,
   No_rowmeterial int,
   total_costprice int,
   reorder_date varchar(15),
   warehouse_id varchar(5) foreign key references warehouse(warehouse_id)
   );

    
  create table supplier_meterial 
  (rowmeterial_id varchar(6) not null primary key,
   rowmeterial_type varchar(15)
   ); 
     
     
   create table customer
  (customer_id  varchar(5) not null primary key, 
   customer_password varchar(25),
   customer_name varchar(25)
   );
   
   create table loyalcustomer
  (loyalcustomer_id varchar(5) not null primary key,
   loyalcustomer_name varchar(30) not null, 
   loyalcustomer_address varchar(50), 
   dateof_birth varchar(15) not null, 
   gender varchar(6), 
   customer_id varchar(5) foreign key references customer(customer_id)
   );
    
      
   create table retail_shop 
  (retailshop_id varchar(5) not null primary key,
   province varchar(18) not null,
   city varchar(18) , 
   garment_catagory varchar(10),
   warehouse_id varchar(5)foreign key references warehouse(warehouse_id)
   ); 
   
   create table employee
  (employee_id varchar(5) not null primary key, 
   employee_name varchar(30) not null, 
   position varchar(20),
   employee_office varchar(20) not null,
   work_city varchar(20),
   work_province varchar(20),
   retailshop_id varchar(5) foreign key references retail_shop (retailshop_id), 
   warehouse_id varchar(5)foreign key references warehouse(warehouse_id),
   customer_id varchar(5)foreign key references customer(customer_id)
   );
   
   create table invoice
  (invoice_no varchar(10) not null primary key,  
   noof_items int, 
   total_price float, 
   datee varchar(12),
   cutomer_id varchar(5) foreign key references customer(customer_id), 
   employee_id varchar(5) foreign key references employee(employee_id),
   retailshop_id varchar(5) foreign key references retail_shop (retailshop_id), 
   );
   
   
   insert into garment values('GA001','casual','dark blue','doted','medium');
   insert into garment values('GA002','formal','red','thinblack lines','small');
   insert into garment values('GA003','summer','pink','boxes','medium');
   insert into garment values('GA004','summer','white','doted','larger');
   insert into garment values('GA005','winter','red,blue','dot&lines','extra large');
   insert into garment values('GA006','autumn','yellow','wrap','larger');
   insert into garment values('GA007','spring','brown','dot&wave','extra small');  
   insert into garment values('GA008','wedding','white','plain','extra large');
   insert into garment values('GA009','party','red,black','dot&lines','medium');
   insert into garment values('GA010','spring','ash,blue','plain','small');
    
   
   
   insert into garment_details values('GA001',2200,500);
   insert into garment_details values('GA002',2800,300);
   insert into garment_details values('GA003',2300,150);
   insert into garment_details values('GA004',1800,200);
   insert into garment_details values('GA005',3200,250);
   insert into garment_details values('GA006',4200,200);
   insert into garment_details values('GA007',1400,150);
   insert into garment_details values('GA008',10200,50);
   insert into garment_details values('GA009',4800,180);
   insert into garment_details values('GA010',1700,100);
   
   insert into warehouse values('WH001','Western','Colombo','GA001');
   insert into warehouse values('WH002','Central','Kandy','GA003');
   insert into warehouse values('WH003','Sabaragamuwa','Rathnapura','GA004');
   insert into warehouse values('WH004','Southern','Matara','GA002');
   insert into warehouse values('WH005','North central','Anuradhapura','GA005');
   insert into warehouse values('WH006','Northern','Jaffna','GA007');
   insert into warehouse values('WH007','Eastern','Ampara','GA006');
   insert into warehouse values('WH008','Uva','Monaragala','GA010');
   insert into warehouse values('WH009','North Western','Kurunegala','GA009');

  
   insert into supplierr values('RAW001','buttons',8,100,800,'2016/01/01','WH001');
   insert into supplierr values('RAW002','thread',25,300,7500,'2015/08/04','WH003');
   insert into supplierr values('RAW003','cloth',300,3000,900000,'2015/09/06','WH004'); 
   insert into supplierr values('RAW004','pins',4,150,600,'2016/02/07','WH005');
   insert into supplierr values('RAW005','paint(1l)',950,150,142500,'2017/06/04','WH002');
   insert into supplierr values('RAW006','paper cloth',10,18,1800,'2017/02/03','WH006');
   insert into supplierr values('RAW007','zipper',5,500,2500,'2016/05/07','WH007');
   insert into supplierr values('RAW008','sticker',11,200,2200,'2017/08/02','WH008');
   insert into supplierr values('RAW009','plasticbag',4,500,2000,'2016/03/02','WH009');
   insert into supplierr values('RAW010','cardboardbox',15,160,2400,'2016/03/07','WH009');
    
 
 
   insert into supplier_meterial values('RAW001','Shirt');    
   insert into supplier_meterial values('RAW004','blouse'); 
   insert into supplier_meterial values('RAW003','skirt'); 
   insert into supplier_meterial values('RAW005','jacket'); 
   insert into supplier_meterial values('RAW002','trouser'); 
   insert into supplier_meterial values('RAW006','blazer'); 
   insert into supplier_meterial values('RAW007','short'); 
   insert into supplier_meterial values('RAW008','t-shirt'); 
   insert into supplier_meterial values('RAW009','dresses'); 
   insert into supplier_meterial values('RAW010','dresses'); 
  
 
   insert into customer values('Cu001','Sk@pw','Sk koralagoda');  
   insert into customer values('Cu002','dil@.394','Pramuk perera');  
   insert into customer values('Cu003','this&pw','Lakshan');  
   insert into customer values('Cu004','malape.q23','Sasanki malape');  
   insert into customer values('Cu005','jon12345','John smith');  
   insert into customer values('Cu006','sandu12','Sanduni perera');  
   insert into customer values('Cu007','sachi@11','Sachini rajapaksha');  
   insert into customer values('Cu008','lai678','Lahiru paranawithana');  
   insert into customer values('Cu009','laksh@me','Lakshan pradeep');  
   insert into customer values('Cu010','dhami@22','Dhamme');  
   insert into customer values('Cu011','sheha@me.22','shehan awishka'); 
   insert into customer values('Cu012','waru4566','Waruni wikunagoda'); 
   insert into customer values('Cu013','thil@you','Thilini wijesekara'); 
   insert into customer values('Cu014','sani@ja','Sanidu umesh'); 
   
   insert into loyalcustomer values('LC005','John smith','564,duplication road,boralla','1990/02/01','male','Cu005');  
   insert into loyalcustomer values('LC001','Sk koralagoda','564,akurugoda road,pelawatta','1994/03/05','male','Cu001');  
   insert into loyalcustomer values('LC004','Sasanki malape','No.30,hidellana,road,rathnapura','1981/02/12','female','Cu004');  
   insert into loyalcustomer values('LC003','Pramuk perera','No.30/6,oldkotte road,rajagiriya','1989/02/27','male','Cu002');  
   insert into loyalcustomer values('LC002','Sanduni perera','No.12/6,kolonnawa,IDH','1994/06/17','female','Cu006');
   insert into loyalcustomer values('LC006','Sanidu umesh','No.20,koswatta,north','1990/04/25','male','Cu014');    
   insert into loyalcustomer values('LC007','Sachini rajapaksha','No.78/1,pannipitiya road,kottawa','1981/02/22','female','Cu007');  
   insert into loyalcustomer values('LC008','shehan awishka','No.11, pahala road,ampara','1985/11/12','male','Cu011');  
   insert into loyalcustomer values('LC009','Waruni wikunagoda','No.30, kandy road, kandy','1989/02/27','female','Cu012');  
   insert into loyalcustomer values('LC010','Lakshan pradeep','No.22/2,kuliyapitiya,kurunegala','1980/01/05','male','Cu009');  
 
   
   insert into retail_shop values('RE001','Western','Colombo','ladies','WH001');  
   insert into retail_shop values('RE002','Western','Gampaha','mens','WH001');  
   insert into retail_shop values('RE003','Southern','Galle','mens','WH004');  
   insert into retail_shop values('RE004','Central','mathale','mens','WH002');  
   insert into retail_shop values('RE005','Sabaragamuwa','kegalla','mens','WH003');  
   insert into retail_shop values('RE006','North central','anuradhapura','ladies','WH005');  
   insert into retail_shop values('RE007','Northern','jaffna','mens','WH006');  
   insert into retail_shop values('RE008','Eastern','batticaloa','ladies','WH007');  
   insert into retail_shop values('RE009','Uva','monaragala','mens','WH008');  
   insert into retail_shop values('RE010','North Western','kurunegala','ladies','WH009');  
   
 
   insert into employee values('EMP01','Sk koralagoda','Manager','Retail_shop','Colombo','Western','RE001',NULL,'Cu001');
   insert into employee values('EMP02','Pramuk perera','Sales person','Retail_shop','Colombo','Western','RE001',NULL,'Cu002');
   insert into employee values('EMP04','kasun subasighe','Sales person','Retail_shop','Colombo','Western','RE001',NULL,NULL);
   insert into employee values('EMP03','Samudaya','Worker','Warehouse','Rathnapura','Sabaragamuwa',NULL,'WH003',NULL);
   insert into employee values('EMP05','Samarasingha','Sales person','Retail_shop','kegalla','Sabaragamuwa','RE005',NULL,NULL);
   insert into employee values('EMP06','Lakshan pradeep','Manager','Warehouse','kurunegala','North Western',NULL,'WH009','Cu009');
   insert into employee values('EMP07','Suranga','Worker','Warehouse','kurunegala','North Western',NULL,'WH003',NULL);
   insert into employee values('EMP08','Waruni wikunagoda','Manager','Warehouse','Kandy','Central',NULL,'WH002','Cu012');
   insert into employee values('EMP09','Sukum udana','Worker','Retail_shop','Galle','Southern','RE003',NULL,NULL);
   insert into employee values('EMP10','Sanduni perera','Manager','Warehouse','Colombo','Western',NULL,'WH001','Cu006');
   insert into employee values('EMP11','kalkuni suttah','Worker','Retail_shop','batticaloa','Eastern','RE008',NULL,NULL);
   insert into employee values('EMP12','Thilina lakruwan','Sales person','Retail_shop','mathale','Central','RE004',NULL,NULL);
   insert into employee values('EMP13','Dumidu udayanga','Worker','Warehouse','Anuradhapura','North central',NULL,'WH005',NULL);


  
   insert into invoice values('INV001',10,8620,'2010/01/14','Cu003',NULL,'RE001');  
   insert into invoice values('INV002',5,4500,'2012/03/24','Cu003',NULL,'RE003');
   insert into invoice values('INV003',12,10120,'2014/05/21','Cu001','EMP01','RE001');    
   insert into invoice values('INV004',8,5020,'2012/01/21','Cu007',NULL,'RE002');  
   insert into invoice values('INV005',6,4820,'2010/08/29','Cu005',NULL,'RE003');
   insert into invoice values('INV006',2,2300,'2011/03/11','Cu005',NULL,'RE002');
   insert into invoice values('INV007',14,14300,'2011/04/15','Cu009','EMP06','RE005');
   insert into invoice values('INV008',9,8300,'2015/09/18','Cu006','EMP10','RE010');
   insert into invoice values('INV009',5,5200,'2014/07/20','Cu010',NULL,'RE009');
   insert into invoice values('INV010',2,3150,'2010/05/10','Cu002','EMP02','RE002');
   
  
   select* from customer;
   select* from employee;
   select* from garment;
   select* from garment_details;
   select* from invoice;
   select* from loyalcustomer;
   select* from retail_shop;
   select* from supplier;
   select* from supplier_meterial;
   select* from warehouse;
   

   SELECT employee_id,retailshop_id,warehouse_id,work_city
   FROM employee;
   
  
   SELECT retailshop_id,city,province 
   FROM retail_shop;
   
   SELECT employee_id,work_province FROM employee 
   WHERE work_province='Western';
   
   SELECT sale_items FROM garment_details;
   UPDATE garment_details
   SET sale_items = sale_items*3 
   
   SELECT g.garment_id
   FROM garment_details g,supplierr s, warehouse w
   WHERE s.warehouse_id=w.warehouse_id and w.garment_id=g.garment_id and s.cost_price < g.retail_price*20/100;
   
  
   SELECT retailshop_id, city, garment_catagory
   FROM retail_shop 
   WHERE city='Colombo' and garment_catagory='ladies';
  
   UPDATE employee
   SET employee_name ='Lakshitha madushanka'
   WHERE position='manager' and warehouse_id='WH009';
  
   UPDATE employee
   SET employee_name ='Suranga lakmal'
   WHERE position='Worker' and warehouse_id='WH003';
  
  
   SELECT Min(retail_price) as cheapest,
          max(retail_price) as most_expensive
   FROM garment_details;
        
   UPDATE dbo.garment_details
   SET retail_price = (retail_price - retail_price*10/100)
   FROM garment_details gd
   inner join dbo.garment g ON g.garment_id= gd.garment_id
   WHERE garment_type ='winter';
   
 
  SELECT loyalcustomer_name,dateof_birth,gender
  FROM loyalcustomer
  WHERE gender='female' and dateof_birth LIKE '%/02/%';
  
  SELECT sum(total_price) as Totalsales
  FROM invoice
  WHERE datee like '%2012/01/%';
  
  select rowmeterial_id,reorder_date from supplierr
  order by reorder_date;
  

  SELECT rowmeterial_id,rowmeterial_name,total_costprice
  FROM supplierr
  WHERE total_costprice < 1000; 
  
  SELECT sum(i.noof_items) AS Nub_of_garments,
         sum(i.total_price) AS Total_Price
  FROM customer c, invoice i
  WHERE c.customer_id = i.cutomer_id and c.customer_name='John smith';
         
 INSERT INTO garment VALUES('GA011','spring','light blue','plain','medium');
 
 SELECT loyalcustomer_id,
	sum(i.noof_items) as Noof_garments
 FROM loyalcustomer l, invoice i
 WHERE l.customer_id=i.cutomer_id 
 GROUP BY loyalcustomer_id;
 
 SELECT employee_id,employee_name, loyalcustomer_id
 FROM employee e, loyalcustomer lc
 WHERE e.customer_id=lc.customer_id;
 
 SELECT employee_id,employee_name,position
 FROM employee
 WHERE customer_id is null;
 
 
 SELECT r.retailshop_id,city,
	sum(total_price) as Total_Sales
 FROM retail_shop r,invoice i
 WHERE r.retailshop_id=i.retailshop_id
 GROUP BY r.retailshop_id,city;
 
 
 delete from garment
 where garment_type='summer';
 
 select * from garment;