## Availability Zone 

A physically separate location within an Azure region that is made up of one or more data centers. 
Each Availability Zone is independent in terms of power, cooling, and networking.

## Geographic Separation:
Availability Zones are typically located within a region, but they are physically separate from one another. 
This means they have their own independent power, cooling, and networking, which makes them more resilient to large-scale failures like a natural disaster or power outage that might affect a whole data center.

## High Availability:
By placing resources (like VMs, storage, databases) across multiple Availability Zones, you can ensure that your application remains available even if one Availability Zone goes down due to a failure.

## Use Case:
Availability Zones are suitable for mission-critical applications that need to be highly available and resilient to failures that can impact a single data center. You typically place resources like VMs, databases, and storage across different zones to enhance availability.

## Fault Tolerance:
Since Availability Zones are in separate locations within a region, they offer more robust fault tolerance than Availability Sets. If one zone is down, the other zones will continue functioning, ensuring the availability of the service.

_Note: Not all regions have Availability Zones_

![image](https://github.com/user-attachments/assets/32f0f076-65ea-486e-9c17-6f0c8472e28b)
