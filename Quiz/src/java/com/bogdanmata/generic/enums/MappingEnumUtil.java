package com.bogdanmata.generic.enums;

public abstract class MappingEnumUtil <T, S, A extends MappingEnum<T, S>>{
	protected abstract Class<A> getMappingEnumClass();
	
	public A getMappingEnumByKey(T id) {
		if(getMappingEnumClass().isEnum()) {
			A[] enums = getMappingEnumClass().getEnumConstants();
			if(enums == null) {
				throw new RuntimeException("The enum has no constants");
			}
			for(A mappingEnum : enums) {
				if(mappingEnum.getId().equals(id)) {
					return mappingEnum;
				}
			}
			throw new RuntimeException("No constant for the \"" + id.toString() + "\"");
		}
		throw new RuntimeException("The mapping enum must be a enum");
	}
}
