package com.entity.view;

import com.entity.KuaididingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 快递订单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-06 18:09:59
 */
@TableName("kuaididingdan")
public class KuaididingdanView  extends KuaididingdanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KuaididingdanView(){
	}
 
 	public KuaididingdanView(KuaididingdanEntity kuaididingdanEntity){
 	try {
			BeanUtils.copyProperties(this, kuaididingdanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
