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
  click_on (obj)
end

Then(/^user checks "([^"]*)"$/) do |obj|
  find_by_id(obj, visible:false).click

  #find(:css,"#C_all", visible: false).click
end

Then(/^user enters "([^"]*)" in "([^"]*)"$/) do |value, field|
  if value.downcase == 'datetime'
    $value = (Time.now).to_s
    $value = $value.gsub!(' ','').gsub!('+','').gsub(':','').gsub!('-','')

  end
  fill_in(field, with:$value)
end

When(/^user is on "([^"]*)" page$/) do |page1|

  $value = (Time.now).to_s
  $value = $value.gsub!(' ','').gsub!('+','').gsub(':','').gsub!('-','')

  case page1.downcase
    when 'datetime'
      # ToDo
    when 'procurements'
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
    when 'create single building page 2'
      fill_in('fm-building-name', with: 'Access_' + $value)
      fill_in('fm-bm-postcode', with: 'WC2A 1AA')
      #find_by_id('fm-cant-find-address-link', visible:false).click # element not interactable
      #find_by_id('fm-bm-postcode').send_keys(:tab,:tab,:enter) # FM-733
      find_by_id('fm-bm-postcode').send_keys(:tab,:enter)
      find_by_id('fm-find-address-results').click
      find_by_id('fm-find-address-results').send_keys(:down,:enter)
      find_by_id('fm-bm-save-and-continue').click
      find_by_id('fm-bm-internal-square-area')
      find_by_id('fm-bm-save-and-continue').click
    when 'create single building page 3'
      fill_in('fm-bm-internal-square-area', with: '500')
      #find_link('Skip this step').send_keys(:enter)
      #find(:css,'#fm-bm-building-type-form > div > details > summary > span').click
      find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click.click
      find(:css,'#fm-bm-building-type-form > div > details > summary > span').click
      find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click
    when 'create single building page 4'
      choose('Heritage-Buildings', visible: false)
      find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click
      find(:xpath,'//*[@id="fm-bm-save-and-continue"]').click
      sleep(9)
    when 'checks'
    else
      clk_on(page1)
  end
end

And(/^sleep "([^"]*)"$/) do |duration|
  sleep(duration.to_i)
end
