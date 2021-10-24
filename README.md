# CyberSecurityProject1
Creating ELK Stack Server



![Network_Diagram](https://user-images.githubusercontent.com/40638009/138609871-0b9ba8d3-f896-467d-86a5-024c3b1e9c88.png)


The files below have personally been tested and used to build a ELK web server on Azure. 

Below files are ansible-playbooks that you need to recreate DVWA and the ELK server. 

[my-playbook.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403973/my-playbook.yml.txt)

[pentest.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403976/pentest.yml.txt)

[filebeat-playbook.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403977/filebeat-playbook.yml.txt)

[install-elk.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403978/install-elk.yml.txt)

[metricbeat-playbook.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403979/metricbeat-playbook.yml.txt)

These .yml files give you the following ansible files needed to recreate rules to configure your own DVWA, ELK, Filebeat and Metricbeat for Kibana.

 The main advantage of using a JumpBox is having one origination point for administrative tasks. This ultimately sets the JumpBox as a Secure Admin Workstation (SAW). In order to conduct administrative tasks administrators are required to access the JumpBox before accessing the other servers.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.
Filebeat watches for log files/locations and collect log events. (Filebeat: Lightweight Log Analysis &amp; Elasticsearch)
Metricbeat records metrics and statistical data from the operating system and from services running on the server (Metricbeat: Lightweight Shipper for Metrics)
* Filebeat watches for log files/locations and collect log events. (Filebeat: Lightweight Log Analysis &amp; Elasticsearch)
* Metricbeat records metrics and statistical data from the operating system and from services running on the server (Metricbeat: Lightweight Shipper for Metrics)

The configuration details of each machine may be found below.

| Name       | Function                   | IP Address | Operating System         |
|------------|----------------------------|---------------------------------------|
| Jump Box   | Gateway                    | 10.0.0.4   | Linux (Ubuntu 18.04 LTS) |
| Web-1      | Web Server - Docker - DVWA | 10.0.0.5   | Linux (Ubuntu 18.04 LTS) |
| Web-2      | Web Server - Docker - DVWA | 10.0.0.6   | Linux (Ubuntu 18.04 LTS) |
| ELK-Server | ELK Stack                  | 10.2.0.4   | Linux (Ubuntu 18.04 LTS) |


 ### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the Jump Box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

Machines within the network can only be accessed by SSH.
* The ELK-Server is only accessible by SSH from the JumpBox and via web access from Personal IP Address.

 A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible     | Allowed IP Address                                 |
|------------|-------------------------|----------------------------------------------------|
| Jump-Box   | No                      | Personal IP Address                                |
| Web-1      | Yes Thru Load Ballancer | 52.188.111.179 LB Public IP 10.0.0.4 - JumpBox      |
| Web-2      | Yes Thru Load Ballancer | 52.188.111.179 LB Public IP 10.0.0.4 JumpBox        |
| ELK-Server | No                      | SSH 10.0.0.4 - JumpBox HTTP Port 5601 Personal IP  |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration
physically touch each server.

The playbook implements the following tasks:

1. Install Docker.io and pip3
2. Increases VM memory
3. Download and Configure elk docker container
4. Sets Published Ports

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Docker  Intelligent_ellis](https://user-images.githubusercontent.com/40638009/138609260-49cf7d50-6e3c-4815-a146-fd5d42926ac1.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
* Web-1 10.0.0.5
* Web-2 10.0.0.6

We have installed the following Beats on these machines:
* Filebeat
* Metricbeat!



