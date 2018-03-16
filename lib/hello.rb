def i_must_have_truth(value)
  raise TypeError, 'You must give me truth' if value == false
end

i_must_have_truth false