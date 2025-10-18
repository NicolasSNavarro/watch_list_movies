require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "create a movie" do
    it "should create a movie" do
      movie = Movie.new(title: "Pokemon", overview: "Son mascotas que se golpean", poster_url: "https://images.pexels.com/photos/1716861/pexels-photo-1716861.jpeg?_gl=1*140te19*_ga*MjMzNTk0ODE1LjE3NjAxMzY4NzU.*_ga_8JE65Q40S6*czE3NjA4MjI1NDgkbzMkZzEkdDE3NjA4MjI2MDEkajckbDAkaDA.", rating: 9.9)
      expect(movie.valid?).to eq(true)
    end
    describe "Validations" do
      it "Broke is no has a title" do
        movie = Movie.new(overview: "Nueva pelicula")
        expect(movie.valid?).to eq(false)
      end
    end
  end
end
