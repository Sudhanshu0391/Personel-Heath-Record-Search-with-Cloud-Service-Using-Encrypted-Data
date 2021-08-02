          Hidden Ciphertext Policy Attribute Based Encryption With Fast Decryption for Personal Health Record

	                * Algorithm Used:- Homomorphic Encryption Algorithm(for encrytion & decryption).
	                * Key Generation:- Random Key Generator.

This Project has following 5 modules,

  open the project and run the file....

1. Data Owner( Doctors) 
	- Register
		--> Data owner have to register first with her/his details.
	- Login
                
		--> After authorized by cloud server, data owner can login her/his account.
	- Request send to the Authority.
		--> Data owner send the trapdoor key request to the tokenizer. then onlu he,she can upload the patient records to the cloud.
	- Upload Patient Details
		--> In this module data owner can upload the patient record with patient details(name,age,disease,mobile,mail) and trapdoor key to the cloud in encryted format using homomorphic algorithm.
	- View Uploaded Patient Files
		--> View All Uploaded Patient record by them.
	- Logout

2. Data User (Hospital manegement)...
	- Register
		--> Data user have to register first with her/his details.

          
	- Login
                --> if you try to login its says invalid entry  because the data user is not authorized by the cloud server  lets see...
                --> here the data got uploded successfully in the database but we cannot login cause cloud has to authorize.....
                --> lets authorie and see...
		--> After authorized by cloud server, data user can login her/his account.
	- Search details
		--> Search files based on the keyword. If user enter the wrong keyword ,our application suspects this user is the attacker. Because, In main goal of the project is secure against chosen-keyword attack.
		-->User send the file request to the Attributor.


             Attacker -> If you mismstch the key you will become an attacker....
                         lets mismatch the key and try....
	- Download Files
		--> Using the file key send by the attributor ,user can download the files.
                --> the required file downloaded successfully and automatically decrypted...
	- Logout.


3.Authority.
    
	- Login
	- Send Trapdoor Key
		-->Authority sends the trapdoor key to the requested data owner.this key will automatically enable to the data owner module once Authority was accepted the request.
	_ Logout
4. Attribute center
	- Login
	- Send File Key
		--> Send file key to the data user's registered mail id for decrypting the file.
5. Cloud Server
	- Login
	- Authorize Owners& Users
		--> Accept & activated the data owners & users request.
	- View All Patients Records
		-->View all patient records uploaded by the data owners.
	- View All Search Details
		-->View all search keyword searched by the data users.
	- Result based on the keyword counts
		-->Generate graph based on the search keyword counts.
	- Result based on the attackers
                --> All the attackers will be recorede here 
		-->Generate graph bades on the attackers counts.
	- Logout


             THANKS FOR WATCHING THE VIDEO...
