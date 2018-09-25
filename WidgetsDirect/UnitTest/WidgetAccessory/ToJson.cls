Class UnitTest.WidgetAccessory.ToJson Extends %UnitTest.TestCase
{

Method TestWidgetAccessoryToJSON()
{
	Set tAccessory = ##class(User.WidgetAccessory).%New()
	Set tAccessory.Name = "tophat"
	Set tExpectedJSON = {
		"Id":"",
		"Name":"tophat",
		"Description":"",
		"Price":"",
		"Quantity":"",
		"FirstManufactured":"31/12/1840",
		"InProduction":"",
		"Import":"",
		"SKU":"",
		"Widgets":[]}.%ToJSON()
	Do $$$AssertEquals(tAccessory.toJSON(1).%ToJSON(),tExpectedJSON)
}

}