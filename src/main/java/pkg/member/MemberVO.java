package pkg.member;

public class MemberVO {
    private String memberIdx, memberId, memberPassword, memberNickname, memberBirth, memberProfile, memberFavorites;
    public String getMemberBirth() {
        return memberBirth;
    }
    public void setMemberBirth(String memberBirth) {
        this.memberBirth = memberBirth;
    }
    public String getMemberFavorites() {
        return memberFavorites;
    }
    public void setMemberFavorites(String memberFavorites) {
        this.memberFavorites = memberFavorites;
    }
    public String getMemberId() {
        return memberId;
    }
    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }
    public String getMemberIdx() {
        return memberIdx;
    }
    public void setMemberIdx(String memberIdx) {
        this.memberIdx = memberIdx;
    }
    public String getMemberNickname() {
        return memberNickname;
    }
    public void setMemberNickname(String memberNickname) {
        this.memberNickname = memberNickname;
    }
    public String getMemberPassword() {
        return memberPassword;
    }
    public void setMemberPassword(String memberPassword) {
        this.memberPassword = memberPassword;
    }
    public String getMemberProfile() {
        return memberProfile;
    }
    public void setMemberProfile(String memberProfile) {
        this.memberProfile = memberProfile;
    }
}
