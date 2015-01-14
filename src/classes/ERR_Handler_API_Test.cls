public with sharing class ERR_Handler_API_Test {
	
	class UnmanagedException extends Exception {}
	
	public ERR_Handler_API_Test() {
		system.debug('****In constructor');
		npsp.ERR_Handler_API handler = new npsp.ERR_Handler_API();
		String s = handler.ErrorContext.TDTM.name();
		List<handler.ErrorContext> values = handler.ErrorContext.values();
		handler.processError(new UnmanagedException(), handler.ErrorContext.TDTM);
	}

}