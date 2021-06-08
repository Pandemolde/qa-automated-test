# Automated Test QA Engineer
Name: Xavi Ros Muñoz

Mail: xavixavi.92@gmail.com 

## Part 1 - Automated test
In order to run the test suite execution, there are some requirements needed to carry out it:
* [Docker](https://docs.docker.com/get-docker/) installed in the current OS.
* [Docker-compose](https://docs.docker.com/compose/install/) tool installed in the current OS (greater than version 3)

Once all requirements are filled, just run the next command in a shell:
```shell
user@host:~/github/qa-automated-test$ docker-compose up -d
```

> The log results will appear in the folder "automation-practice/reports" 
 
---
## Part 2 - Define a Test case
For the test definition, using Robotframework-IDE (RIDE) as a Test Management tool it allows to define each 
test case by exposing its:
* `Plain text`: where can be defined the test purpose and its acceptance criteria.
* `Tags`: very useful even to classify or run only the tests of the selected tag (typipcal ones: NOMINAL, ABNORMAL, 
  STRESS, etc)   
* `Test name in Gherkin`: Robotframework understands the Gherkin language and it has some interactions with 
* `Test steps in Keywords`: Robotframework can add robotframework code or Python libraries code inside of them giving 
  full freedom to the test creation
* `Test steps names with variables`: The tests steps can include variables on them so then the test steps are more 
  readable
* `Scalar variables`: Robotframework allows to set variables and modify them if needed when running the Robot command 
  (the one that executes the test cases)

<br></br>
I had not enough time but if I were in charge of the suite creation I would add test cases like:
*  Nominal tests that performs different and simple checking actions like:
    * When the Logo button is clicked Then the website redirects the user to the main page
    * When each button on the main page is clicked Then the website shall perform its natural action
    * When the search bar is used with an existing product Then the website shall show the product list
    
* Anormal test cases that check that in case of a negative or abnormal scenario the website shall work as expected (in 
  the requirements):
    * When the search bar is used an empty string Then the website shall show a warning
    * When the search bar is used with an unexisting product Then the website shall show a warning
    * When the credentials are invalid Then the Sign in process shall be denied
    * When signing out Then the website shall not allow the user to perform the checkout process
    * When the cart is empty Then the checkout process shall be denied
    * When the terms and conditions checkbox is not selected Then the process can not be continued
    
* Stress test cases to check that the service is robust (this ones shall be performed according to the requirements or 
  what the developers expect to):
    * When multiple requests at the same time are performed Then the website shall not be down
    * When the cart is full of products Then the checkout process shall be performed successfully
    

---
## Part 3 - Open a bug
The bug report can be found into the path `automation-practice/bug-tickets`.

---

## Part 4 - General Knowledge
Select the following fields that are familiar to you (mark with an X):  
<br></br>

| Technology | Yes | No | Mention any used tool if apply |
|:-----|:-----:|:-----:|:-----|
| Agile | X | - | Jira Scrum/Kanban boards |
| Docker | X | - | DockerSwarm, ECS, ECR, Kubernetes |
| Relational Database | X | - | Not an expert but had to interact with some MySQL and Postgres databases |
| Microservices | X | - | As a Python software engineer (with tools like RabbitMQ to event driven programming, etc) |
| Kubernetes | X | - | Not professional experience but I did something at home and I really want to learn more about |
| NoSQL | X | - | Not an expert but had to interact with some Redis and MongoDB databases  |
| Jira | X | - |  |
| Confluence | X | - |  |
| Test Management Tools | X | - | Robotframework + Robotframework-ride and XRAY Jira plugin |
| Continuous Integration | X | - | Ansible, Jenkins and Bitbucket pipelines |
| Mobile automation testing | - | X |  |
| Web automation testing | - | X | Not experience with but I think I could do it without any problem so I used Selenium to web scraping |
| Backend automation testing | X | - | Python pytest and Robotframework libraries |
| Unit testing | X | - | Python unittest library |
| Performance testing | X | - | Python performance testing tool Locust |
| Certification process | - | X | I started AWS practitioner certification but halted atm. In mind doing ISTQB once at life |
| Gherkin | X | - | Cherking language is integrated with robotframework |
| Release Management | X | - | Jira |
| QMS | - | X |  |
| Software documentation | X | - | Sphinx + Confluence |