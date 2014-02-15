#encoding: utf-8
namespace :db do
  desc "creates default pages -> about us and contact us"
  task :add_default_pages => :environment do
    Page.create(:title_en => "About us", :title_fa => "درباره ما") if Page.where(title_en:"About us").blank?
    Page.create(:title_en => "Contact us", :title_fa => "تماس با ما") if Page.where(title_en:"Contact us").blank?
  end

  desc "creates default users"
  task :create_default_users => :environment do
    User.create(name:"admin", password:"123qwe", email:"web.development@raush.ir") if User.where(name:"admin").blank?
  end

end

