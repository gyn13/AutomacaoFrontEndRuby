class HomePage < SitePrism::Page
    element :siteHome, :css, ".app_logo"
    element :firstItemName, :css, "a[id='item_4_title_link'] div[class='inventory_item_name ']"
    element :pageName, :css, ".title"
   
    def checkLoginSuccessful
        expect(siteHome.text).to eql "Swag Labs"
        expect(firstItemName.text).to eql "Sauce Labs Backpack"
        expect(pageName.text).to eql "Products"
    end
    
end