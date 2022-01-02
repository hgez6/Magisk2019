 ui_print "  - 请按音量键选择是否安装：谷歌sans字体 -"
  ui_print "   [音量+]：安装"
  ui_print "   [音量-]：不安装"
  if $FUNCTION; then
  ui_print "安装成功"
  echo -n "  【谷歌sans】    " >>$INSTALLER/module.prop
  cp -f $INSTALLER/common/$notver/fonts/Roboto-Black.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-BlackItalic.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-Bold.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-BoldItalic.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-Italic.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-Light.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-LightItalic.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-Medium.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-MediumItalic.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-Regular.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-Thin.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/fonts/Roboto-ThinItalic.ttf ${MODPATH}/system/fonts/
  cp -f $INSTALLER/common/$notver/etc/fonts.xml ${MODPATH}/system/etc/
  else
  ui_print "未安装字体"
  fi
  
   ui_print "   [音量+]：安装魔改游戏工具箱"
  ui_print "   [音量-]：官方默认"
 if $FUNCTION; then  
  ui_print "已选择安装"
             cp -f $INSTALLER/common/p2 ${MODPATH}/system/app/SecurityAdd/p2
	     cp -f $INSTALLER/common/hd/SecurityCenter.apk ${MODPATH}/system/priv-app/SecurityCenter/
    e="1"
	else
  ui_print " 官方默认"
  e="0"
   ui_print "   检测到您已恢复官方默认是否清除魔改工具箱数据"
   ui_print "   [音量+]：清除"
  ui_print "   [音量-]：我一直用原版不需要清除"
 if $FUNCTION; then  
    rm -f /data/system/package_cache/1/SecurityCenter-*
    rm -f /data/system/package_cache/1/SecurityCenter.apk-*   
     rm -f /data/system/package_cache/1/MiuiFreeformService-*       
     rm -rf /data/user/0/com.miui.securitycenter
     rm -rf /data/user/0/com.miui.freeform
		ui_print "  缓存清除成功"
  else
	ui_print "  缓存未清除"
  fi
  fi
      if [ "$e" == "1" ]; then
    ui_print "   [音量+]：MI9游戏工具箱高级设置版"
  ui_print "   [音量-]：官方人脸解锁版(更稳定)"
 if $FUNCTION; then  

		ui_print " mi9游戏工具箱安装成功"
	      cp -f $INSTALLER/common/SecurityCenter.apk ${MODPATH}/system/priv-app/SecurityCenter.apk
	      cp -f $INSTALLER/common/SecurityAdd.apk ${MODPATH}/system/app/SecurityAdd.apk
	           cd "$INSTALLER/common/zhi"
	      	$zip -r0 ${MODPATH}/system/priv-app/SecurityCenter.apk ./* >/dev/null
	      	f="1"
			else
	echo -n  " [mix3游戏工具箱]" >>$INSTALLER/module.prop
	 cp -f $INSTALLER/common/mix/SecurityCenter.apk ${MODPATH}/system/priv-app/SecurityCenter.apk
	  		f="1"

  fi
      if [ "$f" == "1" ]; then
    ui_print "  检测到您已安装魔改游戏工具箱请选择是否清除相关组件数据"
    ui_print "音量＋:清除(系统版本较低时推荐)"
    ui_print "音量－:不清除"
 if $FUNCTION; then  
    rm -f /data/system/package_cache/1/SecurityCenter-*
    rm -f /data/system/package_cache/1/SecurityCenter.apk-*   
     rm -f /data/system/package_cache/1/MiuiFreeformService-*       
     rm -rf /data/user/0/com.miui.securitycenter
     rm -rf /data/user/0/com.miui.freeform
		ui_print "  缓存清除成功"
  else
	ui_print "  缓存未清除"
  fi
	fi
 
  
  ui_print "  - 请按音量键选择是否开启：通知分栏-"
  ui_print "   [音量+]：安装"
  ui_print "   [音量-]：不安装"
  if $FUNCTION; then
  ui_print "安装成功"
  echo -n  "  通知分栏：√    " >>$INSTALLER/module.prop
  cp -f $INSTALLER/common/$notver/com.android.systemui ${MODPATH}/system/media/theme/default/com.android.systemui
  else
  ui_print "未安装通知分栏"
  echo -n "  通知分栏：×    " >>$INSTALLER/module.prop
  fi
  
  ui_print "  - 请按音量键选择是否安装:去除升频文件"
  ui_print "   [音量+]：安装"
  ui_print "   [音量-]：不安装"
  if $FUNCTION; then
  ui_print "安装成功"
  echo -n  "  【去除升频文件】  " >>$INSTALLER/module.prop
  cp -f $INSTALLER/common/$notver/perfboostsconfig.xml ${MODPATH}/system/vendor/etc/perf/
  else
  ui_print "未安装去除升频"
  fi
  

  


# 去除防误触白条
ui_print "*******************************"
ui_print "- 请按音量键选择是否安装[去除防误触白条] -"
ui_print "   [音量+]：安装"
ui_print "   [音量-]：不安装"
if $FUNCTION; then
	cd "$INSTALLER/common/MIUI_anti_block"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
	echo -n "[去除防误触白条]；" >>$INSTALLER/module.prop
	let num++
	ui_print "   [去除防误触白条]安装成功。"
else
	ui_print "   [去除防误触白条]未安装。"
fi



ui_print "*******************************"
ui_print "- 请按音量键选择是否安装[去除音乐专辑图广告] -"
ui_print "   [音量+]：安装"
ui_print "   [音量-]：不安装"
if $FUNCTION; then
	cp -r $INSTALLER/common/MIUI_player_block/* ${MODPATH}/system/
	echo -n "[去除音乐专辑图广告]；" >>$INSTALLER/module.prop
	let num++
	ui_print "   [去除音乐专辑图广告]安装成功。"
else
	ui_print "   [去除音乐专辑图广告]未安装。"
fi

ui_print "*******************************"
ui_print "- 请按音量键选择是否安装[MIUI进程精简(去广告)] -"
ui_print "   [音量+]：安装"
ui_print "   [音量-]：不安装"
if $FUNCTION; then
	cp -r $INSTALLER/common/MIUI_msa_block/* ${MODPATH}/system/
	echo -n "[MIUI进程精简(去广告)]；" >>$INSTALLER/module.prop
	let num++
	ui_print "   [MIUI进程精简(去广告)]安装成功。"
else
	ui_print "   [MIUI进程精简(去广告)]未安装。"
fi

	ui_print "- 请按音量键选择是否安装[高级重启菜单] -"
ui_print "   [音量+]：安装"
ui_print "   [音量-]：不安装"
if $FUNCTION; then
  cp -f $INSTALLER/common/powermenu ${MODPATH}/system/media/theme/default/powermenu
	echo -n "[高级重启]；" >>$INSTALLER/module.prop
	let num++
	ui_print "   [高级重启]安装成功。"
else
	ui_print "   [高级重启]未安装。"
fi

ui_print "- 请按音量键选择是否安装[euhome] -"
ui_print "   [音量+]：安装"
ui_print "   [音量-]：不安装"
if $FUNCTION; then
miuiver="`grep_prop ro.build.version.incremental`"
	notver=$miuiver
	getfilever 9.3.1 9.5.1 && notver=9.1.24
	if [ -d $INSTALLER/common/$notver ]; then
	ui_print "   检测到您的MIUI版本：$miuiver自动为您切换挂载方式"
	      cp -f $INSTALLER/common/p3 ${MODPATH}/system/priv-app/MiuiHome/p3
	       cp -f $INSTALLER/common/MiuiHome.apk ${MODPATH}/system/priv-app/MiuiHome.apk
	       else	
  cp -f $INSTALLER/common/MiuiHome.apk ${MODPATH}/system/priv-app/MiuiHome/
	echo -n "[euhome]；" >>$INSTALLER/module.prop
	ui_print "   [euhome]安装成功。"
	fi
else
	ui_print "   [euhome]未安装。"
fi
ui_print "   本模块边缘手势已支持您的MIUI版本"
		 ui_print "  - 请按音量键选择是否需要-"
  ui_print "   [音量+]：安装"
  ui_print "   [音量-]：官方默认"
  if $FUNCTION; then
  d=1
  ui_print " 自动为你开启多项同步模式（安装一个后自动进入下一级）"
  ui_print "音量+安装"
    ui_print "音量-下一个"
        ui_print "蓝色"
  ui_print "彩色"
  ui_print " 青色 "
  ui_print " 紫色 "
  ui_print " 退出 "
  else
  ui_print "官方默认"
  z=1
  fi
  if [ "$d" == "1" ]; then
 ui_print "已选择蓝色"
 if $FUNCTION; then  
	cd "$INSTALLER/common/byGesture/lan"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		ui_print "   [蓝色手势]安装成功。"
		echo -n "[蓝色手势]；" >>$INSTALLER/module.prop
 	z=1
  else
ui_print "已选择彩色"
  if $FUNCTION; then  
cd "$INSTALLER/common/byGesture/cai"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		echo -n "[彩色手势]；" >>$INSTALLER/module.prop
		ui_print "   彩色安装成功。"
		z=1
		else
 ui_print "已选择青色"
    if $FUNCTION; then  
cd "$INSTALLER/common/byGesture/qing"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		echo -n "[青色手势]；" >>$INSTALLER/module.prop
		ui_print "   青色安装成功。"
		z=1
		else
		ui_print "已选择紫色"
  if $FUNCTION; then  
cd "$INSTALLER/common/byGesture/zi"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		echo -n "[紫色手势]；" >>$INSTALLER/module.prop
		ui_print "   紫色安装成功。"
		z=1
		else
		ui_print "什么边缘手势都没安装"
		z=1
  fi
fi
fi
fi
fi
      if [ "$z" == "1" ]; then
ui_print "   本模块滑稽返回手势已支持您的MIUI版本"
		 ui_print " 可与边缘手势共存"
  ui_print "   [音量+]：安装"
  ui_print "   [音量-]：官方默认"
  if $FUNCTION; then
  l=1
  ui_print " 自动为你开启多项同步模式（安装一个后自动进入下一级）"
  ui_print "音量+安装"
    ui_print "音量-下一个"
        ui_print "吐舌滑稽"
  ui_print "滑稽"
  ui_print " 吃瓜滑稽 "
  ui_print " 牛逼 "
  ui_print " 窥视滑稽"
  ui_print " 退出"
  
  else
  ui_print "官方默认"
  l=0
  x=1
  fi
  if [ "$l" == "1" ]; then
 ui_print "已选择吐舌滑稽"
 if $FUNCTION; then  
	cd "$INSTALLER/common/hj/tu"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		ui_print "   [吐舌滑稽手势]安装成功。"
		echo -n "[吐舌滑稽手势]；" >>$INSTALLER/module.prop
 	x=1
  else
ui_print "已选择滑稽"
  if $FUNCTION; then  
cd "$INSTALLER/common/hj/huaji"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		echo -n "[滑稽手势]；" >>$INSTALLER/module.prop
		ui_print "   滑稽安装成功。"
		x=1
		else
 ui_print "已选择吃瓜滑稽"
    if $FUNCTION; then  
cd "$INSTALLER/common/hj/cg"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		echo -n "[吃瓜滑稽手势]；" >>$INSTALLER/module.prop
		ui_print "   吃瓜滑稽安装成功。"
		x=1
		else
		ui_print "已选择牛逼"
  if $FUNCTION; then  
cd "$INSTALLER/common/hj/nb"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		echo -n "[牛逼手势]；" >>$INSTALLER/module.prop
		ui_print "   牛逼安装成功。"
		x=1
		else
ui_print "已选择窥视滑稽"
    if $FUNCTION; then  
cd "$INSTALLER/common/hj/ku"
	$zip -r ${MODPATH}/system/media/theme/default/com.android.systemui ./* >/dev/null
		echo -n "[窥视滑稽手势]；" >>$INSTALLER/module.prop
		ui_print "   窥视滑稽安装成功。"
		x=1
		else
		ui_print "已退出"
		x=1
  fi
fi
fi
fi
fi
fi

 ui_print "  -如果您有操作失误本次可以不挂载-"
  ui_print "   [音量+]：手抖了，不挂载"
  ui_print "   [音量-]：我没失误"
  if $FUNCTION; then
  ui_print "未挂载本模块"
 exit
  else
  ui_print "已挂载本模块，体验愉快"
  fi
else
		ui_print "退出安装但不会有残留"
		exit
		fi
		fi
		fi
	