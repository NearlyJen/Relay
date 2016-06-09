get '/training_sets/:id' do
  @training_set = TrainingSet.find(params[:id])
  @intervals = @training_set.intervals
  @athletes = @training_set.athletes
  erb :'/training_sets/show'
end
