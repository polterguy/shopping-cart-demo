/*
 * Automatically generated by Magic.
 */
CREATE TABLE products(
  product_id integer not null primary key autoincrement,
  name text not null,
  description text not null,
  sku text not null,
  price numeric not null,
  image_url text
);

CREATE TABLE items(
  item_id integer not null primary key autoincrement,
  product_id INTEGER not null references products(product_id),
  quantity integer not null default 1,
  session_id text not null
);