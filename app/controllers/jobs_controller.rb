get '/all-jobs' do
    @jobs = Job.all

    erb :all_jobs
end

get '/new-job' do
    erb :new_job
end

post '/new' do
    @job = params[:job]

    Job.create(name: @job["name"], description: @job["description"], function: @job["function"], start_time: @job["start_time"], end_time: @job["end_time"])


    redirect '/'
end
