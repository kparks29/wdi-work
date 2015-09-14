Core.getElementsByClass = function (theClass)
{
	//look at each element in the document
	var elementArray = [];

	if (typeof document.all != "undefined")
	{
		elementArray = document.all;
	}
	else
	{
		elementArray = document.getElementsByTagName("*");
	}

	//for each element, perform a check that compares its class with the one we are looking for
	var matchedArray = [];
	var pattern = new RegExp("(^| )" + theClass + "( |$)");

	for (var i=0; i<elementArray.length; i++)
	{
		//if the class matches, add the element to our group of elements
		if (pattern.test(elementArray[i].className))
		{
			matchedArray[matchedArray.length] = elementArray[i];
		}

		return matchedArray
	}
}