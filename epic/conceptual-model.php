<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Data Design</title>
	</head>
	<body>
		<h1>Conceptual Model</h1>
		<p>
			<strong>User:</strong>
		</p>
		<ul>
			<li>userId (pk)</li>
			<li>userName</li>
			<li>userProfilePicture</li>
			<li>userRepPoints</li>
			<li>userDescription</li>
			<li>userCar</li>
		</ul>
		<p>
			<strong>Car:</strong>
		</p>
		<ul>
			<li>carId (pk)</li>
			<li>carTotalPrice</li>
			<li>carYearMakeModel</li>
			<li>carLocation</li>
			<li>carDealerInfo</li>
			<li>carSaveFeature</li>
			<li>carHistory</li>
		</ul>
		<p>
			<strong>Saved Listings:</strong>
		</p>
		<ul>
			<li>savedListingsCarId (pk)</li>
			<li>savedListingsSaveAdd</li>
			<li>savedListingsMySaved</li>
			<li>savedListingsUnsaveCar</li>
		</ul>
		<img src="data-design-1.jpg" alt="no pic">
		<h4><a href="persona.php">Persona</a></h4>
		<h4><a href="user-story.php">User Story</a></h4>
		<h4><a href="use-case.php">User Case</a></h4>
		<h4><a href="index.php">Directory</a></h4>
	</body>