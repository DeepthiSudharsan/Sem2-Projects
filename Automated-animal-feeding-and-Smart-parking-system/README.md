#### Objective
* To design an automated animal feeding system using an ultrasonic and PIR sensor
* To design a smart parking system using multiple ultrasonic sensors.
#### Hardware and Software Requirements
* ARDUINO UNO
* ULTRASONIC SENSOR
* PIR MOTION SENSOR
* SERVOMOTOR
* BREAD BOARD
* CONNECTING WIRES
* PIEZZO BUZZER

#### Tools:
* TINKERCAD's CIRCUIT AND 3D DESIGNS

#### Automated Animal Feeding using Ultrasonic and PIR Motion Sensor:

Summers are cruel to all alike, but birds and stray animals find it harder to survive the heat without shade or water to quench their thirst. Birds fly for miles to get to a water body and many of them die before they get any closer. Stray animals are no different, in the winters they struggle for food and in summers, water.
This project helps these animals and birds survive summer at the same time eases the process for the user. It refills the dishes of water automatically by attaching sensors to detect low levels of water, and sensors to detect movement around the dish ensuring a full dish of water for our little friends at all times.
But this project is not only for the animals outside our houses, it is also for pets. Instead of having to fill water bowls for the pet animals every time, this automatic refilling pet bowl fills it for them, so the pets will never go thirsty.

![image](https://user-images.githubusercontent.com/59824729/126061002-1eba69e2-40d8-4a2b-85b3-96c4dc966026.png)

![image](https://user-images.githubusercontent.com/59824729/126061022-c98c364e-b6d1-4359-84bb-52445644ce75.png)
![image](https://user-images.githubusercontent.com/59824729/126061030-87c8937a-fa2c-4ccd-8b92-f71366eb53a6.png)

##### WORKING LOGIC:

The Ultrasonic Sensor is used to keep track of the level of water in the pet bowl. It is attached to a tank fixed at the side of the bowl facing downwards towards the water in the bowl. This report includes a 3-D model of the project for better visualization. The PIR Motion Sensor will detect the movement of any animal in its surrounding.
The bowl refills when the PIR sensor detects an animal in front of the bowl and the ultrasonic sensor will detect the decrease in the level water and sends the signal to the tank, and the valve of the tank is opened to refill the bowl with the help of a motor attached near the valve. In this implementation we have used a servo motor to simulate the opening and closing of the valve.
During the refilling process, the Ultrasonic Sensor is also used to prevent the overflowing or excessive filling of the pet bowl.

![image](https://user-images.githubusercontent.com/59824729/126061041-782b0608-9c9c-40b2-86e2-d650b718904b.png)

The animal is expected to drink the water from the pink bowl and the cylinder represents the model of a tank in which we are expected to fill water when required as shown in the above figure.
The red cube represents the support for the tank as the tank is placed at a higher level, the red cube can also be used to keep the circuitry.

![image](https://user-images.githubusercontent.com/59824729/126061060-e28727e9-8dfb-410e-93c8-c603a6e771da.png)

It can be seen clearly from the abovev figure, the tank is slightly immersed into a small portion of the bowl so that the sensor can detect the level of the water and if the water level is below a specific threshold distance then the valve (with the help of the motor) will open for the water from the tank to flow into the bowl.

#### Smart Parking System using Ultrasonic Sensor:
A major problem in Indian metropolises is the skewed demand for on-street parking since it’s cheaper than off-street parking. On-street parking issues often cause delays, especially on roads with heavy traffic.
As we can often see parking in non-parking zones is very common in India.
This project also proposes a method to help reduce on- street parking in front of no-parking boards.

![image](https://user-images.githubusercontent.com/59824729/126061096-aa5e199d-f72d-48d1-8fe1-d1643c6a03b7.png)
![image](https://user-images.githubusercontent.com/59824729/126061116-1767c29c-9cd2-4a54-b1cf-a35fb9a4c24e.png)
![image](https://user-images.githubusercontent.com/59824729/126061121-261dee97-1525-4196-a628-24089ccf3a0c.png)
![image](https://user-images.githubusercontent.com/59824729/126061122-68253025-c8cb-4778-8762-2641781ab8af.png)


##### WORKING LOGIC:

The Ultrasonic Sensors are used to check if a car is parked at the no parking zone. These sensors are attached to the no parking signs and are used to detect the presence of a car. More number of Ultrasonic sensors are used to help identify if the object (if present) within the cone range of the sensor is a car based on whether all the sensors are able to detect an object at the same time (as width of the rear of a car or bonnet of a car is high).

#### Conclusion

Both these projects were designed with the objective of helping the society, however they can be further advanced to increase its productivity. A few ideas have been mentioned in this section.
Water is essential for the body to perform optimally and aids the body in maintaining a regular temperature. Many countries are known for their high temperatures, especially in the summer months, making animals more susceptible to dehydration when the correct precautionary steps are not put in place. A large number of animals die every year due to thirst and small systems like this project, if set up in a lot of houses or other places can help solve this problem.
On-street parking is one of the major problems that causes blockage and frequent traffic jams. Due to the limited resources available, this implementation includes only a buzzer as a warning system, however technology similar to the FASTAG technology used in toll booths can be implemented along with the buzzer for the smart parking system. Therefore, whenever a driver parks in front of a no-parking sign the buzzer buzzes as a warning and after a certain time has elapsed and if the driver has not removed his/her car money can be extracted from their bank accounts as a fine for parking in a no-parking zone.
