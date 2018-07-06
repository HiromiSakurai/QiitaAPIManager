//
//  QiitaClient.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/07/05.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation
import RxSwift

public protocol QiitaClientProtocol {
    /// Method which returns single trait of RxSwift.
    /// To get array of 'Article', subscribe this method.
    ///
    /// - Parameters:
    ///   - searchQuery: Query text for search.
    ///   - page: For pagination (that return 20 articles per page).
    /// - Returns: Single<[Article]>
    func fetchArticles(searchQuery: String, page: Int) -> Single<[Article]>

    /// Method which returns single trait of RxSwift.
    /// To get item of 'Article', subscribe this method.
    ///
    /// - Parameter id: ID of article you want.
    /// - Returns: Single<Article>
    func getArticle(with id: String) -> Single<Article>
}

public class QiitaClient: QiitaClientProtocol {

    private let provider: APIRequestProvider = APIRequestProvider.shared

    public func fetchArticles(searchQuery: String, page: Int) -> Single<[Article]> {
        return provider.request(SearchRequest(searchQuery: searchQuery, page: page))
    }

    public func getArticle(with id: String) -> Single<Article> {
        return provider.request(ItemDetailRequest(itemId: id))
    }
}
