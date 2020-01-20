package com.bitbang.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitbang.common.commonUtil;
import com.bitbang.model.dao.forsaleDAO;
import com.bitbang.model.vo.ForSaleVO;

public class ForSalePageCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(!commonUtil.fs_Bool) {
			commonUtil.fs_x=37.50192426050855;
			commonUtil.fs_y=127.02562676562276;
			commonUtil.fs_level=13;
		}
		return "main/forsale/ForSale.jsp";
	}

}
