*Settings*							
Library	SeleniumLibrary
							
*Keywords*
Open browser in testing website	SeleniumLibrary.Open Browser	${WEBSITE_URL}	${BROWSER}
	SeleniumLibrary.Delete all cookies
	SeleniumLibrary.Location Should Contain	${WEBSITE_URL}

Test Setup	[Documentation]	Before start the test, selenium will start a connection with the selected browser
	Open browser in testing website

Test Teardown	[Documentation]	This teardown will close the browser
	Close Browser

Click on ${button_name} button	SeleniumLibrary.Wait Until Page Contains Element	"xpath: //*[contains(text(), "${button_name}")]"
	SeleniumLibrary.Click Element	"xpath: //*[contains(text(), "${button_name}")]"

Sign in into the website	[Documentation]	Sign in to the website with valid credentials
	Click on Sign in button
	SeleniumLibrary.Input Text	"xpath://*[@id=""email""]"	${USER}
	SeleniumLibrary.Input Password	"xpath://*[@id=""passwd""]"	${PASSWORD}
	SeleniumLibrary.Click Element	"xpath://*[@name=""SubmitLogin""]"

Add ${product_name} product to the cart	[Documentation]	Add the searched available product to the cart
    Filter result search items by In stock
    Click on Add to cart button

Filter result search items by In stock
	SeleniumLibrary.Page Should Contain List	"xpath://select[@id=""selectProductSort""]"
	SeleniumLibrary.Mouse over	"xpath://select[@id=""selectProductSort""]"
	SeleniumLibrary.Click Element	"xpath://select[@id=""selectProductSort""]"
	SeleniumLibrary.Mouse Down	"xpath://option[@value=""quantity:desc""]"
	SeleniumLibrary.Click Element	"xpath://option[@value=""quantity:desc""]"
	SeleniumLibrary.Page Should Contain Element	"xpath://li[@id=""list""]"
	SeleniumLibrary.Click Element	"xpath://li[@id=""list""]"

Search for a ${product_name} product	[Documentation]	Looks for the asked product in the web search box
	SeleniumLibrary.Input Text	"xpath://*[@name=""search_query""]"	${product_name}
	SeleniumLibrary.Press Key	"xpath://*[@name=""search_query""]"	\\13
	SeleniumLibrary.Check Search Failed message does not appear

Check Search Failed message does not appear
    SeleniumLibrary.Element Should Not Contain	"xpath://*[@class=""alert alert-warning""]"	No results were found for your search

Check cart summary	[Documentation]	Check that the cart summary is not empty and proceed with checkout process
    SeleniumLibrary.Table Should Contain	"xpath://*[@id=""cart_summary""]"	Faded Short Sleeve T-shirts
    SeleniumLibrary.Page Should Contain Element	"xpath://*[@class=""button btn btn-default standard-checkout button-medium""]"
    SeleniumLibrary.Click Element	"xpath://*[@class=""button btn btn-default standard-checkout button-medium""]"

Proceed to shipment method
    SeleniumLibrary.SeleniumLibrary.Click Element	"xpath://*[@name=""processAddress""]"
    SeleniumLibrary.Page Should Contain Checkbox	"xpath://*[@id=""cgv""]"
    SeleniumLibrary.Select Checkbox	"xpath://*[@id=""cgv""]"

Proceed to payment with wire    [Documentation]	Select option to pay by bank wire and finish the purchase process
    SeleniumLibrary.Click Element	"xpath://*[@name=""processCarrier""]"
    SeleniumLibrary.Click Element	"xpath://*[@title=""Pay by bank wire""]"
    Click on I confirm my order button