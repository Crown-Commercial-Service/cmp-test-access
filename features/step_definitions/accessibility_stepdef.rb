
Given(/^the user is on the "([^"]*)" page$/) do |app|

  case app
    when "FM Home"
      $url = $envFM
    when "LS Home"
      $url = $envLS
    when "MC Home"
      $url = $envMC
    else
      puts "Application Not Found: #{app}"
      # exit
  end
  puts "Application Found: #{$url}"
  visit $url
end


When(/^user clicks "([^"]*)"$/) do |obj|
  if ((obj == 'Start now' || obj == 'Sign in with Cognito') && ($url.include?('marketplace') && ($url.include?('legal-services') || $url.include?('management-consultancy'))))
    puts "Skip: #{obj}"
  else
    if (obj == 'commit')
      click_on 'Continue'
    elsif (obj == 'commit2')
      find_by_id('Continue', match: :first).send_keys(:enter)
    else
      click_on obj
    end
  end
  #sleep(3000)

end

When(/^user clicks link "([^"]*)"$/) do |func|

  case func.downcase
      when "payment method"
          find_link('Answer question', match: :first).send_keys(:enter)
      when "invoicing contact details"
          find_link('Answer question', match: :first).send_keys(:tab, :enter)
      when "authorised representative details"
          find_link('Answer question', match: :first).send_keys(:tab, :tab, :enter)
      when "notices contact details"
          find_link('Answer question', match: :first).send_keys(:tab, :tab, :tab, :enter)
      when "security policy document"
          find_link('Answer question', match: :first).send_keys(:tab, :tab, :tab, :tab, :enter)
      when "local government pension scheme"
          find_link('Answer question', match: :first).send_keys(:tab, :tab, :tab, :tab, :tab, :enter)
      when "buyer-details-find-address-btn"
          find_by_id(func, visible:false).click
      when "buyer-details-postcode-lookup-results"
          find_by_id(func).click
      when "duplicate pension"
          fld = "facilities_management_procurement_procurement_pension_funds_attributes_0_name"
          find_by_id(fld, match: :first).send_keys("pen")
          find_by_id(fld, match: :first).send_keys(:tab,1)
          click_on "Add another pension fund (98 remaining)"
          find_by_id(fld, match: :first).send_keys(:tab, :tab, :tab, :tab,"Pen")
          find_by_id(fld, match: :first).send_keys(:tab, :tab, :tab, :tab, :tab,2)
          click_on "Add another pension fund (97 remaining)"
          find_by_id(fld, match: :first).send_keys(:tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, "PEn")
          find_by_id(fld, match: :first).send_keys(:tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab,3)
          click_on "Add another pension fund (96 remaining)"
          find_by_id(fld, match: :first).send_keys(:tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab,"PEN")
          find_by_id(fld, match: :first).send_keys(:tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab, :tab,4)
      when "expand all contract details"
          find(:css, 'tbody > tr:nth-child(3) > td.govuk-link.govuk-table__cell.govuk-link--no-visited-state > details > summary > span').click
          find(:css,'tr:nth-child(4) > td.govuk-link.govuk-table__cell.govuk-link--no-visited-state > details > summary > span' ).click
          find(:css,'tr:nth-child(5) > td.govuk-link.govuk-table__cell.govuk-link--no-visited-state > details > summary > span' ).click
          find(:css,'tr:nth-child(7) > td.govuk-table__cell.govuk-link.govuk-link--no-visited-state > details > summary > span').click
    when "review and generate documents"
          find(:css,'div:nth-child(5) > div > table > tbody > tr:nth-child(7) > td > details > summary > span').click
          find(:css,'div:nth-child(5) > div > table > tbody > tr:nth-child(8) > td > details > summary > span').click
          find(:css,'div:nth-child(5) > div > table > tbody > tr:nth-child(10) > td > div > details > summary > span').click
          find(:css,'div:nth-child(6) > div > table > tbody > tr:nth-child(3) > td.govuk-link.govuk-table__cell.govuk-link--no-visited-state > details > summary > span').click
          find(:css,'div:nth-child(6) > div > table > tbody > tr:nth-child(4) > td.govuk-link.govuk-table__cell.govuk-link--no-visited-state > details > summary > span').click
          #find(:css,'div:nth-child(6) > div > table > tbody > tr:nth-child(5) > td.govuk-link.govuk-table__cell.govuk-link--no-visited-state > details > summary > span').click

    else
          puts "Unknown #{func}"
  end

end

When(/^user chooses "([^"]*)"$/) do |obj|
  choose obj, visible: false
end

Then(/^user checks "([^"]*)"$/) do |obj|
  find_by_id(obj, visible: false).click

  #find(:css,"#C_all", visible: false).click
end

Then(/^user enters "([^"]*)" in "([^"]*)"$/) do |value, field|
  if value.downcase == 'datetime'
    $value = (Time.now).to_s
    $value = $value.gsub!(' ','').gsub!('+','').gsub(':','').gsub!('-','')
  else
    $value = value
  end
  fill_in(field, with:$value)
end

Then(/^user is on the "([^"]*)" page$/) do |text|
  expect(page).to have_content(text)
end

When(/^user is on "([^"]*)" page$/) do |page1|

  $value = (Time.now).to_s
  $value = $value.gsub!(' ','').gsub!('+','').gsub(':','').gsub!('-','')

  case page1.downcase
    when 'datetime'
      # ToDo
    when 'procurements', 'dashboard'
      sign_in_page()
    when 'manage buildings'
      click_on 'Manage buildings'
    when 'do you work for central government'
      sign_in_page()
    when 'will the fees be under £20,000 per matter'
      simple_rbtn_page('Yes')
    when 'select the lot you need'
      simple_rbtn_page('No')
    when 'select the lot you need error'
      click_on 'continue'
    when 'select the legal services you need'
      other_rbtn_page('under_threshold_yes')
    when 'select the legal services you need 2'
      find_by_id('lot_1', visible:false).click
      click_on 'Continue'
    when 'select the jurisdiction you need'
      find_by_id('lot_2', visible:false).click
      click_on 'Continue'
    when 'confirm you need management consultancy'
      sign_in_page()
    when 'select the services you need'
      find("label", text: 'Lot 3 - Audit').click
      click_on 'Continue'
    when 'select the regions where you need legal services'
      find("label", text: 'Litigation / dispute resolution').click
      find(:xpath,"//*[@id=\"ccs-dynamic-accordian\"]/form/section[1]/input[4]").click
    when 'select the regions you want the consultants to work'
      find("label", text: 'Governance').click
      #accordion-default > div > div > div:nth-child(4) > label
      click_on 'Continue'
    when 'supplier results'
      click_on 'Open all'
      find("label", text: 'Tees Valley and Durham').click
      click_on 'Continue'
    when 'supplier results 2'
      find("label", text: 'North East').click
      click_on 'Continue'
    when 'download the supplier list'
      click_on 'Download the supplier list'
    when 'supplier'
      click_on 'BDO LLP'
    when 'supplier 2'
      click_on 'Acuity Legal Limited'
    when 'start a new procurement open all'
      #click_on 'Open all'
    when 'contract name'
      find_link('Answer question', match: :first).click
    when 'estimated annual cost'
      find_link('Answer question', match: :first).send_keys(:tab,:enter)
    when 'tupe'
      find_link('Answer question', match: :first).send_keys(:tab,:tab,:enter)
    when 'contract period'
      find_link('Answer question', match: :first).send_keys(:tab,:tab,:tab,:enter)
    when 'results'
      find(:css, 'details.govuk-details.govuk-\!-width-two-thirds.govuk-\!-margin-bottom-6 > summary > span').click
      find(:css, 'details:nth-child(62) > summary > span').click
      find(:css, 'details:nth-child(63) > summary > span').click
      find(:css, 'div:nth-child(1) > details > summary > span').click
      find(:css, 'div:nth-child(2) > details > summary > span').click
    when 'create single building'
      find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click
    when 'add building add address'
      fill_in('facilities_management_building_building_name', with: 'Access_' + $value)
      fill_in('postcode_entry', with: 'WC2A 1AA')
      #find_by_id('fm-cant-find-address-link', visible:false).click # element not interactable
      #find_by_id('fm-bm-postcode').send_keys(:tab,:tab,:enter) # FM-733
      #find_by_id('fm-bm-postcode').send_keys(:tab,:enter)
      #find_by_id('fm-find-address-results').click
      click_on 'Find address'
      click_on 'add_address'
      click_on 'commit'
    #find_by_id('fm-find-address-results').send_keys(:down,:enter)
    #find_by_id('fm-bm-save-and-continue').click
    #find_by_id('fm-bm-internal-square-area')
    #find_by_id('fm-bm-save-and-continue').click
    when 'add building page 2'
      fill_in('facilities_management_building_building_name', with: 'Access_' + $value)
      fill_in('postcode_entry', with: 'WC2A 1AA')
      #find_by_id('fm-cant-find-address-link', visible:false).click # element not interactable
      #find_by_id('fm-bm-postcode').send_keys(:tab,:tab,:enter) # FM-733
      #find_by_id('fm-bm-postcode').send_keys(:tab,:enter)
      #find_by_id('fm-find-address-results').click
      click_on 'Find address'
      find_by_id('results-container').send_keys(:down,:enter,:enter)
      click_on 'commit'
      click_on 'commit'
    #find_by_id('fm-bm-save-and-continue').click
    #find_by_id('fm-bm-internal-square-area')
    #find_by_id('fm-bm-save-and-continue').click
    when 'add building page 3'
      #find_link('Skip this step').send_keys(:enter)
      #find(:css,'#fm-bm-building-type-form > div > details > summary > span').click
      ##find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click.click
      ##find(:css,'#fm-bm-building-type-form > div > details > summary > span').click
      ##find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click
      click_on 'Skip this step'
      click_on 'commit'
      #find_link('You must select a buiding type or describe your own').send_keys(:enter, :tab, :tab, :enter)
      #choose('Other', visible: false)
      #click_on 'commit'
    when 'add building page 4'
      #choose('Heritage-Buildings', visible: false)
      #find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click
      #find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click
      click_on 'Skip this step'
      #click_on 'save_and_return'
      #choose('Other', visible: false)
      #sleep 3000
    when 'fm start'
      find(:css,'#main-content > div.govuk-body > div:nth-child(2) > div.govuk-grid-column-one-third > details:nth-child(4) > summary > span').click
      find(:css,'#main-content > div.govuk-body > div:nth-child(2) > div.govuk-grid-column-one-third > details:nth-child(5) > summary > span').click
      find(:css,'#main-content > div.govuk-body > div:nth-child(2) > div.govuk-grid-column-one-third > details:nth-child(6) > summary > span').click
    when 'contract summary'
      find(:css,'#edit_facilities_management_procurement_supplier_44e78f96-40da-41a6-af9b-98bb791f575c > div.govuk-\!-width-two-thirds.govuk-\!-margin-bottom-6 > details > summary > span').click
      find(:css,'#edit_facilities_management_procurement_supplier_44e78f96-40da-41a6-af9b-98bb791f575c > table:nth-child(8) > tbody > tr:nth-child(8) > td > details > summary > span').click
      find(:css,'#edit_facilities_management_procurement_supplier_44e78f96-40da-41a6-af9b-98bb791f575c > table:nth-child(8) > tbody > tr:nth-child(9) > td > details > summary > span').click
      find(:css,'#edit_facilities_management_procurement_supplier_44e78f96-40da-41a6-af9b-98bb791f575c > table:nth-child(8) > tbody > tr:nth-child(11) > td > div > details > summary > span').click
    when 'contract summary declined'
      find(:css,'#edit_facilities_management_procurement_supplier_aef59935-af41-47d8-9368-b71310d5ae3a > div.govuk-\!-width-two-thirds.govuk-\!-margin-bottom-6 > details > summary > span').click
      find(:css,'#edit_facilities_management_procurement_supplier_aef59935-af41-47d8-9368-b71310d5ae3a > div.govuk-\!-margin-bottom-6.govuk-\!-width-three-quarters > details > summary > span').click
      find(:css,'#edit_facilities_management_procurement_supplier_aef59935-af41-47d8-9368-b71310d5ae3a > table:nth-child(9) > tbody > tr:nth-child(8) > td > details > summary > span').click.click
      find(:css,'#edit_facilities_management_procurement_supplier_aef59935-af41-47d8-9368-b71310d5ae3a > table:nth-child(9) > tbody > tr:nth-child(8) > td > details > summary > span').click
      find(:css,'#edit_facilities_management_procurement_supplier_aef59935-af41-47d8-9368-b71310d5ae3a > table:nth-child(9) > tbody > tr:nth-child(11) > td > div > details > summary > span').click
    when 'offer to next supplier'
      find(:css,'#edit_facilities_management_procurement_supplier_aef59935-af41-47d8-9368-b71310d5ae3a > div:nth-child(6) > details > summary > span').click
    when 'further competition'
      find(:css,'#main-content > div:nth-child(4) > div:nth-child(3) > details > summary > span').click
      click_on 'Show all'
      find(:css,'#main-content > div.govuk-grid-row > div.govuk-grid-column-two-thirds.govuk-\!-padding-bottom-3 > details > summary > span').click
    when 'copy procurements'
      click_on 'Make a copy of your requirements'
      click_on 'Save and continue'
    when 'sign in error'
      click_on 'Sign in'
    when 'reset password'
      click_on "I've forgotten my password"
    when 'reset password error'
      click_on "I've forgotten my password"
      click_on 'Send reset email'
    when 'received offer'
      find(:css,'#main-content > div:nth-child(8) > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(8) > td > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(9) > td > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(11) > td > div > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div.govuk-\!-width-three-quarters.govuk-\!-font-size-19 > dl > table > tbody > tr:nth-child(2) > td > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div:nth-child(7) > details:nth-child(2) > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div:nth-child(7) > div > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div:nth-child(7) > details:nth-child(4) > summary > span').click
    when 'respond to contract offer'
      #find(:xpath,'//*[@id="main-content"]/div[6]/div[4]/a[1]/text()').click
      click_on 'Respond to this offer'
      click_on 'commit'
    when 'accepted offer'
      find(:css,'#main-content > div:nth-child(8) > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(8) > td > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(11) > td > div:nth-child(1) > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(11) > td > div:nth-child(2) > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div.govuk-\!-width-three-quarters.govuk-\!-font-size-19 > dl > table > tbody > tr:nth-child(2) > td > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div:nth-child(6) > details:nth-child(3) > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div:nth-child(6) > div.govuk-\!-margin-bottom-4.govuk-\!-margin-top-4 > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div:nth-child(6) > div:nth-child(5) > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div:nth-child(6) > details:nth-child(6) > summary > span').click
    when "contract accepted signed"
      find(:css,'#main-content > div:nth-child(8) > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(8) > td > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(9) > td > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > table:nth-child(1) > tbody > tr:nth-child(11) > td > div > details > summary > span').click
      find(:css,'#main-content > div.govuk-\!-font-size-19 > div.govuk-\!-width-three-quarters.govuk-\!-font-size-19 > dl > table > tbody > tr:nth-child(2) > td > details > summary > span').click
    when 'contract declined'
      find(:css,'#main-content > div.govuk-\!-width-two-thirds.govuk-\!-margin-bottom-6 > details > summary > span').click
    when 'checks'
      #
    else
      clk_on(page1)
  end
end

And(/^sleep "([^"]*)"$/) do |duration|
  sleep(duration.to_i)
end
