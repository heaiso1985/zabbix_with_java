alter table trends PARTITION BY RANGE (clock)
(PARTITION p0 VALUES LESS THAN (1438531200) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (1439136000) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (1439740800) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (1440345600) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (1440950400) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (1441555200) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (1442160000) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (1442764800) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (1443369600) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (1443974400) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (1444579200) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN (1445184000) ENGINE = InnoDB,
 PARTITION p12 VALUES LESS THAN (1445788800) ENGINE = InnoDB,
 PARTITION p13 VALUES LESS THAN (1446393600) ENGINE = InnoDB,
 PARTITION p14 VALUES LESS THAN (1446998400) ENGINE = InnoDB,
 PARTITION p15 VALUES LESS THAN (1447603200) ENGINE = InnoDB,
 PARTITION p16 VALUES LESS THAN (1448208000) ENGINE = InnoDB,
 PARTITION p17 VALUES LESS THAN (1448812800) ENGINE = InnoDB,
 PARTITION p18 VALUES LESS THAN (1449417600) ENGINE = InnoDB,
 PARTITION p19 VALUES LESS THAN (1450022400) ENGINE = InnoDB,
 PARTITION p20 VALUES LESS THAN (1450627200) ENGINE = InnoDB,
 PARTITION p21 VALUES LESS THAN (1451232000) ENGINE = InnoDB,
 PARTITION p22 VALUES LESS THAN (1451836800) ENGINE = InnoDB,
 PARTITION p23 VALUES LESS THAN (1452441600) ENGINE = InnoDB,
 PARTITION p24 VALUES LESS THAN (1453046400) ENGINE = InnoDB,
 PARTITION p25 VALUES LESS THAN (1453651200) ENGINE = InnoDB,
 PARTITION p26 VALUES LESS THAN (1454256000) ENGINE = InnoDB,
 PARTITION p27 VALUES LESS THAN (1454860800) ENGINE = InnoDB,
 PARTITION p28 VALUES LESS THAN (1455465600) ENGINE = InnoDB,
 PARTITION p29 VALUES LESS THAN (1456070400) ENGINE = InnoDB,
 PARTITION p30 VALUES LESS THAN (1456675200) ENGINE = InnoDB,
 PARTITION p31 VALUES LESS THAN (1457280000) ENGINE = InnoDB,
 PARTITION p32 VALUES LESS THAN (1457884800) ENGINE = InnoDB,
 PARTITION p33 VALUES LESS THAN (1458489600) ENGINE = InnoDB,
 PARTITION p34 VALUES LESS THAN (1459094400) ENGINE = InnoDB,
 PARTITION p35 VALUES LESS THAN (1459699200) ENGINE = InnoDB,
 PARTITION p36 VALUES LESS THAN (1460304000) ENGINE = InnoDB,
 PARTITION p37 VALUES LESS THAN (1460908800) ENGINE = InnoDB,
 PARTITION p38 VALUES LESS THAN (1461513600) ENGINE = InnoDB,
 PARTITION p39 VALUES LESS THAN (1462118400) ENGINE = InnoDB,
 PARTITION p40 VALUES LESS THAN (1462723200) ENGINE = InnoDB,
 PARTITION p41 VALUES LESS THAN (1463328000) ENGINE = InnoDB,
 PARTITION p42 VALUES LESS THAN (1463932800) ENGINE = InnoDB,
 PARTITION p43 VALUES LESS THAN (1464537600) ENGINE = InnoDB,
 PARTITION p44 VALUES LESS THAN (1465142400) ENGINE = InnoDB,
 PARTITION p45 VALUES LESS THAN (1465747200) ENGINE = InnoDB,
 PARTITION p46 VALUES LESS THAN (1466352000) ENGINE = InnoDB,
 PARTITION p47 VALUES LESS THAN (1466956800) ENGINE = InnoDB,
 PARTITION p48 VALUES LESS THAN (1467561600) ENGINE = InnoDB,
 PARTITION p49 VALUES LESS THAN (1468166400) ENGINE = InnoDB,
 PARTITION p50 VALUES LESS THAN (1468771200) ENGINE = InnoDB,
 PARTITION p51 VALUES LESS THAN (1469376000) ENGINE = InnoDB,
 PARTITION p52 VALUES LESS THAN (1469980800) ENGINE = InnoDB,
 PARTITION p53 VALUES LESS THAN (1470585600) ENGINE = InnoDB,
 PARTITION p54 VALUES LESS THAN (1471190400) ENGINE = InnoDB,
 PARTITION p55 VALUES LESS THAN (1471795200) ENGINE = InnoDB,
 PARTITION p56 VALUES LESS THAN (1472400000) ENGINE = InnoDB,
 PARTITION p57 VALUES LESS THAN (1473004800) ENGINE = InnoDB,
 PARTITION p58 VALUES LESS THAN (1473609600) ENGINE = InnoDB,
 PARTITION p59 VALUES LESS THAN (1474214400) ENGINE = InnoDB,
 PARTITION p60 VALUES LESS THAN (1474819200) ENGINE = InnoDB,
 PARTITION p61 VALUES LESS THAN (1475424000) ENGINE = InnoDB,
 PARTITION p62 VALUES LESS THAN (1476028800) ENGINE = InnoDB,
 PARTITION p63 VALUES LESS THAN (1476633600) ENGINE = InnoDB,
 PARTITION p64 VALUES LESS THAN (1477238400) ENGINE = InnoDB,
 PARTITION p65 VALUES LESS THAN (1477843200) ENGINE = InnoDB,
 PARTITION p66 VALUES LESS THAN (1478448000) ENGINE = InnoDB,
 PARTITION p67 VALUES LESS THAN (1479052800) ENGINE = InnoDB,
 PARTITION p68 VALUES LESS THAN (1479657600) ENGINE = InnoDB,
 PARTITION p69 VALUES LESS THAN (1480262400) ENGINE = InnoDB,
 PARTITION p70 VALUES LESS THAN (1480867200) ENGINE = InnoDB,
 PARTITION p71 VALUES LESS THAN (1481472000) ENGINE = InnoDB,
 PARTITION p72 VALUES LESS THAN (1482076800) ENGINE = InnoDB,
 PARTITION p73 VALUES LESS THAN (1482681600) ENGINE = InnoDB,
 PARTITION p74 VALUES LESS THAN (1483286400) ENGINE = InnoDB,
 PARTITION p75 VALUES LESS THAN (1483891200) ENGINE = InnoDB,
 PARTITION p76 VALUES LESS THAN (1484496000) ENGINE = InnoDB,
 PARTITION p77 VALUES LESS THAN (1485100800) ENGINE = InnoDB,
 PARTITION p78 VALUES LESS THAN (1485705600) ENGINE = InnoDB,
 PARTITION p79 VALUES LESS THAN (1486310400) ENGINE = InnoDB,
 PARTITION p80 VALUES LESS THAN (1486915200) ENGINE = InnoDB,
 PARTITION p81 VALUES LESS THAN (1487520000) ENGINE = InnoDB,
 PARTITION p82 VALUES LESS THAN (1488124800) ENGINE = InnoDB,
 PARTITION p83 VALUES LESS THAN (1488729600) ENGINE = InnoDB,
 PARTITION p84 VALUES LESS THAN (1489334400) ENGINE = InnoDB,
 PARTITION p85 VALUES LESS THAN (1489939200) ENGINE = InnoDB,
 PARTITION p86 VALUES LESS THAN (1490544000) ENGINE = InnoDB,
 PARTITION p87 VALUES LESS THAN (1491148800) ENGINE = InnoDB,
 PARTITION p88 VALUES LESS THAN (1491753600) ENGINE = InnoDB,
 PARTITION p89 VALUES LESS THAN (1492358400) ENGINE = InnoDB,
 PARTITION p90 VALUES LESS THAN (1492963200) ENGINE = InnoDB,
 PARTITION p91 VALUES LESS THAN (1493568000) ENGINE = InnoDB,
 PARTITION p92 VALUES LESS THAN (1494172800) ENGINE = InnoDB,
 PARTITION p93 VALUES LESS THAN (1494777600) ENGINE = InnoDB,
 PARTITION p94 VALUES LESS THAN (1495382400) ENGINE = InnoDB,
 PARTITION p95 VALUES LESS THAN (1495987200) ENGINE = InnoDB,
 PARTITION p96 VALUES LESS THAN (1496592000) ENGINE = InnoDB,
 PARTITION p97 VALUES LESS THAN (1497196800) ENGINE = InnoDB,
 PARTITION p98 VALUES LESS THAN (1497801600) ENGINE = InnoDB,
 PARTITION p99 VALUES LESS THAN (1498406400) ENGINE = InnoDB,
 PARTITION p100 VALUES LESS THAN (1499011200) ENGINE = InnoDB,
 PARTITION p101 VALUES LESS THAN (1499616000) ENGINE = InnoDB,
 PARTITION p102 VALUES LESS THAN (1500220800) ENGINE = InnoDB,
 PARTITION p103 VALUES LESS THAN (1500825600) ENGINE = InnoDB,
 PARTITION p104 VALUES LESS THAN (1501430400) ENGINE = InnoDB,
 PARTITION p105 VALUES LESS THAN (1502035200) ENGINE = InnoDB,
 PARTITION p106 VALUES LESS THAN (1502640000) ENGINE = InnoDB,
 PARTITION p107 VALUES LESS THAN (1503244800) ENGINE = InnoDB,
 PARTITION p108 VALUES LESS THAN (1503849600) ENGINE = InnoDB,
 PARTITION p109 VALUES LESS THAN (1504454400) ENGINE = InnoDB,
 PARTITION p110 VALUES LESS THAN (1505059200) ENGINE = InnoDB,
 PARTITION p111 VALUES LESS THAN (1505664000) ENGINE = InnoDB,
 PARTITION p112 VALUES LESS THAN (1506268800) ENGINE = InnoDB,
 PARTITION p113 VALUES LESS THAN (1506873600) ENGINE = InnoDB,
 PARTITION p114 VALUES LESS THAN (1507478400) ENGINE = InnoDB,
 PARTITION p115 VALUES LESS THAN (1508083200) ENGINE = InnoDB,
 PARTITION p116 VALUES LESS THAN (1508688000) ENGINE = InnoDB,
 PARTITION p117 VALUES LESS THAN (1509292800) ENGINE = InnoDB,
 PARTITION p118 VALUES LESS THAN (1509897600) ENGINE = InnoDB,
 PARTITION p119 VALUES LESS THAN (1510502400) ENGINE = InnoDB,
 PARTITION p120 VALUES LESS THAN (1511107200) ENGINE = InnoDB,
 PARTITION p121 VALUES LESS THAN (1511712000) ENGINE = InnoDB,
 PARTITION p122 VALUES LESS THAN (1512316800) ENGINE = InnoDB,
 PARTITION p123 VALUES LESS THAN (1512921600) ENGINE = InnoDB,
 PARTITION p124 VALUES LESS THAN (1513526400) ENGINE = InnoDB,
 PARTITION p125 VALUES LESS THAN (1514131200) ENGINE = InnoDB,
 PARTITION p126 VALUES LESS THAN (1514736000) ENGINE = InnoDB,
 PARTITION p127 VALUES LESS THAN (1515340800) ENGINE = InnoDB,
 PARTITION p128 VALUES LESS THAN (1515945600) ENGINE = InnoDB,
 PARTITION p129 VALUES LESS THAN (1516550400) ENGINE = InnoDB,
 PARTITION p130 VALUES LESS THAN (1517155200) ENGINE = InnoDB,
 PARTITION p131 VALUES LESS THAN (1517760000) ENGINE = InnoDB,
 PARTITION p132 VALUES LESS THAN (1518364800) ENGINE = InnoDB,
 PARTITION p133 VALUES LESS THAN (1518969600) ENGINE = InnoDB,
 PARTITION p134 VALUES LESS THAN (1519574400) ENGINE = InnoDB,
 PARTITION p135 VALUES LESS THAN (1520179200) ENGINE = InnoDB,
 PARTITION p136 VALUES LESS THAN (1520784000) ENGINE = InnoDB,
 PARTITION p137 VALUES LESS THAN (1521388800) ENGINE = InnoDB,
 PARTITION p138 VALUES LESS THAN (1521993600) ENGINE = InnoDB,
 PARTITION p139 VALUES LESS THAN (1522598400) ENGINE = InnoDB,
 PARTITION p140 VALUES LESS THAN (1523203200) ENGINE = InnoDB,
 PARTITION p141 VALUES LESS THAN (1523808000) ENGINE = InnoDB,
 PARTITION p142 VALUES LESS THAN (1524412800) ENGINE = InnoDB,
 PARTITION p143 VALUES LESS THAN (1525017600) ENGINE = InnoDB,
 PARTITION p144 VALUES LESS THAN (1525622400) ENGINE = InnoDB,
 PARTITION p145 VALUES LESS THAN (1526227200) ENGINE = InnoDB,
 PARTITION p146 VALUES LESS THAN (1526832000) ENGINE = InnoDB,
 PARTITION p147 VALUES LESS THAN (1527436800) ENGINE = InnoDB,
 PARTITION p148 VALUES LESS THAN (1528041600) ENGINE = InnoDB,
 PARTITION p149 VALUES LESS THAN (1528646400) ENGINE = InnoDB,
 PARTITION p150 VALUES LESS THAN (1529251200) ENGINE = InnoDB,
 PARTITION p151 VALUES LESS THAN (1529856000) ENGINE = InnoDB,
 PARTITION p152 VALUES LESS THAN (1530460800) ENGINE = InnoDB,
 PARTITION p153 VALUES LESS THAN (1531065600) ENGINE = InnoDB,
 PARTITION p154 VALUES LESS THAN (1531670400) ENGINE = InnoDB,
 PARTITION p155 VALUES LESS THAN (1532275200) ENGINE = InnoDB,
 PARTITION p156 VALUES LESS THAN (1532880000) ENGINE = InnoDB,
 PARTITION p157 VALUES LESS THAN (1533484800) ENGINE = InnoDB,
 PARTITION p158 VALUES LESS THAN (1534089600) ENGINE = InnoDB,
 PARTITION p159 VALUES LESS THAN (1534694400) ENGINE = InnoDB,
 PARTITION p160 VALUES LESS THAN (1535299200) ENGINE = InnoDB,
 PARTITION p161 VALUES LESS THAN (1535904000) ENGINE = InnoDB,
 PARTITION p162 VALUES LESS THAN (1536508800) ENGINE = InnoDB,
 PARTITION p163 VALUES LESS THAN (1537113600) ENGINE = InnoDB,
 PARTITION p164 VALUES LESS THAN (1537718400) ENGINE = InnoDB,
 PARTITION p165 VALUES LESS THAN (1538323200) ENGINE = InnoDB,
 PARTITION p166 VALUES LESS THAN (1538928000) ENGINE = InnoDB,
 PARTITION p167 VALUES LESS THAN (1539532800) ENGINE = InnoDB,
 PARTITION p168 VALUES LESS THAN (1540137600) ENGINE = InnoDB,
 PARTITION p169 VALUES LESS THAN (1540742400) ENGINE = InnoDB,
 PARTITION p170 VALUES LESS THAN (1541347200) ENGINE = InnoDB,
 PARTITION p171 VALUES LESS THAN (1541952000) ENGINE = InnoDB,
 PARTITION p172 VALUES LESS THAN (1542556800) ENGINE = InnoDB,
 PARTITION p173 VALUES LESS THAN (1543161600) ENGINE = InnoDB,
 PARTITION p174 VALUES LESS THAN (1543766400) ENGINE = InnoDB,
 PARTITION p175 VALUES LESS THAN (1544371200) ENGINE = InnoDB,
 PARTITION p176 VALUES LESS THAN (1544976000) ENGINE = InnoDB,
 PARTITION p177 VALUES LESS THAN (1545580800) ENGINE = InnoDB,
 PARTITION p178 VALUES LESS THAN (1546185600) ENGINE = InnoDB,
 PARTITION p179 VALUES LESS THAN (1546790400) ENGINE = InnoDB,
 PARTITION p180 VALUES LESS THAN (1547395200) ENGINE = InnoDB,
 PARTITION p181 VALUES LESS THAN (1548000000) ENGINE = InnoDB,
 PARTITION p182 VALUES LESS THAN (1548604800) ENGINE = InnoDB,
 PARTITION p183 VALUES LESS THAN (1549209600) ENGINE = InnoDB,
 PARTITION p184 VALUES LESS THAN (1549814400) ENGINE = InnoDB,
 PARTITION p185 VALUES LESS THAN (1550419200) ENGINE = InnoDB,
 PARTITION p186 VALUES LESS THAN (1551024000) ENGINE = InnoDB,
 PARTITION p187 VALUES LESS THAN (1551628800) ENGINE = InnoDB,
 PARTITION p188 VALUES LESS THAN (1552233600) ENGINE = InnoDB,
 PARTITION p189 VALUES LESS THAN (1552838400) ENGINE = InnoDB,
 PARTITION p190 VALUES LESS THAN (1553443200) ENGINE = InnoDB,
 PARTITION p191 VALUES LESS THAN (1554048000) ENGINE = InnoDB,
 PARTITION p192 VALUES LESS THAN (1554652800) ENGINE = InnoDB,
 PARTITION p193 VALUES LESS THAN (1555257600) ENGINE = InnoDB,
 PARTITION p194 VALUES LESS THAN (1555862400) ENGINE = InnoDB,
 PARTITION p195 VALUES LESS THAN (1556467200) ENGINE = InnoDB,
 PARTITION p196 VALUES LESS THAN (1557072000) ENGINE = InnoDB,
 PARTITION p197 VALUES LESS THAN (1557676800) ENGINE = InnoDB,
 PARTITION p198 VALUES LESS THAN (1558281600) ENGINE = InnoDB,
 PARTITION p199 VALUES LESS THAN (1558886400) ENGINE = InnoDB,
 PARTITION p200 VALUES LESS THAN (1559491200) ENGINE = InnoDB,
 PARTITION p201 VALUES LESS THAN (1560096000) ENGINE = InnoDB,
 PARTITION p202 VALUES LESS THAN (1560700800) ENGINE = InnoDB,
 PARTITION p203 VALUES LESS THAN (1561305600) ENGINE = InnoDB,
 PARTITION p204 VALUES LESS THAN (1561910400) ENGINE = InnoDB,
 PARTITION p205 VALUES LESS THAN (1562515200) ENGINE = InnoDB,
 PARTITION p206 VALUES LESS THAN (1563120000) ENGINE = InnoDB,
 PARTITION p207 VALUES LESS THAN (1563724800) ENGINE = InnoDB,
 PARTITION p208 VALUES LESS THAN (1564329600) ENGINE = InnoDB,
 PARTITION p209 VALUES LESS THAN (1564934400) ENGINE = InnoDB,
 PARTITION p210 VALUES LESS THAN (1565539200) ENGINE = InnoDB,
 PARTITION p211 VALUES LESS THAN (1566144000) ENGINE = InnoDB,
 PARTITION p212 VALUES LESS THAN (1566748800) ENGINE = InnoDB,
 PARTITION p213 VALUES LESS THAN (1567353600) ENGINE = InnoDB,
 PARTITION p214 VALUES LESS THAN (1567958400) ENGINE = InnoDB,
 PARTITION p215 VALUES LESS THAN (1568563200) ENGINE = InnoDB,
 PARTITION p216 VALUES LESS THAN (1569168000) ENGINE = InnoDB,
 PARTITION p217 VALUES LESS THAN (1569772800) ENGINE = InnoDB,
 PARTITION p218 VALUES LESS THAN (1570377600) ENGINE = InnoDB,
 PARTITION p219 VALUES LESS THAN (1570982400) ENGINE = InnoDB,
 PARTITION p220 VALUES LESS THAN (1571587200) ENGINE = InnoDB,
 PARTITION p221 VALUES LESS THAN (1572192000) ENGINE = InnoDB,
 PARTITION p222 VALUES LESS THAN (1572796800) ENGINE = InnoDB,
 PARTITION p223 VALUES LESS THAN (1573401600) ENGINE = InnoDB,
 PARTITION p224 VALUES LESS THAN (1574006400) ENGINE = InnoDB,
 PARTITION p225 VALUES LESS THAN (1574611200) ENGINE = InnoDB,
 PARTITION p226 VALUES LESS THAN (1575216000) ENGINE = InnoDB,
 PARTITION p227 VALUES LESS THAN (1575820800) ENGINE = InnoDB,
 PARTITION p228 VALUES LESS THAN (1576425600) ENGINE = InnoDB,
 PARTITION p229 VALUES LESS THAN (1577030400) ENGINE = InnoDB,
 PARTITION p230 VALUES LESS THAN (1577635200) ENGINE = InnoDB,
 PARTITION p231 VALUES LESS THAN (1578240000) ENGINE = InnoDB,
 PARTITION p232 VALUES LESS THAN (1578844800) ENGINE = InnoDB,
 PARTITION p233 VALUES LESS THAN (1579449600) ENGINE = InnoDB,
 PARTITION p234 VALUES LESS THAN (1580054400) ENGINE = InnoDB,
 PARTITION p235 VALUES LESS THAN (1580659200) ENGINE = InnoDB,
 PARTITION p236 VALUES LESS THAN (1581264000) ENGINE = InnoDB,
 PARTITION p237 VALUES LESS THAN (1581868800) ENGINE = InnoDB,
 PARTITION p238 VALUES LESS THAN (1582473600) ENGINE = InnoDB,
 PARTITION p239 VALUES LESS THAN (1583078400) ENGINE = InnoDB,
 PARTITION p240 VALUES LESS THAN (1583683200) ENGINE = InnoDB,
 PARTITION p241 VALUES LESS THAN (1584288000) ENGINE = InnoDB,
 PARTITION p242 VALUES LESS THAN (1584892800) ENGINE = InnoDB,
 PARTITION p243 VALUES LESS THAN (1585497600) ENGINE = InnoDB,
 PARTITION p244 VALUES LESS THAN (1586102400) ENGINE = InnoDB,
 PARTITION p245 VALUES LESS THAN (1586707200) ENGINE = InnoDB,
 PARTITION p246 VALUES LESS THAN (1587312000) ENGINE = InnoDB,
 PARTITION p247 VALUES LESS THAN (1587916800) ENGINE = InnoDB,
 PARTITION p248 VALUES LESS THAN (1588521600) ENGINE = InnoDB,
 PARTITION p249 VALUES LESS THAN (1589126400) ENGINE = InnoDB,
 PARTITION p250 VALUES LESS THAN (1589731200) ENGINE = InnoDB,
 PARTITION p251 VALUES LESS THAN (1590336000) ENGINE = InnoDB,
 PARTITION p252 VALUES LESS THAN (1590940800) ENGINE = InnoDB,
 PARTITION p253 VALUES LESS THAN (1591545600) ENGINE = InnoDB,
 PARTITION p254 VALUES LESS THAN (1592150400) ENGINE = InnoDB,
 PARTITION p255 VALUES LESS THAN (1592755200) ENGINE = InnoDB,
 PARTITION p256 VALUES LESS THAN (1593360000) ENGINE = InnoDB,
 PARTITION p257 VALUES LESS THAN (1593964800) ENGINE = InnoDB,
 PARTITION p258 VALUES LESS THAN (1594569600) ENGINE = InnoDB,
 PARTITION p259 VALUES LESS THAN (1595174400) ENGINE = InnoDB,
 PARTITION pmore VALUES LESS THAN MAXVALUE ENGINE = InnoDB);

delimiter $$
drop procedure if exists wk_trends;
create procedure wk_trends()
 BEGIN
  declare history_factor int default 20;
  declare trends_factor int default 60;
  declare clock_from int default UNIX_TIMESTAMP('2015/8/4');
  declare clock_to int default UNIX_TIMESTAMP('2015/8/28');
  
  DECLARE done INT DEFAULT 0;
  declare i, _clock, __clock, _num int;
  declare _itemid bigint;
  declare _value_min, _value_avg, _value_max  double;
  declare _tenantid varchar(64);  
  
  DECLARE cur CURSOR FOR select tenantid,itemid,clock,num,value_min,value_avg,value_max from trends where clock between clock_from and clock_to;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1; 
  
  SET done = 0;
  OPEN cur;
  REPEAT   
    FETCH cur INTO _tenantid, _itemid, _clock, _num, _value_min, _value_avg, _value_max;
    IF NOT done THEN
     	set i=1;    	 
  		while i<=trends_factor do
      	begin
        	set __clock = _clock-i+86400*356;
    		insert into trends values(_tenantid, _itemid, __clock, _num, _value_min, _value_avg, _value_max);
    		set i = i +1;        
      	end;
   		end while;
    END IF;    
  UNTIL done END REPEAT;
  CLOSE cur; 
  
END $$
delimiter ;
call wk_trends();