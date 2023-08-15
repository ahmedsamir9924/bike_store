use bike_store 
CREATE TABLE categories(
	category_id INT IDENTITY (1, 1) PRIMARY KEY,
	category_name VARCHAR (20) NOT NULL
);

CREATE TABLE brands (
	brand_id INT IDENTITY (1, 1) PRIMARY KEY,
	brand_name VARCHAR (20) NOT NULL
);

CREATE TABLE products (
	product_id INT IDENTITY (1, 1) PRIMARY KEY,
	product_name VARCHAR (20) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	constraint products_categories_fk FOREIGN KEY (category_id) REFERENCES categories (category_id) ,
	constraint products_brands_fk FOREIGN KEY (brand_id) REFERENCES brands (brand_id) 
	);
create table customers
(
 customer_id int identity(1,1) primary key , 
 frist_name nvarchar(20) not null , 
 last_name nvarchar(20) not null , 
 phone  varchar(20) , 
 email  varchar(50) ,  
 street  varchar(20) ,  
 state  varchar(20) ,   
 zip_code int 
) ; 
create table stoers
(
	store_id int primary key identity (1,1) , 
	store_name nvarchar(20) not null , 
	phone nvarchar(20) , 
	email nvarchar(50) , 
	street nvarchar(50) , 
	city nvarchar(20) not null ,
	state nvarchar(15),
	zip_code int 
);
CREATE TABLE staffs
(
    staff_id int primary key identity (1, 1),
    first_name nvarchar(20) not null,
    last_name nvarchar(20) not null,
    email nvarchar(50),
    phone nvarchar(20),
    active nvarchar(20),
    store_id int,
    manager_id int,
    constraint staff_stores_fk foreign key(store_id) references stoers(store_id),
    constraint staff_manager_fk foreign key(manager_id) references staffs(staff_id)
);

create table orders 
(
	order_id int  primary key identity (1,1) , 
	order_status int not null  , 
	order_date nvarchar(20) not null , 
	required_date  varchar(20) ,  
	shipped_date  varchar(20) ,  
	customer_id int not null , 
	constraint orders_customers_fk foreign key(customer_id)
	references customers(customer_id)  
); 


CREATE TABLE order_items
(
    order_id int not null,
    item_id int not null,
    product_id int not null,
    quantity int not null,
    list_price decimal(10, 2) not null,
    discount decimal(4, 2),
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

	CREATE TABLE stocks (
	store_id INT,
	product_id INT,
	quantity INT,
	PRIMARY KEY (store_id, product_id),
	 constraint stocks_stores_fk FOREIGN KEY (store_id) REFERENCES stoers (store_id) ,
	 constraint stocks_products_fk FOREIGN KEY (product_id) REFERENCES products (product_id) 
);