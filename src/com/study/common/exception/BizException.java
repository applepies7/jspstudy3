package com.study.common.exception;

public class BizException extends RuntimeException {

	public BizException() {
		super();
		
	}

	public BizException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		
	}

	public BizException(String message, Throwable cause) {
		super(message, cause);
		
	}

	public BizException(String message) {
		super(message);
		
	}

	public BizException(Throwable cause) {
		super(cause);
		
	}

	private static final long serialVersionUID = 5489086564019383952L;

}
