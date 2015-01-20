public with sharing class ERR_Handler_API_Test {
	
	public List<npsp.ERR_Handler_API.Context> errValues { public get; set; }
	
	class CustomException extends Exception {}
	
	public ERR_Handler_API_Test() {
		String s = npsp.ERR_Handler_API.Context.TDTM.name();
		errValues = npsp.ERR_Handler_API.Context.values();
	}
	
	/* Due to what seems to be a platform bug, a global enum in a global class is not accessible outside the package.
	public PageReference processError() {
        npsp.ERR_Handler_API.processError(new CustomException('Testing'), npsp.ERR_Handler_API.Context.TDTM.name());
        return null;
	}*/

    public PageReference processCustomError() {
        npsp.ERR_Handler_API.processError(new CustomException('Testing'), 'MyContext');
        return null;
    }
}