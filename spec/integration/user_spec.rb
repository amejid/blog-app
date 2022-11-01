require 'rails_helper'

RSpec.describe 'Users', type: :system, js: true do
  describe 'index page' do
    before(:example) do
      @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
                          posts_counter: 0)
      visit users_path
    end

    it 'renders the list of users' do
      expect(page).to have_content(@user.name)
    end

    it "renders user's profile picture" do
      find("img[src='https://unsplash.com/photos/F_-0BxGuVvo']")
    end

    it 'renders the number of posts for each users' do
      expect(page).to have_content(@user.posts_counter)
    end

    it "redirects to the user's show page" do
      click_link @user.name
      expect(page).to have_current_path(user_path(@user))
    end
  end
end
