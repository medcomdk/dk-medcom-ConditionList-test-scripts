
/*
Basic asserts that will be repeated in every test
*/
RuleSet: repeatingAsserts
* insert assertPayload              // assert that the post is a bundle
* insert assertResponseCodeTest     // assert that the serverResponce is 200 or 201
* insert assertValidConditionList   // Validate the conditionlist in the bundle
* insert assertDanishTimeZone       // Validate time zones on timestamp of conditionList


