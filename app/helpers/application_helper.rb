module ApplicationHelper
  def main_marketing_site_address
    # Determine the subdomain based on whether the user is signed in
    marketing_site_url = "https://showaru.builtwith.rsynk.com"
    return marketing_site_url unless user_signed_in?

    authenticated_root_path
  end
end
