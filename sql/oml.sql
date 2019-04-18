-- inserting data into table
insert into Car(carId, carYearMakeModel, carLocation, carDealerInfo, carSaveFeature, carHistory)
values(unhex("7d8aa463e0fa482b86005019a10878f9"), "2012 Mazda Speed3", "Dallas Texas","none","saved","clean");

insert into Car(carId, carYearMakeModel, carLocation, carDealerInfo, carSaveFeature, carHistory)
values(unhex("ca17f22a9d09443d92f5419d3cec03f6"), "2019 Subaru STI", "Salt Lake City, Utah","private seller","unsaved","clean");

insert into Car(carId, carYearMakeModel, carLocation, carDealerInfo, carSaveFeature, carHistory)
values(unhex("7a4656f26cb4405b99916483d386a025"), "1998 Toyota Supra STD", "Denver, Colorado","dealership","saved","rebuilt");

insert into User(userId, userName, userProfilePicture, userDescription, userRepPoints, userCar)
values (unhex("5b4b566c08884181ac26c7415af44542"), "gary", "none","tall and white", "23","Mazda Miata");

-- update car year make model                                          this couldve been using the pk and uuid instead
update Car set carYearMakeModel = "2018 Lamborghini Aventador" where carYearMakeModel = "2012 Mazda Speed3";

-- Delete statement
delete from Car where carId = unhex("ca17f22a9d09443d92f5419d3cec03f6");

-- insert statement on table WITH foreign key
insert into SavedListings (SavedListingsUserId, SavedListingsCarId, SavedListingsSaveAdd, SavedListingUnsaveCar)
 values (unhex("5b4b566c08884181ac26c7415af44542"), unhex("7d8aa463e0fa482b86005019a10878f9"), "saved", "no");

-- select statement using primary key as selector
select carLocation from Car where carId = unhex('7a4656f26cb4405b99916483d386a025');

-- two simple inner joins
select Car.CarYearMakeModel, Car.CarDealerInfo from Car
   inner join SavedListings on Car.carId = SavedListings.SavedListingsCarId where carLocation = "Dallas Texas";

select Car.CarYearMakeModel, SavedListings.savedListingsSaveAdd from Car
   inner join SavedListings on Car.carId = SavedListings.SavedListingsCarId where carLocation = "Dallas Texas";

-- Complex innerjoin
select Car.carYearMakeModel, Car.carDealerInfo, SavedListings.savedListingsSaveAdd from SavedListings
inner join Car on Car.carId = SavedListings.SavedListingsCarId inner join User on User.UserId = savedListingsUserId
where SavedListings.savedListingUnsaveCar = "no";

-- Write a select statement based of off DDC-Twitter that counts the number of likes for a specific tweet
SELECT COUNT(tweetProfileId) FROM tweet WHERE TweetId = UNHEX("e793b75e789b4d3d986b04ed5eb85ef4");