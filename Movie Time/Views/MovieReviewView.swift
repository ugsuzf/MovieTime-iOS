//
//  MovieReviewView.swift
//  Movie Time
//
//  Created by Furkan Kaan Ugsuz on 02/11/2021.
//

import SwiftUI

struct MovieReviewView : View {
    
    var movie : Movie
    
    @ObservedObject var movieReviewManager : MovieReviewManager
    
    init (movie : Movie ) {
        self.movie = movie
        self.movieReviewManager = MovieReviewManager(movie: movie)
        
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = .clear
        
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment : .top) {
            Color.black.opacity(0.7)
            
            List {
                ForEach(movieReviewManager.reviews) { review in
                    VStack {
                        Text(review.author ?? "")
                            .font(.title)
                            .bold()
                        
                        Text(review.content ?? "")
                            .font(.body)
                            .lineLimit(nil)
                    }
                    .foregroundColor(.white)
                    .listRowBackground(Color.clear)
                    
                }
            }
            .onAppear{
                movieReviewManager.getMovieReviews()
            }
            .padding()
        }.edgesIgnoringSafeArea(.all)
    }
}
