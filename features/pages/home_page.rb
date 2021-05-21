module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'

    element  :logo, '.logo'
    element  :btn_contact_us, 'a[@href="http://automationpractice.com/index.php?controller=contact"]'
    element  :btn_go_to_sign_in, '.login'
    element  :input_search_form, '#search_query_top'
    element  :button_search, '.button-search'
    element  :input_newsletter_footer_email, '#newsletter-input'
    element  :btn_newsletter_footer_register, 'button[@name="submitNewsletter"]'

    def execute_search(query)
      input_search_form.set(query)
      button_search.click
    end

    def click_logo
      logo.click
    end

    def click_sign_in
      btn_go_to_sign_in.click
    end

    def newsletter_register(query)
      input_newsletter_footer_email.set(query)
      btn_newsletter_footer_register.click
    end
  end
end
