# CyberSecurityProject1
Creating ELK Stack Server



![Network Diagram](https://user-images.githubusercontent.com/40638009/138611278-57379e9a-9a3c-4eb5-887f-bd958d59234a.png)



The files below have personally been tested and used to build a ELK web server on Azure. 

Below files are ansible-playbooks that you need to recreate DVWA and the ELK server. 

[my-playbook.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403973/my-playbook.yml.txt)

[pentest.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403976/pentest.yml.txt)

[filebeat-playbook.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403977/filebeat-playbook.yml.txt)

[install-elk.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403978/install-elk.yml.txt)

[metricbeat-playbook.yml.txt](https://github.com/Kreyeptic/CyberSecurityProject1/files/7403979/metricbeat-playbook.yml.txt)

These .yml files give you the following ansible files needed to recreate rules to configure your own DVWA, ELK, Filebeat and Metricbeat for Kibana.

###Description of the Topology

The purpose of this network is to expose a load balancer and monitored by the Damn Vulnerble Web Application (DVWA)..

Load balancing ensures that the application will be available when needed, also to restrict access to the network. Load Balancing allows availability to the web-servers which is the availability aspect of security in regards to the CIA Triad.

 The main advantage of using a JumpBox is having one origination point for administrative tasks. This ultimately sets the JumpBox as a Secure Admin Workstation. In order to conduct administrative tasks administrators are required to access the JumpBox before accessing the other servers.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.
Filebeat watches for log files/locations and collect log events. You can see this on (http://localip:5601) later on in guide.
Metricbeat records metrics and statistical data from the operating system and from services running on the server. You can see this on (http://localip:5601) later on in guide.
* Filebeat watches for log files/locations and collect log events. (Filebeat: Lightweight Log Analysis &amp; Elasticsearch)
* Metricbeat records metrics and statistical data from the operating system and from services running on the server (Metricbeat: Lightweight Shipper for Metrics)

The details of each machine may be found below and their private IP addresses.

-| Name       | Function                   | IP Address | Operating System         |
-|------------|----------------------------|------------|--------------------------|
-| Jump Box   | Gateway                    | 10.1.0.7   | Linux (Ubuntu 18.04 LTS) |
-| Web-1      | Web Server - Docker - DVWA | 10.1.0.5   | Linux (Ubuntu 18.04 LTS) |
-| Web-2      | Web Server - Docker - DVWA | 10.1.0.6   | Linux (Ubuntu 18.04 LTS) |
-| ELK-Server | ELK Stack                  | 10.0.0.4   | Linux (Ubuntu 18.04 LTS) |


 ### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the Jump Box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

Machines within the network can only be accessed by SSH.
* The ELK-Server is only accessible by SSH from the JumpBox and via web access from Personal IP Address.

 The access policies in place can be found in the table below.

| Name       | Publicly Accessible     | Allowed IP Address                                 |
|------------|-------------------------|----------------------------------------------------|
| Jump-Box   | No                      | Personal IP Address                                |
| Web-1      | Yes via Load Ballancer | 52.188.111.179 LB Public IP 10.0.0.4 - JumpBox      |
| Web-2      | Yes via Load Ballancer | 52.188.111.179 LB Public IP 10.0.0.4 JumpBox        |
| ELK-Server | No                      | SSH 10.0.0.4 - JumpBox HTTP Port 5601 Personal IP  |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration
physically touch each server.

The playbook performs the following tasks:

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

The Beats above were used to collect the following information from each machine:

Filebeat watches for log files/locations and collect log events. (Filebeat: Lightweight Log Analysis & Elasticsearch)
Metricbeat records metrics and statistical data from the operating system and from services running on the server (Metricbeat: Lightweight Shipper for Metrics)
Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured.

SSH into the control node and follow the steps below:

Copy the filebeat-config.yml and metricbeat-config.yml file to /etc/ansible/files.
Update the configuration files to include the Private IP of the ELK-Server to the ElasticSearch and Kibana Sections of the Configuration File
Run the playbook, and navigate to (http:/localip(elkVM):5601/app/kibana) to check that the installation worked as expected.
Which file is the playbook? The playbook files are:

elk-playbook.yml - used to install ELK Server
filebeat-playbook.yml - Used to install and configure Filebeat on Elk Server and DVWA servers
metricbeat-playbook.yml - Used to install and configure Metricbeat on Elk Server and DVWA servers
Where do you copy it?

/etc/ansible/

Which file do you update to make Ansible run the playbook on a specific machine?

/etc/ansible/hosts.cfg

How do I specify which machine to install the ELK server on versus which to install Filebeat on?

In /etc/ansible/hosts you tell it where you want eachto be installed ElkServers or FileBeat

Which URL do you navigate to in order to check that the ELK server is running?

http://localip(elkVM):5601

Commands needed to run the Anisble Configuration for the Elk-Server are:

ssh RedAdmin@JumpBox(PrivateIP)

sudo docker container list -a - List the ansible containers you currently have

sudo docker start *silly name* - Will start that ansible container.

sudo docker attach *silly name* - Will connect you to that ansible container via ssh@Ipadress.

cd /etc/ansible - moves you to the ansible directory. 

ansible-playbook elk-playbook.yml (Installs and Configures the ELK-Server needed for Kibana)

cd /etc/ansible/ - moves you to the ansible directory. 

ansible-playbook filebeats-playbook.yml (Installs and Configures filebeats for your Kibana app page)

ansible-playbook metricbeats-playbook.yml (Installs and Configures metricbeats for your Kibana app page)

Open a new browser on Personal Workstation, navigate to (http://localip(ELKVM):5601/app/kibana) - This will bring up Kibana Web Portal for you to configure metricbeats and filebeats.

References:
Filebeat: Lightweight Log Analysis & Elasticsearch. (n.d.). Retrieved August 22, 2020, from https://www.elastic.co/beats/filebeat Metricbeat: Lightweight Shipper for Metrics. (n.d.). Retrieved August 22, 2020, from https://www.elastic.co/beats/metricbeat

http://ansible.com


