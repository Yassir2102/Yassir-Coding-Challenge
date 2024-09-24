Test Plan for OrangeHRM End-to-End Automation
1. Introduction
The purpose of this test plan is to outline the approach for automating end-to-end (E2E) tests on the OrangeHRM platform using the Robot Framework. This E2E testing validates key workflows including user login, updating employee details, filtering employee records, and verifying the scroll functionality.

2. Test Objectives
Verify that the OrangeHRM platform behaves as expected from a user’s perspective.
Ensure critical functionalities such as login, profile updates, filtering, and scrolling are working correctly.
Validate the integration between different system components and the flow of data through the system.
3. Scope of Testing
The scope includes automating the following key features:

Login: Successful and unsuccessful user login.
Update: Updating employee records (e.g., personal details or job title).
Filtering: Filtering the employee list based on job title, department, or location.
Scrolling: Scrolling through a long list of employee records to ensure all are accessible.
Cucumber Features: Writing BDD scenarios in Gherkin to describe each test case.
4. Test Approach
4.1. Testing Tools
Automation Framework: Robot Framework with SeleniumLibrary.
BDD Framework: Cucumber for feature file writing in Gherkin syntax.
Application Under Test (AUT): OrangeHRM demo website.
4.2. Test Cases
Login Testing:
Test successful login with valid credentials.
Test unsuccessful login with invalid credentials.

Update Employee Record:
Navigate to the employee list and update a user’s profile.
Ensure that the updated information is saved and visible upon refresh.

Filtering Employee List:
Apply filters based on job title or department and validate that only the correct records are displayed.

Scrolling Functionality:
Scroll through the list of employees to ensure all records are accessible, even those that require scrolling.
Cucumber Features:

NB : All feature files that describe login, update, filtering, and scrolling used BDD.