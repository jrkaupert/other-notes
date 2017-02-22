

Given(/^I login to the BSG site$/) do
  visit '/'
  @original_window = current_window
  fill_in 'login-acct-name', with: 'kaupjr01@students.ipfw.edu'
  fill_in 'login-passwd', with: 'bsgKaupert'

  find('button', text: 'Login').click
  sleep 3
end

Given(/^I open the Decisions\/Reports window$/) do

  decisions_button = find('a', text: 'Go to Decisions/Reports')
  @decisions_window = window_opened_by { decisions_button.click }

  switch_to_window(@decisions_window)
end

Given(/^I navigate to the Export data screen$/) do
  export_screen = find('a', text: 'Export Options & Data Reset')
  export_screen.click
end

When(/^I download FIR data for all years$/) do
  sleep 2
  @years_dropdowns = find_all('button', text: $current_year)
  @years_dropdowns[0].click

  years = find_all('span', text: 'Year')

  @available_years = []
  years.each do |year|
    @available_years.push(year.text) if year.text =~ /^Year 1[0-9]$/
  end

  @available_years.each do |year|
    @years_dropdowns[0].click
    find('span', text: year).click
    find('button', text: 'Export FIR').click
  end
end

When(/^I download CIR data$/) do
  find('button', text: 'Export CIR').click
end

When(/^I download COR data$/) do
  find('button', text: 'Export COR').click
end
