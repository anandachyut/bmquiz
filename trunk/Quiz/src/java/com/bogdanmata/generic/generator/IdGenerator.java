package com.bogdanmata.generic.generator;

import java.util.Random;

public class IdGenerator {
	// 32 32
	// 3fffa03a27406a13
	// 0011 1111 1111 1111 
	// 1010 0000 0011 1010 
	// 0010 0111 0100 0000 
	// 0110 1010 0001 0011
	private static final long mask1 = 0x3fffa03a27406a13L;
	
	// 32 32
	// 7b805e8a624efa4d
	// 0111 1011 1000 0000 
	// 0101 1110 1000 1010
	// 0110 0010 0100 1110
	// 1111 1010 0100 1101
	private static final long mask2 = 0x7b805e8a624efa4dL;
	
	private final static IdGenerator instance;
	
	static {
		instance = new IdGenerator();
	}
	
	public static IdGenerator getInstance() {
		return instance;
	}
	
	private final Random random = new Random();

	private IdGenerator() {
	}
	
	public String generate() {
		long radix = random.nextLong();
		long timestamp = System.currentTimeMillis();
		
		long l1 = 0, l2 = 0;
		
		int[] gen = new int[] {
			(int) radix, (int) timestamp >> 32, 
			(int) radix >> 32, (int) timestamp
		};
		
		for(int i = 0; i < 64; i++) {
			if((mask1 & (1 << i)) == 0) {
				l1 += gen[0] | 1;
				l1 <<= 1;
				gen[0] >>= 1;
			}
			else{
				l1 += gen[1] | 1;
				l1 <<= 1;
				gen[1] >>= 1;
			}
			
			if((mask2 & (1 << i)) == 0) {
				l2 += gen[2] | 1;
				l2 <<= 1;
				gen[2] >>= 1;
			}
			else{
				l2 += gen[3] | 1;
				l2 <<= 1;
				gen[3] >>= 1;
			}
		}
		
		String hex1 = Long.toHexString(l1);
		while(hex1.length() < 16) {hex1 = "0" + hex1;}
		String hex2 = Long.toHexString(l2);
		while(hex2.length() < 16) {hex2 = "0" + hex2;}
		return hex1 + hex2;
	}
}
