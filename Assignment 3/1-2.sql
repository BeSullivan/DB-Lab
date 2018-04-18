begin;
alter table persons add PhoneNum VARCHAR(20);
alter table persons add CONSTRAINT PhonePref CHECK(PhoneNum Like '001%');
commit;