Rails.application.routes.draw do
	mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

	resources :about, only: :index
	resources :contact_us, only: [:index, :create]
	resources :blog, only: :index
	resources :website, only: :index
	resources :mobile, only: :index
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
