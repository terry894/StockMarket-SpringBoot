package com.stockmarket.www.service;

public interface AnalysisService {
    //get stockName by koreaStocks DB
    String getStockName(String codeNum);
    
	//캡처에 전달할 data crawling
	String captureDataCrawling(String codeNum, int memberId);
}
