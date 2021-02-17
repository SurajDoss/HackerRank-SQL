SELECT ROUND(MAX(LAT_N)-MIN(LAT_N)+MAX(LONG_W)-MIN(LONG_W),4) FROM STATION;
/*Manhattan distance is :The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
source:https://xlinux.nist.gov/dads/HTML/manhattanDistance.html
hence abs shall be used in the above, but i have done it with max - min not min- max*/
