# ------------------------------------------------------------------------ #
#                             AirM2M Ltd.                                  # 
#                                                                          #
# Name: version.mk                                                         #
#                                                                          #
# Author: liweiqiang                                                            #
# Verison: V0.1                                                            #
# Date: 2013.3.4                                                         #
#                                                                          #
# File Description:                                                        #
#                                                                          #
#  �汾�����ļ�                                                            #
# ------------------------------------------------------------------------ #

# �淶��SW_21_10 ����汾�����淶

### ��Ҫ���õ����� ###
# ģ��/�ֻ���Ŀ��
MODULE_TYPE=A6390

# �ͻ�ͬһ��Ŀ��ͬӲ���汾��ͬһ��Ŀ��ͬӦ��
CUST_HW_TYPE=H

# ����汾��
ifeq "${SVN_REVISION}" ""
${error MUST define SVN_REVISION}
else
SW_SN=${SVN_REVISION}
endif

# ģ��/�ֻ������
MODULE_HW_TYPE=13

# ƽ̨����汾��
PLATFORM_VER=CT8851BL

# �ͻ���Ʒ��Ŀ����
CUST_PROJ_NAME=AM001_LUA

# ------------------------------------------------------------------------ #
# �汾�Ŷ���
# ------------------------------------------------------------------------ #
# �ڲ��汾��
IN_VER=SW_$(MODULE_TYPE)_$(CUST_HW_TYPE)_V$(SW_SN)_M$(MODULE_HW_TYPE)_$(PLATFORM_VER)_$(CUST_PROJ_NAME)

# �ⲿ�汾�ţ�Ĭ�϶��壩
EX_VER=SW_V$(SW_SN)_$(CUST_PROJ_NAME)

# ------------------------------------------------------------------------ #
# �汾��
# ------------------------------------------------------------------------ #
LOCAL_EXPORT_FLAG += \
   IN_VER=\"$(IN_VER)\" \
   EX_VER=\"$(EX_VER)\" \
   
ifeq "${AM_VER_ECHO_SUPPORT}" "TRUE"
ECHO_EX_VER:
	@echo $(EX_VER)
endif
