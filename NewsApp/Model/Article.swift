//
//  Article.swift
//  NewsApp
//
//  Created by Emre Tekin on 11.05.2022.
//

import Foundation

struct ArticleList: Decodable{
    let articles: [Article]
}
struct Article: Decodable {
    
    var author: String?
    var title: String?
    var description: String?
    
}
