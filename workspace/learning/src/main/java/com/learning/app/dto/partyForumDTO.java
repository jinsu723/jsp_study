package com.learning.app.dto;

public class partyForumDTO {

	private int forumNumber;		//forum_number		게시글 번호 pk
	private int userNumber;			//user_number		유저 번호 fk
	private String forumCategory;	//forum_category	게시글 카테고리
	private String forumTitle;		//forum_title		게시글 제목
	private String forumDate;		//forum_dater		게시글 작성일
	private String forumUpdate;		//forum_update		게시글 업데이트 날짜
	private String forumContent;	//forum_content		게시글 본문
	private String userNickname;	//user_Nickname		작성자 이름

	public int getForumNumber() {
		return forumNumber;
	}

	public void setForumNumber(int forumNumber) {
		this.forumNumber = forumNumber;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	public String getForumCategory() {
		return forumCategory;
	}

	public void setForumCategory(String forumCategory) {
		this.forumCategory = forumCategory;
	}

	public String getForumTitle() {
		return forumTitle;
	}

	public void setForumTitle(String forumTitle) {
		this.forumTitle = forumTitle;
	}

	public String getForumDate() {
		return forumDate;
	}

	public void setForumDate(String forumDate) {
		this.forumDate = forumDate;
	}

	public String getForumUpdate() {
		return forumUpdate;
	}

	public void setForumUpdate(String forumUpdate) {
		this.forumUpdate = forumUpdate;
	}

	public String getForumContent() {
		return forumContent;
	}

	public void setForumContent(String forumContent) {
		this.forumContent = forumContent;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

}
