-- Get all customers and their addresses.
    SELECT 
        "customers"."first_name",
        "customers"."last_name",
        "addresses"."street",
        "addresses"."city",
        "addresses"."state",
        "addresses"."zip"
    FROM "customers"
    JOIN "addresses"
        ON "customers"."id" = "addresses"."id"
    ORDER BY "customers"."last_name" ASC;

-- Get all orders and their line items (orders, quantity and product).
    SELECT
        "products"."description",
        "line_items"."quantity",
        "orders"."order_date"
    FROM "products"
    JOIN "line_items"
        ON "products"."id" = "line_items"."product_id"
    JOIN "orders"
        ON "line_items"."order_id" = "orders"."id"
    ORDER BY "products"."description" ASC;

-- Which warehouses have cheetos?
    SELECT
        "products"."description",
        "warehouse"."warehouse"
    FROM "products"
    JOIN "warehouse_product"
        ON "products"."id" = "warehouse_product"."product_id"
    JOIN "warehouse"
        ON "warehouse_product"."warehouse_id" = "warehouse"."id"
    WHERE "products"."description" = 'cheetos';

-- Which warehouses have diet pepsi?
    SELECT
        "products"."description",
        "warehouse"."warehouse"
    FROM "products"
    JOIN "warehouse_product"
        ON "products"."id" = "warehouse_product"."product_id"
    JOIN "warehouse"
        ON "warehouse_product"."warehouse_id" = "warehouse"."id"
    WHERE "products"."description" = 'diet pepsi';

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
    

-- How many customers do we have?


-- How many products do we carry?


-- What is the total available on-hand quantity of diet pepsi?


-- **Stretch**


-- How much was the total cost for each order?


-- How much has each customer spent in total?


-- How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).