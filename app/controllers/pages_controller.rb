class PagesController < ApplicationController

  before_action :random_dogfact, only: [:dog]

    def home
        @page_title = 'Home Page'
      end
    def about
      @page_title = 'About us'
    end
    def dog
      @page_title = 'Dog page'
    end
    def show
      render template: "pages/#{params[:page]}"
    end

    def random_dogfact
      @dogfact = ["Dogs noses are wet to help absorb scent chemicals",
        "Newfoundlands are amazing lifeguards",
        "The Beatles song ‘A Day in the Life’ has a frequency only dogs can hear",
        "Three dogs survived the Titanic sinking",
        "A Bloodhound’s sense of smell can be used as evidence in court",
        "The tallest dog in the world is 44 inches tall",
        "Basenji dogs don’t bark, they yodel",
        "A Greyhound could beat a Cheetah in a long distance race",
        "A blind man and his guide dog hiked the Appalachian Trail",
        "The Ewoks in Star Wars were based on a dog",
        "30% of Dalmatians are deaf in one ear",
        "The Saluki is the oldest dog breed",
        "Chow Chows and Shar-Peis have black tongues",
        "Dogs have three eyelids",
        "The African Hunting dog is the most successful hunter in the world"][rand(15)]
    end

  end