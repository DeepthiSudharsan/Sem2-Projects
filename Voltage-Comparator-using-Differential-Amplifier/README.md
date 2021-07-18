### A Voltage Comparator Circuit Using A Differential Amplifier With Transistors

#### AIM:
1. To design a differential amplifier using transistors and use the differential circuit to design a voltage comparator circuit.
2. Simulation platforms for obtained circuit:
* MultiSim
* TinkerCad
3. Hardware implementation using ADALM module and ALICE M1K desktop

#### CIRCUIT DIAGRAM:

![image](https://user-images.githubusercontent.com/59824729/126061293-50562d1b-66c3-4f2a-b088-df678b3fae17.png)

#### COMPONENTS REQUIRED:

* Two PNP BJTs
* One 5V DC power supply
* AC power supply (Triangular 5V)
* One 220μF capacitor
* Connecting wires
* Resistors Required:
  * Two 20kΩ
  * Two 10kΩ
  * One 6.8kΩ

#### OUTPUT OF MULTISIM SIMULATION:

![image](https://user-images.githubusercontent.com/59824729/126061301-55c07319-16c7-4b51-9737-e5e8948dd8fd.png)

NOTE:
* Triangular wave(orange): input
* Square wave(green): output
* Blue line is emitter voltage
* Purple line is VREF.

#### TINKERCAD IMPLEMENTATION: 

![image](https://user-images.githubusercontent.com/59824729/126061328-dec6edcf-c249-4d17-a1ec-7003ce1bb299.png)

Owing to the absence of a 5V source in Tinkercad, we have used a 9V battery as a replacement. Due to the change in the source voltage, the resistors have been changed accordingly.
Components used:
* 2 PNP transistors (BJT)
* 2 5ms Oscilloscopes
* 9V battery
* 1 6.15kΩ resistor
* 1 55.5kΩ resistor
* 1 3.3kΩ resistor
* 1 1μF capacitor
* 1 21.5kΩ resistor
* 1 Triangle Function Generator
* 1 Voltage Multimeter

A function generator has been used to simulate the triangular input wave. The input and output waveforms have been displayed using two different oscilloscopes.
A multimeter has also been used to read the reference voltage which is visible in the figure above as 2.56V.
However, the magnitudes of the output wave could not be obtained due to the limitations of the Tinkercad features. 
But the output along with the magnitudes of the respective voltages have been obtained using the ADALM hardware module and ALICE M1K Desktop software 
which will be explained in the report.

#### ADALM IMPLEMENTATION:

![image](https://user-images.githubusercontent.com/59824729/126061391-b655adc2-0aa2-4dae-befe-78d6a8bae5c8.png)
![image](https://user-images.githubusercontent.com/59824729/126061410-f83d6ce1-eb47-4123-8114-7838d293229e.png)

Procedure:
1. Make the connections as shown in the MultiSim circuit
2. In the place of the triangular source, connect Channel A
3. Connect Channel B to the collector of Q2 to obtain the output wave

Output:

![image](https://user-images.githubusercontent.com/59824729/126061418-affe7c68-46c9-4041-b3bc-7829ceb7dc16.png)


#### REFERENCES:
* https://www.electrical4u.com/differential-amplifier/
* https://www.electronics-tutorials.ws/opamp/opamp_1.html?utm_referrer=https%3A%2F%2Fwww.google.com%2F
* https://youtu.be/ehekdOHOIZ0
* http://www.circuitstoday.com/op-amps-operational-amplifiers
* http://www.bristolwatch.com/ele/vc.htm
* https://www.elprocus.com/differential-amplifier-circuit-working/
* https://sciencing.com/input-common-emitter-npn-transistors-6771607.html
