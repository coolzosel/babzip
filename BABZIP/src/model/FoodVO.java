package model;

public class FoodVO {
   private int num;
   private String name;
   private String addr;
   private String callnum;
   private String type;
   private String open;
   private String close;
   private String img;

   public FoodVO() {
   }

   public FoodVO(int num, String name, String addr, String callnum, String type, String open, String close, String img) {
      this.num = num;
      this.name = name;
      this.addr = addr;
      this.callnum = callnum;
      this.type = type;
      this.open = open;
      this.close = close;
      this.img = img;
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

   public String getAddr() {
      return addr;
   }

   public void setAddr(String addr) {
      this.addr = addr;
   }

   public String getCallnum() {
      return callnum;
   }

   public void setCallnum(String callnum) {
      this.callnum = callnum;
   }

   public String getType() {
      return type;
   }

   public void setType(String type) {
      this.type = type;
   }

   public String getOpen() {
      return open;
   }

   public void setOpen(String open) {
      this.open = open;
   }

   public String getClose() {
      return close;
   }

   public void setClose(String close) {
      this.close = close;
   }

   public String getImg() {
      return img;
   }

   public void setImg(String img) {
      this.img = img;
   }

   @Override
   public String toString() {
      return "FoodVO [num=" + num + ", name=" + name + ", addr=" + addr + ", callnum=" + callnum + ", type=" + type
            + ", open=" + open + ", close=" + close + ", img=" + img + "]";
   }

   

}