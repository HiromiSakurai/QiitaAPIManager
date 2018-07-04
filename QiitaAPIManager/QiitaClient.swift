//
//  QiitaClient.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/07/05.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation
import RxSwift

public class QiitaClient {

    let provider: APIRequestProvider = APIRequestProvider.shared

    public func fetchArticles(searchQuery: String, page: Int) -> Single<[Article]> {
        return provider.request(SearchRequest(searchQuery: searchQuery, page: page))
    }

    public func getArticle(with id: String) -> Single<Article> {
        return provider.request(ItemDetailRequest(itemId: id))
    }
}
