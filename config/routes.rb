Rails.application.routes.draw do
	
	resources :about, only: :index
	resources :contact_us, only: :index
	resources :blog, only: :index
	
	resources :website, only: [:index] do
		collection do 
			get :design_and_development
			get :seo_and_analytics
			get :media_design_assets
			get :strategic_marketing
		end		
	end

	resources :mobile, only: [:index] do
		collection do
			get :mobile_app_design
			get :ios_and_android_development
			get :app_apis_and_analytics
		end
	end

	resources :software, only: :index

	resources :case_studies, only: [:index] do
		collection do
			get :titan_group
			get :chicasa_design
			get :lieber_group
			get :bottega_construction
			get :cooper_apps
			get :perfectone
			get :miss_bahamas
			get :cooper_app
			get :movi_group
			get :equity_bank
			get :equity_bahamas
			get :equity_investment
		end
	end
	
  root to: 'home#index'
  get '/:page' => 'home#index'
  get 'sitemap.xml', :to => 'sitemap#index', :defaults => {:format => 'xml'}
end
