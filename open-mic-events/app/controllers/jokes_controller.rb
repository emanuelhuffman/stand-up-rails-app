class JokesController < ApplicationController
  def index
    jokeList = ['What do kids play when their mom is using the phone? Bored games.', 'What do you call an ant who fights crime? A vigilANTe!', 'Why are snails slow? Because they’re carrying a house on their back.', 'What’s the smartest insect? A spelling bee!','What does a storm cloud wear under his raincoat? Thunderwear.', 'What is fast, loud and crunchy? A rocket chip.', 'How does the ocean say hi? It waves!', 'What do you call a couple of chimpanzees sharing an Amazon account? PRIME-mates.', 'Why did the teddy bear say no to dessert? Because she was stuffed.', 'Why did the soccer player take so long to eat dinner? Because he thought he couldn’t use his hands.', 'Name the kind of tree you can hold in your hand? A palm tree!', 'What do birds give out on Halloween? Tweets.', 'What has ears but cannot hear? A cornfield.', 'What’s a cat’s favorite dessert? A bowl full of mice-cream.', 'Where did the music teacher leave her keys? In the piano!', 'What did the policeman say to his hungry stomach? “Freeze. You’re under a vest.”', 'What did the left eye say to the right eye? Between us, something smells!', 'What do you call a guy who’s really loud? Mike.', 'Why do birds fly south in the winter? It’s faster than walking!', 'Why did the student eat his homework? Because the teacher told him it was a piece of cake.', 'What social event do spiders love to attend? Webbings.']

    randJokesIndices = []
    randJokes = Set[]

    i = 0
    while i < 8 do
      randJokesIndices.append((0..20).to_a.sample)
      i += 1
    end

    j = 0
    while j < 8 do 
      randJokes.add(jokeList[randJokesIndices[j]])
      j += 1
    end

    @jokes = randJokes
  end
end
