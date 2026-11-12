-- 1. Retrieve everything from facilities table

SELECT * FROM cd.facilities;

-- 2. Only Facility names
SELECT name, membercost FROM cd.facilities;

-- 3. Facilities that charge a fee to members

SELECT * 
FROM cd.facilities
WHERE membercost > 0;

-- 4.Facilities for which membercost is less than 1/50th of monthlymaintenance
SELECT facid,name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost >0 AND membercost < monthlymaintenance * 0.02;

-- 5. How can you produce a list of all facilities with the 'Tennis' in their name?

SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';

-- 6.Retrieve details of facilities with ID 1 and 5 without using OR operator
SELECT * FROM cd.facilities
WHERE facid IN (1,5);

-- 7. Retrieve members who join after the start of september 2012

SELECT memid,surname,firstname,joindate
FROM cd.members
WHERE joindate > '2012-09-01';

-- 8. first 10 surnames ordered list of members

SELECT DISTINCT surname 
FROM cd.members
ORDER BY surname ASC
LIMIT 10;

-- 9. You'd like to get the signup date of the last member
SELECT joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

-- 10. Produce a count of the number of facilities that have a cost to guest of 10 or more.
SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >= 10;


-- 11. Produce a list of the total number of slots booked per facility in the month of september 2012
SELECT facid, SUM(slots) as "Total Slots"
FROM cd.bookings
-- starttime is a timestamp: BETWEEN ... '2012-09-30' would stop at midnight and miss the last day
WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots) ASC;

-- 12. Produce a list of facilities with more than 1000 slots booked.

SELECT facid, SUM(slots) total_slots
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

-- 13. How can produce the list of the start times for bookings for tennis courts for the date '2012-09-21'?
SELECT starttime AS start, name
FROM cd.facilities AS f
INNER JOIN cd.bookings AS b
ON f.facid = b.facid
WHERE f.name LIKE '%Tennis Court%'
AND Date(starttime) = '2012-09-21'
ORDER BY starttime;


-- How can you produce a list of the start times for bookings by members named 'David Farrell'?
-- Expected result is 34 rows of timestamps

SELECT members.surname, members.firstname, bookings.starttime FROM cd.members
INNER JOIN cd.bookings
ON members.memid = bookings.memid
WHERE surname = 'Farrell' AND firstname = 'David'
ORDER BY  bookings.starttime;