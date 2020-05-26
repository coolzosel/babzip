package model;

public class ReviewVO {
   private int num;
   private String name;
   private String pwd;
   private int star;
   private String review;
   private String writeday;
   private int resnum;


   public ReviewVO(String name, String pwd, int star, String review, int resnum) {
      this.name = name;
      this.pwd = pwd;
      this.star = star;
      this.review = review;
      this.resnum = resnum;
   }

   public ReviewVO(int num, String name, String pwd, int star, String review, String writeday, int resnum) {
      this.num = num;
      this.name = name;
      this.pwd = pwd;
      this.star = star;
      this.review = review;
      this.writeday = writeday;
      this.resnum = resnum;
   }
   
   public ReviewVO(int num, String pwd, int star, String review) {
	   this.num = num;
      this.pwd = pwd;
      this.star = star;
      this.review = review;
}

@Override
   public String toString() {
      return "ReviewVO [num=" + num + ", name=" + name + ", pwd=" + pwd + ", star=" + star + ", review=" + review
            + ", writeday=" + writeday + ", resnum=" + resnum + "]";
   }
   public int getNum() {
      return num;
   }
   public void setNum(int num) {
      this.num = num;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getPwd() {
      return pwd;
   }
   public void setPwd(String pwd) {
      this.pwd = pwd;
   }
   public int getStar() {
      return star;
   }
   public void setStar(int star) {
      this.star = star;
   }
   public String getReview() {
      return review;
   }
   public void setReview(String review) {
      this.review = review;
   }
   public String getWriteday() {
      return writeday;
   }
   public void setWriteday(String writeday) {
      this.writeday = writeday;
   }
   public int getResnum() {
      return resnum;
   }
   public void setResnum(int resnum) {
      this.resnum = resnum;
   }
}