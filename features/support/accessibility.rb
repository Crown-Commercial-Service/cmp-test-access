def sign_in_page()
  fill_in('email', with: $user)
  fill_in('password', with: $p)
  click_on "Sign in"
end

def simple_rbtn_page(opt)
  puts "opt = {opt}"
  find("label", text: opt.capitalize).click
  click_on 'Continue'
end

def other_rbtn_page(opt)
  find_by_id(opt,visible: false).click
  click_on 'Continue'
end

#def start_a_new_procurement_page()
#  clk_on (__method__)
#end

def clk_on(obj)
  click_on obj.to_s.gsub('_page','').gsub('_',' ').capitalize
  #click_on obj
end
