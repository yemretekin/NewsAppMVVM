import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return articles.count
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article ) {
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: String? {
        return self.article.title
    }
    var author: String? {
        return self.article.author
    }
    var description: String? {
        return self.article.description
    }
   
}
