get '/skills' do
    @skills = Skill.all

    erb :skills
end
