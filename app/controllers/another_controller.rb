class AnotherController < ApplicationController

    before_action :random_catfact, only: [:cat]
    
    def cat
      @page_title = 'Random cat fact'
    end
    
    private
    def random_catfact
      @catfact = ["The oldest known pet cat existed 9,500 years ago",
        "Cats spend 70% of their lives sleeping",
        "A cat was the Mayor of an Alaskan town for 20 years",
        "The record for the longest cat ever is 48.5 inches",
        "The richest cat in the world had £7 million",
        "Cats walk like camels and giraffes",
        "Isaac Newton invented the cat door",
        "In 1963 a cat went to space",
        "Ancient Egyptians would shave off their eyebrows when their cats died",
        "House cats share 95.6% of their genetic makeup with tigers",
        "A house cat can reach speeds of up to 30mph",
        "The oldest cat in the world was 38 years old!",
        "The record for the loudest purr is 67.8db(A)",
        "Didga the cat can perform 24 tricks in one minute"][rand(14)]
    end
    private

  end