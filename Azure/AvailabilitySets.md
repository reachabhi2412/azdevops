## Availability Sets

A way of distributing virtual machines (VMs) within a data center to ensure that the VMs are placed in different fault domains and update domains.
Logical groupings of VMs that reduce the chance of correlated failures like bringing down related VMs at the same time.

### Fault Domains
A fault domain is essentially a physical rack in the data center. 
VMs in an availability set are distributed across different fault domains to ensure that if a hardware failure occurs (e.g., power failure or hardware crash), not all VMs are affected.
Typically, Azure ensures that at least one VM in the availability set is up if there’s a fault in one of the fault domains.

### Update Domains
An update domain is a logical unit of a set of VMs that can be updated simultaneously. 
When Azure performs maintenance, updates are rolled out to VMs in one update domain at a time to prevent all VMs from being taken down at once.

### Use Case
Availability Sets are suitable for scenarios where you want to ensure your VMs are spread across multiple fault and update domains in a single data center.

### Limitation
All VMs in an availability set are within the same data center. So, if the data center itself experiences a failure, all VMs might be affected.

### Example
In Azure, you might have three VMs, each placed in a different fault domain and update domain within the same data center. If one fault domain is affected by a power failure, the other VMs in different fault domains remain unaffected.
