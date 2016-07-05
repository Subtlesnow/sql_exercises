CREATE TABLE `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `emp_no` (`emp_no`),
  KEY `dept_no` (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;