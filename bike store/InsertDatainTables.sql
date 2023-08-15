INSERT INTO categories (category_name)
VALUES
    (N'Electronics'),
    (N'Clothing'),
    (N'Furniture'),
    (N'Home Appliances'),
    (N'Sporting Goods'),
    (N'Beauty Products'),
    (N'Food and Beverages'),
    (N'Automobiles'),
    (N'Books and Publications'),
    (N'Games');

INSERT INTO brands (brand_name)
VALUES
    (N'Sony'),
    (N'Nike'),
    (N'Ikea'),
    (N'Philips'),
    (N'Adidas'),
    (N'Maybelline'),
    (N'Coca-Cola'),
    (N'Toyota'),
    (N'Penguin'),
    (N'Harry Potter');

INSERT INTO products (product_name, brand_id, category_id, model_year, list_price)
VALUES
    (N'Mountain Bike', 1, 1, 2023, 1200.00),
    (N'Road Bike', 2, 1, 2023, 1500.00),
    (N'Hybrid Bike', 3, 1, 2023, 900.00),
    (N'Running Shoes', 4, 2, 2023, 100.00),
    (N'T-Shirt', 5, 2, 2023, 20.00),
    (N'Sofa', 6, 3, 2023, 500.00),
    (N'Blender', 7, 4, 2023, 50.00),
    (N'Bottled Water', 8, 7, 2023, 1.00),
    (N'Compact Car', 9, 8, 2023, 20000.00),
    (N'Novel', 10, 9, 2023, 15.00);
	
INSERT INTO customers (frist_name, last_name, phone, email, street, state, zip_code)
VALUES
    ('Ahmed', 'Mohamed', '01012345678', 'ahmed.mohamed@example.com', 'Nile Street', 'Cairo', 12345),
    ('Mohamed', 'Ali', '0111222333', 'mohamed.ali@example.com', 'Happiness Street', 'Alexandria', 54321),
    ('Fatima', 'Abdullah', '01234567890', 'fatima.abdullah@example.com', 'Hope Street', 'Giza', 67890),
    ('Ali', 'Khaled', '01011112222', 'ali.khaled@example.com', 'Peace Street', 'Mansoura', 45678),
    ('Maryam', 'Ahmed', '01123456789', 'maryam.ahmed@example.com', 'Love Street', 'Minya', 87654),
    ('Sara', 'Mustafa', '01098765432', 'sara.mustafa@example.com', 'Cedar Street', 'Alexandria', 23456),
    ('Ahmed', 'Khaled', '01234567891', 'ahmed.khaled@example.com', 'Martyr Street', 'Cairo', 76543),
    ('Nour', 'Omar', '01111113333', 'nour.omar@example.com', 'Freedom Street', 'Alexandria', 54321),
    ('Yasmine', 'Salah', '01055556666', 'yasmin.salah@example.com', 'Joy Street', 'Giza', 12345),
    ('Abdullah', 'Fahmy', '01123456789', 'abdullah.fahmy@example.com', 'Success Street', 'Alexandria', 98765);


INSERT INTO stoers (store_name, phone, email, street, city, state, zip_code)
VALUES
    ('Cairo Bikes', '01012345678', 'info@cairobikes.com', 'Nile Street', 'Cairo', 'Cairo', 12345),
    ('Alexandria Cycles', '0111222333', 'sales@alexandriacycles.com', 'Coastal Road', 'Alexandria', 'Alexandria', 54321),
    ('Giza Wheels', '01234567890', 'customerservice@gizawheels.com', 'Pyramids Avenue', 'Giza', 'Giza', 67890),
    ('Mansoura Bicycles', '01011112222', 'contact@mansourabicycles.com', 'Nile Delta Street', 'Mansoura', 'Dakahlia', 45678)
	


INSERT INTO staffs (first_name, last_name, email, phone, active, store_id, manager_id)
VALUES
    ('Ahmed', 'Mohamed', 'ahmed.mohamed@example.com', '01012345678', 'Active', 1, NULL),
    ('Mohamed', 'Ali', 'mohamed.ali@example.com', '0111222333', 'Active', 2, NULL),
    ('Fatima', 'Ali', 'fatima.ali@example.com', '01234567890', 'Active', 3, 1),
    ('Sara', 'Ahmed', 'sara.ahmed@example.com', '01011112222', 'Active', 4, 2);


INSERT INTO orders (order_status, order_date, required_date, shipped_date, customer_id)
VALUES
    (1, '2023-08-15', '2023-08-20', '2023-08-18', 1),
    (2, '2023-08-16', '2023-08-21', '2023-08-19', 2),
    (1, '2023-08-17', '2023-08-22', '2023-08-20', 3),
    (3, '2023-08-18', '2023-08-23', '2023-08-21', 4),
    (2, '2023-08-19', '2023-08-24', '2023-08-22', 5),
    (1, '2023-08-20', '2023-08-25', '2023-08-23', 6),
    (3, '2023-08-21', '2023-08-26', '2023-08-24', 7),
    (1, '2023-08-22', '2023-08-27', '2023-08-25', 8),
    (2, '2023-08-23', '2023-08-28', '2023-08-26', 9),
    (3, '2023-08-24', '2023-08-29', '2023-08-27', 10),
    (1, '2023-08-25', '2023-08-30', '2023-08-28', 1),
    (2, '2023-08-26', '2023-08-31', '2023-08-29', 2),
    (1, '2023-08-27', '2023-09-01', '2023-08-30', 3),
    (3, '2023-08-28', '2023-09-02', '2023-08-31', 4),
    (2, '2023-08-29', '2023-09-03', '2023-09-01', 5),
    (1, '2023-08-30', '2023-09-04', '2023-09-02', 6),
    (3, '2023-08-31', '2023-09-05', '2023-09-03', 7),
    (1, '2023-09-01', '2023-09-06', '2023-09-04', 8),
    (2, '2023-09-02', '2023-09-07', '2023-09-05', 9),
    (3, '2023-09-03', '2023-09-08', '2023-09-06', 10);











