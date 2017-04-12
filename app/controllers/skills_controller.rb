get '/skills' do
    @skills = Skill.all

    erb :skills
end

post '/new' do
    @skill = params[:skill]

    Skill.create(name: @skill["name"], description: @skill["description"])


    redirect '/'
end
