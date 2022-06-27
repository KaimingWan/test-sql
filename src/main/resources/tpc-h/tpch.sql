CREATE TABLE `customer` (
                            `c_custkey` int(11) NOT NULL,
                            `c_name` varchar(25) NOT NULL,
                            `c_address` varchar(40) NOT NULL,
                            `c_nationkey` int(11) NOT NULL,
                            `c_phone` varchar(15) NOT NULL,
                            `c_acctbal` decimal(15,2) NOT NULL,
                            `c_mktsegment` varchar(10) NOT NULL,
                            `c_comment` varchar(117) NOT NULL,
                            PRIMARY KEY (`c_custkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `lineitem` (
                            `l_orderkey` bigint(20) NOT NULL,
                            `l_partkey` int(11) NOT NULL,
                            `l_suppkey` int(11) NOT NULL,
                            `l_linenumber` bigint(20) NOT NULL,
                            `l_quantity` decimal(15,2) NOT NULL,
                            `l_extendedprice` decimal(15,2) NOT NULL,
                            `l_discount` decimal(15,2) NOT NULL,
                            `l_tax` decimal(15,2) NOT NULL,
                            `l_returnflag` varchar(1) NOT NULL,
                            `l_linestatus` varchar(1) NOT NULL,
                            `l_shipdate` date NOT NULL,
                            `l_commitdate` date NOT NULL,
                            `l_receiptdate` date NOT NULL,
                            `l_shipinstruct` varchar(25) NOT NULL,
                            `l_shipmode` varchar(10) NOT NULL,
                            `l_comment` varchar(44) NOT NULL,
                            KEY `IDX_LINEITEM_SUPPKEY` (`l_suppkey`),
                            KEY `IDX_LINEITEM_PARTKEY` (`l_partkey`),
                            PRIMARY KEY (`l_orderkey`,`l_linenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `orders` (
                          `o_orderkey` bigint(20) NOT NULL,
                          `o_custkey` int(11) NOT NULL,
                          `o_orderstatus` varchar(1) NOT NULL,
                          `o_totalprice` decimal(15,2) NOT NULL,
                          `o_orderdate` date NOT NULL,
                          `o_orderpriority` varchar(15) NOT NULL,
                          `o_clerk` varchar(15) NOT NULL,
                          `o_shippriority` bigint(20) NOT NULL,
                          `o_comment` varchar(79) NOT NULL,
                          PRIMARY KEY (`O_ORDERKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `part` (
                        `p_partkey` int(11) NOT NULL,
                        `p_name` varchar(55) NOT NULL,
                        `p_mfgr` varchar(25) NOT NULL,
                        `p_brand` varchar(10) NOT NULL,
                        `p_type` varchar(25) NOT NULL,
                        `p_size` int(11) NOT NULL,
                        `p_container` varchar(10) NOT NULL,
                        `p_retailprice` decimal(15,2) NOT NULL,
                        `p_comment` varchar(23) NOT NULL,
                        PRIMARY KEY (`p_partkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `partsupp` (
                            `ps_partkey` int(11) NOT NULL,
                            `ps_suppkey` int(11) NOT NULL,
                            `ps_availqty` int(11) NOT NULL,
                            `ps_supplycost` decimal(15,2) NOT NULL,
                            `ps_comment` varchar(199) NOT NULL,
                            KEY `IDX_PARTSUPP_SUPPKEY` (`PS_SUPPKEY`),
                            PRIMARY KEY (`ps_partkey`,`ps_suppkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `supplier` (
                            `s_suppkey` int(11) NOT NULL,
                            `s_name` varchar(25) NOT NULL,
                            `s_address` varchar(40) NOT NULL,
                            `s_nationkey` int(11) NOT NULL,
                            `s_phone` varchar(15) NOT NULL,
                            `s_acctbal` decimal(15,2) NOT NULL,
                            `s_comment` varchar(101) NOT NULL,
                            PRIMARY KEY (`s_suppkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `nation` (
                          `n_nationkey` int(11) NOT NULL,
                          `n_name` varchar(25) NOT NULL,
                          `n_regionkey` int(11) NOT NULL,
                          `n_comment` varchar(152) DEFAULT NULL,
                          PRIMARY KEY (`n_nationkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `region` (
                          `r_regionkey` int(11) NOT NULL,
                          `r_name` varchar(25) NOT NULL,
                          `r_comment` varchar(152) DEFAULT NULL,
                          PRIMARY KEY (`r_regionkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;