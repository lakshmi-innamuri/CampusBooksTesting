$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("com/testapp/testappFeature.feature");
formatter.feature({
  "line": 1,
  "name": "testApp login",
  "description": "",
  "id": "testapp-login",
  "keyword": "Feature"
});
formatter.scenario({
  "line": 2,
  "name": "login",
  "description": "",
  "id": "testapp-login;login",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 3,
  "name": "I provide an input",
  "keyword": "Given "
});
formatter.step({
  "line": 4,
  "name": "I click login",
  "keyword": "When "
});
formatter.step({
  "line": 5,
  "name": "say hello",
  "keyword": "Then "
});
formatter.match({
  "location": "StepDefs.I_provide_an_input()"
});
formatter.result({
  "duration": 7116550809,
  "status": "passed"
});
formatter.match({
  "location": "StepDefs.I_click_login()"
});
formatter.result({
  "duration": 1477797573,
  "status": "passed"
});
formatter.match({
  "location": "StepDefs.say_hello()"
});
formatter.result({
  "duration": 619582298,
  "status": "passed"
});
});