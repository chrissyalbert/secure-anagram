get '/' do
    erb :index
end

post '/' do
    #handle form submission
    @word = params[:word]
    redirect "/anagrams/#{@word}"
end

get '/anagrams/:word' do
#to redirect the user to from the post request
    @word = params[:word]
    @anagrams = Word.find_anagrams(@word)
    erb :show
end