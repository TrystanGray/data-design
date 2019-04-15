alter database tgray19 character set utf8 collate utf8_unicode_ci;

drop table if exists SavedListings;
drop table if exists Car;
drop table if exists User;


create table User (
	userId BINARY(16) not null,
	userName VARCHAR(32) not null,
	userProfilePicture VARCHAR(32),
	userDescription VARCHAR(32),
	userRepPoints VARCHAR(32),
	userCar VARCHAR(32),
	unique(userName),
	primary key (userId)
);
create table Car (
	carId BINARY (16) not null,
	carYearMakeModel VARCHAR(32) not null,
	carLocation VARCHAR(32) not null ,
	carDealerInfo VARCHAR(32) not null,
	carSaveFeature VARCHAR(32),
	carHistory VARCHAR(32),
	primary key (carId)
);
create table SavedListings (
	savedListingsCarId BINARY (16) not null,
	savedListingsUserId BINARY(16) not null,
	savedListingsSaveAdd VARCHAR(32) not null,
	savedListingUnsaveCar VARCHAR(32) not null,
	index(savedListingsCarId),
	index(savedListingsUserId),
	foreign key(savedListingsCarId) references Car(carId),
	foreign key(savedListingsUserId) references User(userId)
);