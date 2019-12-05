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

When(/^user is on "([^"]*)" page$/) do |page|

  case page.downcase
    when "procurements"
      sign_in_page()
    when 'do you work for central government'
      sign_in_page()
    when 'will the fees be under £20,000 per matter'
      simple_rbtn_page('Yes')
    when 'select the lot you need'
      simple_rbtn_page('No')
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
    else
      clk_on(page)
  end
end
