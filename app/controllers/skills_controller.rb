get '/skills' do
    @skills = Skill.all

    erb :skills
end

post '/new' do
    @skill = params[:skill]

    Skill.create(name: @skill["name"], description: @skill["description"])


    redirect '/'
end

get '/all-skills' do
    @skills = Skill.all

    erb :all_skills
end
