package com.handong.jstl;

import java.util.ListResourceBundle;

public class Bundle extends ListResourceBundle{
	static final Object[][] contents = { { "colour.Violet", "Violet" },  
			{ "colour.Indigo", "Indigo" }, { "colour.Blue", "Blue" }, };  

	public Object[][] getContents() {  
        return contents;  
    }  
}
