package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dao.LoginDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	private String loginUserId;
	private String loginPassword;
	private Map<String, Object> session;
	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();
	private BuyItemDAO buyItemDAO = new BuyItemDAO();

	public String execute() {

		String result = ERROR;
		//入力された情報をDAOからDTOに入れる
		loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);
		session.put("loginUser", loginDTO);
		//セッションに入力情報をput
		if (((LoginDTO) session.get("loginUser")).getLoginFlg()) {
			//LoginFlgがTRUEだった場合

			result = SUCCESS;
			//買い物履歴？を入手
			BuyItemDTO dto = buyItemDAO.getBuyItemInfo();

			session.put("login_user_id", loginDTO.getLoginId());
			session.put("id", dto.getId());
			session.put("buyItem_name", dto.getItemName());
			session.put("buyItem_price", dto.getItemPrice());

			//ログイン情報、買い物履歴をセッションにput
			return result;
		}
		return result;
	}

	public String getLoginuserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
