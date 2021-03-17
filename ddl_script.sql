DROP TABLE IF EXISTS `paymenttype`;
DROP TABLE IF EXISTS `ratecode`;
DROP TABLE IF EXISTS `taxi_zone_lookup`;
DROP TABLE IF EXISTS `tripdata`;

CREATE TABLE `paymenttype` (
  `id` int NOT NULL,
  `name` varchar(20)
);

CREATE TABLE `ratecode` (
  `id` int NOT NULL,
  `name` varchar(30)
);

CREATE TABLE `taxi_zone_lookup` (
  `LocationID` int NOT NULL,
  `Borough` varchar(50),
  `Zone` varchar(50),
  `service_zone` varchar(20)
);

CREATE TABLE `tripdata` (
  `VendorID` int NOT NULL,
  `tpep_pickup_datetime` datetime,
  `tpep_dropoff_datetime` datetime,
  `passenger_count` int NOT NULL,
  `trip_distance` varchar(20),
  `RatecodeID` int NOT NULL,
  `store_and_fwd_flag` text,
  `PULocationID` int NOT NULL,
  `DOLocationID` int NOT NULL,
  `payment_type` int NOT NULL,
  `fare_amount` double NOT NULL,
  `extra` int,
  `mta_tax` double NULL,
  `tip_amount` double NULL,
  `tolls_amount` int NULL,
  `improvement_surcharge` double NULL,
  `total_amount` double NOT NULL
) ;

