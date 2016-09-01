#hash of data with arrays

Mountains = {
  copper: {
    elevation: 12313,
    lifts: {
      speed: "fast",
      amount: 23,
    },
    user_reviews: [
      "Love the lay out of the runs",
      "Beautiful area",
      "Great value",
    ],
  },

  breckenridge: {
    elevation: 12998,
    lifts: {
      speed: "fast",
      amount: 34,
    },
    user_reviews: [ 
      "Great Snow", 
      "Town is Awesome", 
      "Daily lift ticket is way overpriced",
    ],
  },

  keystone: {
    elevation: 12408,
    lifts: {
      speed: "fast",
      amount: 20,
    },
    user_reviews: [
      "Favorite place to board in Colorado!",
      "Family friendly.",
      "Daily pass is to expansive",
    ],
  },
}

#printing elevation of keystone

p Mountains[:keystone][:elevation]

#print data about brecks lifts

p Mountains[:breckenridge][:lifts]

#print user reviews of copper

p Mountains[:copper][:user_reviews]

#add a review to breckenridge user reviews

p Mountains[:breckenridge][:user_reviews].push("How much longer until snow drops!!!")

#remove previous review from hash index

Mountains[:breckenridge][:user_reviews].delete_at(3)
p Mountains[:breckenridge][:user_reviews]