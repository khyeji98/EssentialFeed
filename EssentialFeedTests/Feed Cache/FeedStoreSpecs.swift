//
//  FeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Joy on 2023/09/01.
//

protocol FeedStoreSpecs {
    func test_retrieve_deleiversEmptyOnEmptyCache()
    func test_retrieve_hasNoSideEffectsOnEmptyCache()
    func test_retrieve_deliversFoundValuesOnNonEmptyCache()
    func test_retrieve_hasNoSideEffectsOnNonEmptyCahce()
    
    func test_insert_overridesPreviouslyInseredCahceValues()
    
    func test_delete_hasNoSideEffectOnEmptyCache()
    func test_delete_emptiesPreviouslyInsertedCache()
    
    func test_storeSideEffects_runSerially()
}

protocol FailableRetrieveFeedStoreSpecs: FeedStoreSpecs {
    func test_retrieve_deliversFailureOnRetrievalError()
    func test_retrieve_hasNoSideEffectsOnFailure()
}

protocol FailableInsertFeedStoreSpecs: FeedStoreSpecs {
    func test_insert_hasNoSideEffectsOnInsertionError()
    func test_insert_deliversErrorOnInsertionError()
}

protocol FailableDeleteFeedStoreSpecs: FeedStoreSpecs {
    func test_delete_deliversErrorOnDeletionError()
}
