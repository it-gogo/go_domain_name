package com.go.core.Interceptor;

import java.io.IOException;
import java.net.ConnectException;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;

import com.go.common.util.LogUtil;
import com.go.exception.ALLException;
import com.go.exception.ALLRuntimeException;
import com.go.exception.DaoException;
import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 陈永楠
 * 日期：2014-03-18
 * 功能：自定义异常拦截器
 * 
 * @author Administrator
 *
 */
public class ExceptionInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    
	@Override
	public String intercept(ActionInvocation act) throws Exception {
		String result = "";
		try{
			result = act.invoke();
		}catch(DataAccessException  se){
			LogUtil.error(act.getAction().getClass(),"数据库操作错误！",se);
			throw new DaoException(se);
		}catch(NullPointerException ne){
			LogUtil.error(act.getClass(), "空指针错误");
			throw new ALLRuntimeException(ne);
		}catch(ConnectException ex){
			LogUtil.error(act.getAction().getClass(), "SQLSERVER数据库连接！");
			throw new ALLException(ex);  
	    }catch(SQLServerException ex){
	    	LogUtil.error(act.getAction().getClass(), "SQLSERVER数据库连接异常！");
			throw new ALLException(ex);  
	    }catch(IOException ioe){
			LogUtil.error(act.getAction().getClass(), "IO读写异常！");
			throw new ALLException(ioe);
		}catch (ClassNotFoundException ex) {
	       throw new ALLRuntimeException("指定的类不存在！");
       } catch (ArithmeticException ex) {
           throw new ALLRuntimeException("数学运算异常！");
       } catch (ArrayIndexOutOfBoundsException ex) {
           throw new ALLRuntimeException("数组下标越界！");
       } catch (IllegalArgumentException ex) {
    	   LogUtil.error(act.getAction().getClass(),"调用方法的参数错误！",ex);
           throw new ALLRuntimeException(ex);
       } catch (ClassCastException ex) {
    	   LogUtil.error(act.getAction().getClass(),"调用方法的参数错误！",ex);
           throw new ALLRuntimeException(ex);
       } catch (SecurityException ex) {
           throw new ALLRuntimeException("违背安全原则异常！");
       }catch (SQLException ex){
    	   LogUtil.error(act.getAction().getClass(), "操作数据库异常！",ex);
           throw new DaoException("操作数据库异常！");
           
       } catch (NoSuchMethodError ex) {
    	   LogUtil.error(act.getAction().getClass(), "调用了未定义的方法！");
           throw new ALLRuntimeException("调用了未定义的方法！");
       } catch (InternalError ex) {
           throw new ALLRuntimeException("Java虚拟机发生了内部错误！");
       }catch(RuntimeException ex){
    	   throw new ALLRuntimeException("程序运行期未知错误");
       }catch (Exception ex) {
           throw new ALLException("程序内部错误，操作失败！");
       }
	   LogUtil.info(act.getAction().getClass(), result);
	   return result;
	}

}
