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

Click on ${button_name} button	SeleniumLibrary.Wait Until Page Contains Element	xpath: //*[contains(text(), "${button_name}")]
	SeleniumLibrary.Click Element	xpath: //*[contains(text(), "${button_name}")]

Sign in into the website	[Documentation]	Sign in to the website with valid credentials
	Click on Sign in button
	SeleniumLibrary.Input Text	xpath://*[@id="email"]	${USER}
	SeleniumLibrary.Input Password	xpath://*[@id="passwd"]	${PASSWORD}
	SeleniumLibrary.Click Element	xpath://*[@name="SubmitLogin"]

Add ${product_name} product to the cart	[Documentation]	Add the searched available product to the cart
    Filter result search items by In stock
    Click on Add to cart button

Filter result search items by In stock
	SeleniumLibrary.Page Should Contain List	xpath://select[@id="selectProductSort"]
	SeleniumLibrary.Mouse over	xpath://select[@id="selectProductSort"]
	SeleniumLibrary.Click Element	xpath://select[@id="selectProductSort"]
	SeleniumLibrary.Click Element	xpath://option[@value="quantity:desc"]
	SeleniumLibrary.Page Should Contain Element	xpath://li[@id="list"]
	SeleniumLibrary.Click Element	xpath://li[@id="list"]

Search for a ${product_name} product	[Documentation]	Looks for the asked product in the web search box
	SeleniumLibrary.Input Text	xpath://*[@name="search_query"]	${product_name}
	SeleniumLibrary.Press Key	xpath://*[@name="search_query"]	\\13
	Check Search Failed message does not appear

Check Search Failed message does not appear
    Set Test Variable	${message_appear}	${False}
    ${status}	${message}=	Run Keyword And Ignore Error	SeleniumLibrary.Element Should Contain	xpath://*[@class="alert alert-warning"]	No results were found for your search
    Run Keyword If	'${status}'=='FAIL'	Set Test Variable	${message_appear}	${True}
    Should be True    ${message_appear}

Check cart summary	[Documentation]	Check that the cart summary is not empty and proceed with checkout process
    SeleniumLibrary.Page Should Contain Element	xpath: //*[contains(text(), "Faded Short Sleeve T-shirts")]
    SeleniumLibrary.Page Should Contain Element	xpath://*[@title="Proceed to checkout"]
    SeleniumLibrary.Click Element	xpath://*[@title="Proceed to checkout"]

Proceed to shipment method
    SeleniumLibrary.SeleniumLibrary.Click Element	xpath://*[@name="processAddress"]
    SeleniumLibrary.Page Should Contain Checkbox	xpath://*[@id="cgv"]
    SeleniumLibrary.Select Checkbox	xpath://*[@id="cgv"]

Proceed to payment with wire    [Documentation]	Select option to pay by bank wire and finish the purchase process
    SeleniumLibrary.Click Element	xpath://*[@name="processCarrier"]
    SeleniumLibrary.Click Element	xpath://*[@title="Pay by bank wire"]
    Click on I confirm my order button