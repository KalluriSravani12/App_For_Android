*** Settings ***
Library    AppiumLibrary


*** Variables ***
#*** Test variables ***
#${Enterning-Text}    rs_search_src_text=iphone 15 promax case
${Skip-Sign-in}    id=com.amazon.mShop.android.shopping:id/skip_sign_in_button
${Home-page}       id=com.amazon.mShop.android.shopping:id/glow_subnav_label
${Search-bar}      id=com.amazon.mShop.android.shopping:id/chrome_action_bar_search_icon
${Item-search}     id=com.amazon.mShop.android.shopping:id/rs_search_src_text
${English-version}     id=com.amazon.mShop.android.shopping:id/btn_stay_marketplace
${Tap-selected-item}   id=com.amazon.mShop.android.shopping:id/chrome_action_bar_search_icon
${Tap-Filter}   id=s-all-filters
${Time-to-display}    id=com.amazon.mShop.android.shopping:id/contextual_actions_container
#${Tap-All}   xpath=(//android.view.View[@content-desc="All"])[2]/android.view.View


*** Test Cases ***
Open_Application
    open application    http://localhost:4723   platformName=Android    deviceName=emulator-5554    appPackage=com.amazon.mShop.android.shopping    appActivity=com.amazon.windowshop.home.HomeLauncherActivity    automationName=UiAutomator2
    Set Appium Timeout    5sec
    wait until page contains element     ${skip-sign-in}
    click element    ${skip-sign-in}
    wait until page contains element     ${English-version}
    click element    ${English-version}
    wait until page contains element    ${Home-page}
     Set Appium Timeout    5sec
    click element    ${search-bar}
    wait until page contains element    ${Item-search}
    input text       ${Item-search}          iphone 15 promax case
    # id=com.amazon.mShop.android.shopping:id/chrome_action_bar_search_icon
     Set Appium Timeout    5sec
    Click Element    ${Tap-selected-item}
# class name=android.widget.Button
# xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
    Set Appium Timeout    5sec
    wait until page contains element   class=android.widget.ToggleButton
    # xpath=(//android.view.View[@content-desc="All"])[2]/android.view.View
    # class name=android.widget.ToggleButton
    Click Element    class=android.widget.ToggleButton
# xpath=(//android.view.View[@content-desc="All"])[2]/android.view.View
    wait until page contains element   xpath=//android.view.View[@content-desc="Close"]/android.widget.TextView
    Set Appium Timeout    10sec
    Click Element    xpath=//android.view.View[@content-desc="Close"]/android.widget.TextView
    #wait until page contains element   xpath=(//android.view.View[@content-desc="All"])[2]/android.view.View
    #Click Element    xpath=(//android.view.View[@content-desc="All"])[2]/android.view.View
    #wait until page contains element    accessibility_id=$15.99 Save 20%with coupon Delivery Mon, Oct 16 Ships to Sweden
     #Set Appium Timeout    5sec
     #Click Element    accessibility_id=$15.99 Save 20%with coupon Delivery Mon, Oct 16 Ships to Sweden
     #wait until page contains element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.view.View[2]/android.view.View[2]
     #Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[3]/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[4]/android.view.View[2]/android.view.View[2]
     #wait until page contains element    ${Time-to-display}




