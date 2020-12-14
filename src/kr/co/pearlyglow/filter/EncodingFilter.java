package kr.co.pearlyglow.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/*
 * [ Filter ]
 * - Ŭ���̾�Ʈ�� ��û�� �߰��� ����ä�� ��û�������� �������� Ư���۾��� ������
 *   ���� �� ��û�������� �� ���� �ְ� ���Ϳ��� �ٸ��������� �̵��� �����ϴ�.
 * - ����� ���
 *   1) Filter�������̽��� ��ӹ޾� doFilter�޼ҵ忡�� ó���� �۾��� �����Ѵ�. // import javax.servlet.Filter;
 *   2) web.xml�� ���͸����� �����ϰų� �Ǵ� ������̼����� �����Ѵ�.
 */
public class EncodingFilter implements Filter{
	String encoding=null;
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		if(encoding!=null) {
			request.setCharacterEncoding(encoding);
			response.setContentType("text/html;charset="+encoding);
			response.setContentType("text/xml;charset="+encoding);
		}else {
			//���ڵ��ϱ�
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			response.setContentType("text/xml;charset=utf-8");
		}
		//������ ������ ���Ͱ� ������ �����ϰ� ������ Ŭ���̾�Ʈ�� ��û�� �������� �̵�
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		//web.xml�� ������ �ʱ�ȭ �Ķ���Ͱ� �о����
		encoding=filterConfig.getInitParameter("encoding");
	}

}
