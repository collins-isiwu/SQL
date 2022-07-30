-- Keep a log of any SQL queries you execute as you solve the mystery.

-- here, I looked into the details of the crime
SELECT description
FROM crime_scene_reports
where month = 7 AND day = 28
and street = 'Humphrey Street';

-- I'm on the look out for the transcript of the interviewees
select transcript
from interviews
where month = 7 AND day = 28;


--looking into the names of those that was interviewed
select name
from interviews
where month = 7 AND day = 28;


--security logs of the bakery
select *
from bakery_security_logs
where month = "7" AND day = "28"
and hour = "10";

--here, I'm on the lookout for the names of those that left the bakery parking lots
select * from people where license_plate in (select license_plate from bakery_security_logs where month = "7" AND day = "28" and hour = "10");

--here, I collected data on atm transactions that took place using their unique ids.
select * from atm_transactions where id in (select id from bakery_security_logs where month = "7" AND day = "28" and hour = "10" and atm_location = "Leggett Street");

--collected data on the phone calls
select * from phone_calls where id in (select id from bakery_security_logs where month = "7" AND day = "28" and hour = "10");

--according to the data collected from the previous query, it is only id 261 that had a phone call that lasted for less than a minute. I will query the system now to know the caller and reciever
select * from people where phone_number = "(031) 555-6622";
select * from people where name = 'Robin';

--collected data on flights
select *
from flights
where month = 7 AND day = 29;

--pooled all the information on airports and found the details of origin airports and destination
select * from flights;

select * from passengers where passport_number = '5773159633';
