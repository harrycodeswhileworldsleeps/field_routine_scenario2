# field_routine_scenario2

Another field routine written for SAP BW.

Scenario -> Here what happens is we are getting data from the source system.
There is a field which stores the date and time in the format (YYYYMMDDHHMMSS) in the source system 
but here in the BW side we were storing the value in two info-objects with Date and time data type.

Error -> It comes when the data in the source system ends up having 13 digits instead of 14.
Our process chain would fail at the activation step with the error message.

![image](https://user-images.githubusercontent.com/94862735/197750652-d03a0fb3-fda9-4b7d-92a8-98c73242e9d4.png)

![image](https://user-images.githubusercontent.com/94862735/197751306-8b6194d5-132b-4aa0-8372-c065e71a134f.png)

