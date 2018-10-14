#Currently it doesn't work: it gives the record with 10 (belonging to 'someone') points when it should give the record with 50 points (belonging to 'someone else').

records = [
  {name: 'someone', points: 10, notes: ["this is a note", "this is too"]},
  {name: 'someone else', points: 50, notes: ['wow']},
  {name: 'another person', points: 30, notes: []}
]

def find_record_with_most_points(records)
  return records.max_by(1) { |record| :points }
end

puts find_record_with_most_points(records)

# If the n argument is given, maximum n elements are returned as an array.
# These n elements are sorted by the VALUE from the GIVEN block (=> :points), in descending order.
