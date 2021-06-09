# SCDFLyfsavers
SCDF X IBM Lifesavers' Innovation Challenge 20/21 

# Who are we?
 
Team Lyfsavers comprises of Jethro, Xin Rui, Riyan, You Sheng and Brandon. Though we are taking different courses in Nanyang Technological University, we have come together, each with our own unique skillsets, to tackle the this year SCDF X IBM Lifesavers' Innovation Challenge.

# Short Description

"" - A fully integrated IoT system for hydrant testing that aims to test the static pressure of the hydrant remotely. This will allow:

- SCDF to engage in more efficient resource allocation and scheduling which will greatly improve SCDF operational readiness<br>
- Precious water that are wasted away during the course of traditional hydrant testing methods to be saved <br>
- Eliminate water Damage to the nearby surroundings
- Fuel expanded for these adhoc duties to be saved

# Whats the problem?

Our team members, Jethro and Riyan were stationed at Central Fire Station as section commanders during their NS and the problems listed below are raised up based on their personal experience.

## Reduced Operational Readiness
Every month, each fire station will be tasked with the ad-hoc duty of routine testing of fire hydrants during non-emergency times around Singapore to ensure that the water pressure is at an acceptable pressure for firefighting operations. However, for such traditional hydrant testing methods, it is standard procedure for SCDF to off-run a firefighting vehicle (either a LF or NCO) to conduct such testing that might take up to 2-3 hours. As such, this might cripple the station's firefighting force.

## Not environmentally friendly
Traditional hydrant testing requires the need to test for both static and flow pressure of the water. While testing for static pressure is easy and hussle-free, testing for the flow pressure of water is not. SCDF personel will have to turn on the valve and let the water gush out of the hydrant to test for the flow pressure of water. This might prove to be a hazard for the environment and also a clear waste of precious water. In Singapore, our hydrants put out around 3000 litres per minute. In other words, we are wasting more than 15000 litres of water if we are testing for it for a mere 5 minutes. Furthermore, with the high pressure of the hydrant and the massive volume of water that is gushing out, water damage might be incurred to its nearby surroundings.
Last but not the least, alot of fuel is also expanded during such ad hoc duties. 

# How can technology help? 

By utilising pressure sensors in conjuction with a software app, we are able to design a full integrated IoT system that allows station to conduct hydrant testing remotely without having to off-run a vehicle. This will help enhance each station's operational readiness and ensure that they are well-equipped in terms of manpower to tackle any emergency. Furthermore, with such automation comes increased accuracy, efficiency and reliability in collecting data for hydrants around Singapore.

# The idea

"" is an IoT system which utilises IBM CloudFoundry for effective relaying of information between SCDF personnel and the DPS310 barometric pressure sensor that will be installed in each fire hydrant.

More often than not, SCDF personnel choose to first test the static pressure of the hydrant as the first line of defence before determining whether there is a need to test for the flow pressure of the hydrant. As such, our solution consist of a mobile app which can be used to remotely control the DPS310 barometric pressure sensor in a specified hydrant to test its static pressure results. The app is also able to store and display all historical records of any fire hydrants within 10km radius around the station for reference.

These essential information will be clearly displayed as a dashboard on our app for SCDF personnel. On the account that the static pressure is lower than expected (below 20psi), it will send a notification to the user to warn him/her of the low pressure to prompt them to then physically go down for a check.

# The architecture of your proposed solution

![architecture](/assets/architecture.png)

# Proposed Roadmap/Timeline

![roadmap](/assets/roadmap.png)

## SCDF Personel
1. Each station will be given 2 accounts to login via the mobile app.
2. Appointed Hydrant ICs shall log in base on the account that is given to them. 
3. During the allocated time slots for hydrant testing, appointed hydrant IC's will turn on the valve from the mobile app. 
4. The mobile app will send a http request to the sensor to then turn on the valve of the hydrant and activate the DPS310 barometric pressure sensor. The sensor will then send the http request to the IBM cloud.
5. The mobile app will then retrieve its information from the IBM cloud and process the information before displaying it on the dashboard in the app. A warning notification might be sent if the static pressure is below the targeted 20psi, else it will show a green tick. 


Short description of your team members, and team name.<br>
a) A short description of the problem you are tackling, how technology can help, as
well as the idea your team is proposing* <br>
b) Pitch Video* <br>
c) The architecture of your proposed solution* <br>
d) A hyperlink to your detailed solution (Long description of your solution) * <br>
e) Project Roadmap/ Proposed timeline <br>
f) Getting started (step-by-step instructions to install the required software and how to
run a demo of your solution) * <br>
g) Running the tests (Explanation and breakdown on how to run tests for the proposed <br>
solution)
h) Live demo (link to an actual working demo/website) <br>
i) What your team used to build your solution (e.g. IBM Cloud, etc...) * <br>

Team Name: Lyfsavers<br>
Team Leader - Jethro<br>
Coder - Xin Rui<br>
Engineer - Riyan<br>
Researcher - You Sheng<br>
Designer - Brandon

Problem Statement: How might we leverage emerging technologies (specifically "Green-Tech") to enhance emergency response and public safety in Singapore and make SCDF's service delivery environmentally friendly by design?

a) Firefighters need to leave their post during non-emergency times to go around to the public hydrants in SG and manually collect data on hydrant operational readiness(mainly flow rate of the water & water pressure). They do this a few times each week and it is not only laborious for firefighters, but also environmentally unfriendly by design . 

Proposed Solution: We could design an IoT system to collect this data so we save time & resources for the fire lads
