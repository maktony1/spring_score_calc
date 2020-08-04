package edu.bit.ex.calcVO;

import org.springframework.stereotype.Repository;

@Repository
public class CalcVO {

	private double kor;
	private double eng;
	private double math;
	
	
	public CalcVO() {
	}
	
	
	public CalcVO(double kor, double eng, double math) {
		super();
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}


	public double getKor() {
		return kor;
	}

	public void setKor(double kor) {
		this.kor = kor;
	}

	public double getEng() {
		return eng;
	}

	public void setEng(double eng) {
		this.eng = eng;
	}

	public double getMath() {
		return math;
	}

	public void setMath(double math) {
		this.math = math;
	}
	
	public double getTotal() {
		return (kor+eng+math);
	}
	
	
}
