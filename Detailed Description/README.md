# Detailed description

![logo](/assets/logo.png)

## Introduction

Incorporating IoT and APIs, RoboHydrant aims to replace manual checks of all fire hydrants in Singapore.

## Features

### 1. Automated Opening / Closing of Pressure Valve

The opening of the hydrant's valve usually involves manual turning of the knob on the ground. This process can be automated by the robotic hardware which uses supplied power upon receiving a request from the server. Likewise, after the static pressure is collected, the valve can be closed in the same automated process.

### 2. Convenient Collection of Static Pressure

The appplication incorporates Geolocational API and the coordinates of the coordinates of the hydrants to track the pressures of each hydrant at each location. After collection of the static pressure, the information will be stored in IBM Cloud Foundry and the mobile application will be updated with the latest pressure information of the hydrant. 

## Demo

A proof of concept can be found at: https://scdf-lyfsavers.s3-web.jp-tok.cloud-object-storage.appdomain.cloud/index.html

## Improvements before Grand Finals

1. Map will be included in mobile application for users to view and track each hydrant.
2. Hardware prototype to be completed.

## Conclusion

While the solution tackles the problem of utilising valuable resources to conduct manual hydrant testing, it is by no means a full elimination of manual checks. Instead, the solution is complementary to the current manual testing in place. While firefighters might be previously required to perform full manual hydrant testing every week, they can now do so on a monthly basis with the solution in place.
