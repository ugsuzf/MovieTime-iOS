//
//  MovieCell.swift
//  Movie Time
//
//  Created by Furkan Kaan Ugsuz on 02/11/2021.
//

import SwiftUI

struct MovieCell : View {
    var movie : Movie
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            
            moviePoster
            
            VStack(alignment: .leading, spacing: 0) {
                
                movieTitle
                
                HStack{
                   
                    movieVotes
                    
                    movieRelaseDate
                }
                
                movieOverview
                
            }

        }
    }
    
    private var moviePoster : some View {
        AsyncImage(url: URL(string: movie.posterPath)!) {
            Rectangle().foregroundColor(Color.gray.opacity(0.4))
        
        } image: { (img) -> Image in
                Image(uiImage: img)
                .resizable()
        }
        .frame(width: 100, height: 160)
        .animation(.easeInOut, value: 0.5)
        .transition(.opacity)
        .scaledToFill()
        .cornerRadius(15)
        .shadow(radius: 15)
    }
    
    
    private var movieTitle : some View {
        Text(movie.titleWithLanguage)
            .font(.system(size: 15))
            .bold()
            .foregroundColor(.blue)
    }
    private var movieVotes : some View {
        ZStack {
            Circle()
                .trim(from: 0, to: CGFloat(movie.voteAverage))
                .stroke(Color.orange, lineWidth: 4)
                .frame(width:50)
                .rotationEffect(.degrees(-90))
            Circle()
                .trim(from: 0, to: 1)
                .stroke(Color.orange.opacity(0.2), lineWidth: 4)
                .frame(width:50)
                .rotationEffect(.degrees(-90))
            Text(String.init(format: "%0.2f", movie.vote_average ?? 0.0))
                .foregroundColor(.orange)
                .font(.subheadline)
        }.frame(height : 80)
    }
    
    private var movieRelaseDate : some View {
        Text(movie.release_date ?? "")
            .foregroundColor(.black)
            .font(.subheadline)
    }
    
    private var movieOverview : some View {
        Text(movie.overview ?? "")
            .font(.body)
            .foregroundColor(Color.gray)
    }
}
