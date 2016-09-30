/*
 *   (C) Copyright 2009-2010 hSenid Software International (Pvt) Limited.
 *   All Rights Reserved.
 *
 *   These materials are unpublished, proprietary, confidential source code of
 *   hSenid Software International (Pvt) Limited and constitute a TRADE SECRET
 *   of hSenid Software International (Pvt) Limited.
 *
 *   hSenid Software International (Pvt) Limited retains all title to and intellectual
 *   property rights in these materials.
 */

package hsl.devspace.app.admin.itemmanagement.spring;

import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class CharacterEncodingFilter extends OncePerRequestFilter {

    private String encoding;

	private boolean forceRequestEncoding = false;
	private boolean forceResponseEncoding = false;

    @Override
	protected void doFilterInternal(
			HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {

		if (this.encoding != null) {
            if(this.forceRequestEncoding || request.getCharacterEncoding() == null) {
			    request.setCharacterEncoding(this.encoding);
            }
			if (this.forceResponseEncoding) {
				response.setCharacterEncoding(this.encoding);
			}
		}
		filterChain.doFilter(request, response);
	}

    public void setEncoding(String encoding) {
        this.encoding = encoding;
    }

    public void setForceRequestEncoding(boolean forceRequestEncoding) {
        this.forceRequestEncoding = forceRequestEncoding;
    }

    public void setForceResponseEncoding(boolean forceResponseEncoding) {
        this.forceResponseEncoding = forceResponseEncoding;
    }
}
