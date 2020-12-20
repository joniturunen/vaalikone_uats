# # UAT Robot Framework tests

> Joni Turunen, 20.12.2020

School assignment to test [Yle Vaalikone](https://vaalikone.yle.fi/eduskuntavaali2019/?lang=en) -website

## Test cases

There are two test cases [groupx-1](testcase_groupx-1.robot) and [groupx-2](testcase_groupx-2.robot). Test cases use same variable file [variables.py](resources/variables.py) to set x-paths, strings, lists and disctionaries. Test cases iterate through declared list(groupx-1) and dictionary(groupx-2).

### testcase groupx-1

**Test Title:** Municipality selection creates correct value for user.
**Description:** Test the municipality selection text field using search word filtering and validate a key value is set for user with selected municipality.

### testcase groupx-2

**Test Title:** Candidate filtering by districts.
**Description:** Use candidate browse page and select Electoral district with predefined keywords and search criteria.

## How to run test cases?

After cloning the project to your own computer go to the local repository directory and run the following command.

> Make sure you have all requirements installed on your workstation

```shel
robot -d results testcase_groupx-<no>.robot
```

After running the command results are found in the results folder.

## Requirements

- Python3
- Robotframework
- Seleniumlibrary
- SeleniumTestability -plugin
