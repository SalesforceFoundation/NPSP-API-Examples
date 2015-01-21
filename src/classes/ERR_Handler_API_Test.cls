public with sharing class ERR_Handler_API_Test {
	
	/** @description Property to populate with the NPSP error context values. **/
	public List<npsp.ERR_Handler_API.Context> errValues { public get; set; }
	
	/** @description Custom exception to process. **/
	class CustomException extends Exception {}
	
	/** @description Constructor that populates the context values property. **/
	public ERR_Handler_API_Test() {
		errValues = npsp.ERR_Handler_API.Context.values();
	}
	
	/** @description Action method that processes a custom exception and passes the name to a standard NPSP error context. **/
	public PageReference ProcessError() {
        npsp.ERR_Handler_API.processError(new CustomException('Testing'), npsp.ERR_Handler_API.Context.TDTM.name());
        return null;
	}
	
    /** @description Action method that processes a custom exception and passes a custom context. **/
    public PageReference ProcessCustomError() {
        npsp.ERR_Handler_API.processError(new CustomException('Testing'), 'MyContext');
        return null;
    }
}