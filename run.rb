require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!
  @states = []
  state1 = {:id => "CA", :name => "California"}
  state2 = {:id => "VA", :name => "Virgina"}
  state3 = {:id => "HI", :name => "Hawaii"}
  state4 = {:id => "NM", :name => "New Mexico"}
  state5 = {:id => "TX", :name => "Texas"}
  
  @states << state1
  @states << state2
  @states << state3
  @states << state4
  @states << state5
  
  @states.sort_by!{|x| x[:name]}
  
  erb :states, layout: :main
end
