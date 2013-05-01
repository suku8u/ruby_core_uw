sudo /Library/StartupItems/MySQLCOM/MySQLCOM start

CREATE DATABASE `dist_info`

'dist_sources', 'CREATE TABLE `dist_sources` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `origin_lat` varchar(255) DEFAULT NULL,\n  `origin_lon` varchar(255) DEFAULT NULL,\n  `destination_lat` varchar(255) DEFAULT NULL,\n  `destination_lon` varchar(255) DEFAULT NULL,\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1'

'dist_results', 'CREATE TABLE `dist_results` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `origin_lat` varchar(255) DEFAULT NULL,\n  `origin_lon` varchar(255) DEFAULT NULL,\n  `destination_lat` varchar(255) DEFAULT NULL,\n  `destination_lon` varchar(255) DEFAULT NULL,\n  `driving_dist` varchar(255) DEFAULT NULL,\n  `driving_time` varchar(255) DEFAULT NULL,\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1'


INSERT INTO dist_info.dist_sources (origin_lat,origin_lon,destination_lat,destination_lon)

SELECT 47.624,	-122.29,	47.265,	-122.439
UNION ALL
SELECT 43.624,	-121.29,	49.265,	-100.439
UNION ALL
SELECT 47.629,	-122.33,	47.266,	122.43
UNION ALL
SELECT 43.624,	-121.29,	49.265,	-100.439
UNION ALL
SELECT 43.624,	-121.29,	49.265,	-100.439
