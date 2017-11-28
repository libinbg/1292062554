/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.15 : Database - stategrid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stategrid` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `stategrid`;

/*Table structure for table `s_99958_wkst` */

DROP TABLE IF EXISTS `s_99958_wkst`;

CREATE TABLE `s_99958_wkst` (
  `APP_NO` varchar(16) NOT NULL COMMENT '申请编号',
  `ID` int(16) NOT NULL COMMENT '服务请求标识',
  `GROUP_NO` varchar(32) NOT NULL COMMENT '分组编号',
  `BUSI_TYPE_CODE` varchar(8) NOT NULL COMMENT '受理业务类型',
  `BUSI_SUB_TYPE` varchar(8) NOT NULL COMMENT '业务子类型',
  `COUNTY_CODE` varchar(8) NOT NULL COMMENT '所属区县',
  `URBAN_RURAL_FLAG` varchar(8) NOT NULL COMMENT '城乡类别',
  `ORG_NO` varchar(16) NOT NULL COMMENT '供电单位编码',
  `EMP_NO` varchar(16) NOT NULL COMMENT '受理人员工号',
  `HANDLE_TIME` date NOT NULL COMMENT '受理时间',
  `ACCEPT_MODE` varchar(8) NOT NULL COMMENT '受理方式',
  `ACCEPT_CONTENT` varchar(256) NOT NULL COMMENT '受理内容',
  `HANDLE_OPINION` varchar(256) NOT NULL COMMENT '受理意见',
  `REPLY_FLAG` varchar(8) NOT NULL COMMENT '回复标志',
  `REPLY_DATE` int(5) NOT NULL COMMENT '回复时间',
  `REPLY_MODE` varchar(8) NOT NULL COMMENT '回复方式',
  `CONS_OPINION` varchar(256) NOT NULL COMMENT '客户意见',
  `REPLY_TEL` varchar(32) NOT NULL COMMENT '回复电话',
  `SEND_DATE` date NOT NULL COMMENT '工单下发时间',
  `ATTACH` blob NOT NULL COMMENT '工作单有关附件',
  `IDEN_MODE` varchar(8) NOT NULL COMMENT '身份验证方式',
  `CERT_TYPE_CODE` varchar(8) NOT NULL COMMENT '证件类型',
  `CERT_NO` varchar(32) NOT NULL COMMENT '证件号码',
  `ARC_MODE` varchar(8) NOT NULL COMMENT '归档方式',
  `INTEGRITY_FLAG` varchar(8) NOT NULL COMMENT '完整性标志',
  `ACCURACY_FLAG` varchar(8) NOT NULL COMMENT '准确性标志',
  `ARC_OPINION` varchar(256) NOT NULL COMMENT '归档意见',
  `TIME_LEN` int(15) NOT NULL COMMENT '录音时长',
  `ARC_EMP_NAME` varchar(16) NOT NULL COMMENT '归档人员',
  `ARC_DATE` date NOT NULL COMMENT '归档时间',
  `HANDLE_STATUS_CODE` varchar(8) NOT NULL COMMENT '处理状态',
  `REPLY_SUCC_FLAG` varchar(8) NOT NULL COMMENT '回复成功标志',
  `RETVISIT_FAIL_REASON` varchar(256) NOT NULL COMMENT '回访未成功原因',
  `REPLY_FAIL_TIMES` int(5) NOT NULL COMMENT '回复失败次数',
  PRIMARY KEY (`APP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_99958_wkst` */

/*Table structure for table `s_bulletin` */

DROP TABLE IF EXISTS `s_bulletin`;

CREATE TABLE `s_bulletin` (
  `ANNOUNCE_NO` varchar(32) NOT NULL COMMENT '公告编码',
  `INFO_ID` varchar(16) NOT NULL COMMENT '信息整理编码',
  `CONTENT` varchar(255) NOT NULL COMMENT '维护内容',
  `NOTIFY_TIME` date NOT NULL COMMENT '公告时间',
  `ATTACH_CODE` int(16) NOT NULL COMMENT '事务公告附件编码',
  PRIMARY KEY (`ANNOUNCE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_bulletin` */

/*Table structure for table `s_busi_charge` */

DROP TABLE IF EXISTS `s_busi_charge`;

CREATE TABLE `s_busi_charge` (
  `ID` int(16) NOT NULL COMMENT '标识',
  `INFO_ID` varchar(16) NOT NULL COMMENT '信息整理编码',
  `ITEM_NAME` varchar(255) NOT NULL COMMENT '收费项目名称',
  `APPLY_SCOPE` varchar(255) NOT NULL COMMENT '适用范围',
  `STD_CODE` varchar(32) NOT NULL COMMENT '收费标准',
  `SETTLE_MODE` varchar(8) NOT NULL COMMENT '结算方式',
  `PAY_MODE` varchar(8) NOT NULL COMMENT '交费方式',
  `DB_HANDLE_METHOD` varchar(255) NOT NULL COMMENT '欠费处理办法',
  `AMT_PENALTY` varchar(255) NOT NULL COMMENT '电费违约金',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_busi_charge` */

/*Table structure for table `s_comm_rec` */

DROP TABLE IF EXISTS `s_comm_rec`;

CREATE TABLE `s_comm_rec` (
  `COMM_ID` varchar(32) NOT NULL COMMENT '通讯记录标识',
  `SRV_MODE` varchar(8) NOT NULL COMMENT '服务方式',
  `ATTACH_TYPE_CODE` varchar(8) NOT NULL COMMENT '服务附件类型',
  `SRV_ATTACH_NO` varchar(16) NOT NULL COMMENT '服务附件编号',
  `APP_NO` varchar(16) NOT NULL COMMENT '工单申请编号',
  `WKST_ACT_NO` varchar(32) NOT NULL COMMENT '工单活动编号',
  PRIMARY KEY (`COMM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_comm_rec` */

/*Table structure for table `s_complain` */

DROP TABLE IF EXISTS `s_complain`;

CREATE TABLE `s_complain` (
  `APP_NO` varchar(16) NOT NULL COMMENT '申请编号',
  `LEVEL_CODE` varchar(8) NOT NULL COMMENT '举报等级',
  `TRUE_FLAG` varchar(8) NOT NULL COMMENT '举报属实标志',
  `SECRET_CODE` varchar(8) NOT NULL COMMENT '举报保密标志',
  `ANONYM_FLAG` varchar(8) NOT NULL COMMENT '匿名标志',
  `RESP_FLAG` varchar(8) NOT NULL COMMENT '投诉电力公司责任标志',
  `INVOLVE_PERSON_NAME` varchar(255) NOT NULL COMMENT '投诉涉及个人',
  `INVOLVED_DEPT` varchar(255) NOT NULL COMMENT '投诉涉及部门',
  PRIMARY KEY (`APP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_complain` */

/*Table structure for table `s_complain_handle` */

DROP TABLE IF EXISTS `s_complain_handle`;

CREATE TABLE `s_complain_handle` (
  `HANDLE_ID` varchar(32) NOT NULL COMMENT '投诉举报处理标识',
  `INVOLVED_DEPT_NO` varchar(16) NOT NULL COMMENT '涉及部门',
  `INVOLVE_PERSON_NAME` varchar(255) NOT NULL COMMENT '涉及人员',
  `TRUE_FLAG` varchar(8) NOT NULL COMMENT '是否属实',
  PRIMARY KEY (`HANDLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_complain_handle` */

/*Table structure for table `s_enterprise_brief` */

DROP TABLE IF EXISTS `s_enterprise_brief`;

CREATE TABLE `s_enterprise_brief` (
  `ID` int(16) NOT NULL COMMENT '标识',
  `INFO_ID` varchar(16) NOT NULL COMMENT '信息整理编码',
  `ENTERPRISE_NAME` varchar(255) NOT NULL COMMENT '企业名称',
  `VN` varchar(32) NOT NULL COMMENT '版本编号',
  `BUSI_AREA` varchar(255) NOT NULL COMMENT '营业区域',
  `MANAGE_SCOPE` varchar(255) NOT NULL COMMENT '管辖范围',
  `SRV_LOC` varchar(255) NOT NULL COMMENT '服务场所',
  `BRIEF` varchar(255) NOT NULL COMMENT '简介内容',
  `CONTACT_TEL_NO` varchar(255) NOT NULL COMMENT '企业联系电话',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_enterprise_brief` */

/*Table structure for table `s_fault_handle` */

DROP TABLE IF EXISTS `s_fault_handle`;

CREATE TABLE `s_fault_handle` (
  `HANDLE_ID` varchar(32) NOT NULL COMMENT '故障处理标识',
  `REPAIR_DESC` varchar(255) NOT NULL COMMENT '现场抢修记录',
  `ARRIVAL_TIME` date NOT NULL COMMENT '到达现场时间',
  `DISPACH_TIME` date NOT NULL COMMENT '派出时间',
  `REPAIR_ORG` varchar(16) NOT NULL COMMENT '抢修单位',
  `REPAIR_DEPT_NO` int(16) NOT NULL COMMENT '抢修部门',
  `REAPAIR_EMP_NO` int(16) NOT NULL COMMENT '抢修人员',
  `RECO_DATE` date NOT NULL COMMENT '修复时间',
  `VHEICLE_ID` int(16) NOT NULL COMMENT '抢修车辆',
  `FAULT_TYPE_CODE` varchar(8) NOT NULL COMMENT '故障类型',
  `REASON` varchar(8) NOT NULL COMMENT '故障原因',
  `FAULT_DESC` varchar(8) NOT NULL COMMENT '故障现象',
  `EQUIP_PR_CODE` varchar(8) NOT NULL COMMENT '故障设备产权属性',
  `SITE_TYPE_CODE` varchar(8) NOT NULL COMMENT '处理现场分类',
  `VOLT_CODE` varchar(8) NOT NULL COMMENT '故障电压等级',
  PRIMARY KEY (`HANDLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_fault_handle` */

/*Table structure for table `s_fault_rpt` */

DROP TABLE IF EXISTS `s_fault_rpt`;

CREATE TABLE `s_fault_rpt` (
  `APP_NO` varchar(16) NOT NULL COMMENT '申请编号',
  `FAULT_ADDR` varchar(255) NOT NULL COMMENT '故障地址',
  `LOCATE_REF` varchar(256) NOT NULL COMMENT '故障地址参照物',
  `LINE_NAME` varchar(255) NOT NULL COMMENT '线路名称',
  `POLE_NO` varchar(16) NOT NULL COMMENT '杆号',
  `PS_POINT` varchar(255) NOT NULL COMMENT '供电点',
  `BOOKING_FLAG` varchar(8) NOT NULL COMMENT '预约标志',
  `BOOKING_TIME` date NOT NULL COMMENT '预约时间',
  `INIT_JUDGE` varchar(255) NOT NULL COMMENT '故障初步判断',
  `FAULT_TYPE_CODE` varchar(8) NOT NULL COMMENT '故障类型',
  `REASON` varchar(8) NOT NULL COMMENT '故障原因',
  `FAULT_DESC` varchar(8) NOT NULL COMMENT '故障现象',
  `EQUIP_PR_CODE` varchar(8) NOT NULL COMMENT '故障设备产权属性',
  `HARM_LEVEL_CODE` varchar(8) NOT NULL COMMENT '故障危害程度',
  `SITE_TYPE_CODE` varchar(8) NOT NULL COMMENT '处理现场分类',
  `VOLT_CODE` varchar(8) NOT NULL COMMENT '故障电压等级',
  `EMERGENCY_LEVEL_CODE` varchar(8) NOT NULL COMMENT '故障报修紧急程度',
  `NEW_FAULT_FLAG` varchar(8) NOT NULL COMMENT '新故障标志',
  PRIMARY KEY (`APP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_fault_rpt` */

/*Table structure for table `s_id_validate` */

DROP TABLE IF EXISTS `s_id_validate`;

CREATE TABLE `s_id_validate` (
  `EMP_NO` varchar(16) NOT NULL COMMENT '受理人员',
  `VERI_TIME` date NOT NULL COMMENT '验证时间',
  `VERI_MODE` varchar(8) NOT NULL COMMENT '验证方式',
  `RSLT` varchar(8) NOT NULL COMMENT '身份验证结果',
  `VERIFY_ID` varchar(16) NOT NULL COMMENT '身份验证标识',
  PRIMARY KEY (`EMP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_id_validate` */

/*Table structure for table `s_power_law` */

DROP TABLE IF EXISTS `s_power_law`;

CREATE TABLE `s_power_law` (
  `ID` int(16) NOT NULL COMMENT '标识',
  `INFO_ID` varchar(16) NOT NULL COMMENT '信息整理编码',
  `NAME` varchar(255) NOT NULL COMMENT '服务指南名称',
  `CONTENT` varchar(255) NOT NULL COMMENT '维护内容',
  `RELEASE_DATE` varchar(8) NOT NULL COMMENT '法律法规颁布日期',
  `DOC_NO` varchar(16) NOT NULL COMMENT '文件编号',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_power_law` */

/*Table structure for table `s_pubinfo_arrange` */

DROP TABLE IF EXISTS `s_pubinfo_arrange`;

CREATE TABLE `s_pubinfo_arrange` (
  `INFO_ID` varchar(16) NOT NULL COMMENT '信息整理编码',
  `COLL_DATE` date NOT NULL COMMENT '公共信息收集时间',
  `COLL_EMP_NO` varchar(64) NOT NULL COMMENT '收集人员',
  PRIMARY KEY (`INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_pubinfo_arrange` */

/*Table structure for table `s_pwd_validate` */

DROP TABLE IF EXISTS `s_pwd_validate`;

CREATE TABLE `s_pwd_validate` (
  `PWDVER_ID` varchar(16) NOT NULL COMMENT '密码验证记录标识',
  `CUST_NO` varchar(16) NOT NULL COMMENT '客户编号',
  `CUST_PWD` varchar(32) NOT NULL COMMENT '客户密码',
  `PWD_INPUT` varchar(32) NOT NULL COMMENT '客户输入密码',
  `VERI_RSLT` varchar(8) NOT NULL COMMENT '密码验证结果',
  `REMARK` varchar(255) NOT NULL COMMENT '密码验证备注',
  PRIMARY KEY (`PWDVER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_pwd_validate` */

/*Table structure for table `s_region_outage` */

DROP TABLE IF EXISTS `s_region_outage`;

CREATE TABLE `s_region_outage` (
  `POWEROFF_ID` int(16) NOT NULL COMMENT '停电信息编码',
  `INFO_ID` varchar(16) NOT NULL COMMENT '信息整理编码',
  `SUBS_NAME` varchar(255) NOT NULL COMMENT '变电站名称',
  `LINE_NAME` varchar(255) NOT NULL COMMENT '线路名称',
  `PUB_TRAN_NAME` varchar(255) NOT NULL COMMENT '公变名称',
  `SCOPE` varchar(255) NOT NULL COMMENT '停电范围',
  `START_TIME` date NOT NULL COMMENT '停电开始时间',
  `STOP_DATE` date NOT NULL COMMENT '停电结束时间',
  `ORG_NO` int(16) NOT NULL COMMENT '停电所属供电单位',
  `TYPE_CODE` varchar(8) NOT NULL COMMENT '停电类型',
  `POWEROFF_AREA` varchar(255) NOT NULL COMMENT '停电区域',
  `POWEROFF_REASON` varchar(255) NOT NULL COMMENT '停电原因',
  PRIMARY KEY (`POWEROFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_region_outage` */

/*Table structure for table `s_retvisit_rslt` */

DROP TABLE IF EXISTS `s_retvisit_rslt`;

CREATE TABLE `s_retvisit_rslt` (
  `RSLT_ID` varchar(32) NOT NULL COMMENT '回访结果编码',
  `WK_NO` varchar(32) NOT NULL COMMENT '回访编号',
  `DEP_NO` varchar(16) NOT NULL COMMENT '回访部门',
  `EMP_NO` varchar(32) NOT NULL COMMENT '信息产生人员工号',
  `RET_VISIT_TIME` date NOT NULL COMMENT '回访时间',
  `SUCC_FLAG` varchar(8) NOT NULL COMMENT '发送成功标志',
  `FAIL_REASON` varchar(255) NOT NULL COMMENT '发送失败原因',
  `SITE_DATE` date NOT NULL COMMENT '回访到达现场时间',
  `ATTACH` blob NOT NULL COMMENT '回访附件',
  `CUST_OPINION` varchar(255) NOT NULL COMMENT '回访客户意见',
  PRIMARY KEY (`RSLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_retvisit_rslt` */

/*Table structure for table `s_retvisit_s_retvisit_tactic` */

DROP TABLE IF EXISTS `s_retvisit_s_retvisit_tactic`;

CREATE TABLE `s_retvisit_s_retvisit_tactic` (
  `WK_NO` varchar(32) NOT NULL COMMENT '回访编号',
  `TACTIC_ID` varchar(16) NOT NULL COMMENT '回访策略编码',
  `WKST_NO` varchar(32) NOT NULL COMMENT '被回访工单编号',
  `CONTENT` varchar(255) NOT NULL COMMENT '服务记录内容',
  `ACCEPT_DATE` date NOT NULL COMMENT '业务受理时间',
  `FINISH_TIME` date NOT NULL COMMENT '处理完成时间',
  `CONTACT_NAME` varchar(64) NOT NULL COMMENT '客户回访联系人',
  `TEL` varchar(32) NOT NULL COMMENT '联系电话',
  `PLAN_EMP_NO` varchar(32) NOT NULL COMMENT '计划回访人员',
  `PLAN_DATE` date NOT NULL COMMENT '计划回访时间',
  `SEND_FLAG` varchar(8) NOT NULL COMMENT '发送状态',
  `FAIL_TIMES` int(8) NOT NULL COMMENT '已回访失败次数',
  `RSLT` varchar(8) NOT NULL COMMENT '身份验证结果',
  PRIMARY KEY (`WK_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_retvisit_s_retvisit_tactic` */

/*Table structure for table `s_retvisit_tactic` */

DROP TABLE IF EXISTS `s_retvisit_tactic`;

CREATE TABLE `s_retvisit_tactic` (
  `TACTIC_ID` varchar(16) NOT NULL COMMENT '回访策略编码',
  `MODE_CODE` varchar(8) NOT NULL COMMENT '回访方式',
  `RATIO` int(12) NOT NULL COMMENT '回访比例',
  `EMP_TYPE_CODE` varchar(8) NOT NULL COMMENT '回访人员类别',
  `CONTENT` varchar(255) NOT NULL COMMENT '服务记录内容',
  `MAX_TIMES` int(5) NOT NULL COMMENT '回访最大次数',
  `TS` varchar(32) NOT NULL COMMENT '回访时间段',
  `RETVISIT_INTERVAL` int(5) NOT NULL COMMENT '回访间隔',
  `PRIO_CODE` varchar(8) NOT NULL COMMENT '回访优先级别',
  `LAST_DATE` date NOT NULL COMMENT '回访期限',
  PRIMARY KEY (`TACTIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_retvisit_tactic` */

/*Table structure for table `s_rpt` */

DROP TABLE IF EXISTS `s_rpt`;

CREATE TABLE `s_rpt` (
  `APP_NO` varchar(16) NOT NULL COMMENT '申请编号',
  `INVOLVE_DEPT` varchar(255) NOT NULL COMMENT '举报涉及部门',
  `INVOLVED_EMP_NAME` varchar(255) NOT NULL COMMENT '举报涉及个人',
  `ANONYM_FLAG` varchar(8) NOT NULL COMMENT '匿名标志',
  `SECRET_CODE` varchar(8) NOT NULL COMMENT '举报保密标志',
  `PS_COMPANY_RESP_FLAG` varchar(8) NOT NULL COMMENT '电力公司责任标志',
  `TRUE_FLAG` varchar(8) NOT NULL COMMENT '举报属实标志',
  `LEVEL_CODE` varchar(8) NOT NULL COMMENT '举报等级',
  PRIMARY KEY (`APP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_rpt` */

/*Table structure for table `s_srv_guide` */

DROP TABLE IF EXISTS `s_srv_guide`;

CREATE TABLE `s_srv_guide` (
  `ID` int(16) NOT NULL COMMENT '标识',
  `INFO_ID` varchar(16) NOT NULL COMMENT '信息整理编码',
  `NAME` varchar(255) NOT NULL COMMENT '服务指南名称',
  `CONTENT` varchar(255) NOT NULL COMMENT '维护内容',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_srv_guide` */

/*Table structure for table `s_srv_promise` */

DROP TABLE IF EXISTS `s_srv_promise`;

CREATE TABLE `s_srv_promise` (
  `ID` int(16) NOT NULL COMMENT '标识',
  `INFO_ID` varchar(16) NOT NULL COMMENT '信息整理编码',
  `HOTLINE_TEL_NO` varchar(255) NOT NULL COMMENT '投诉热线',
  `SRV_PROMISE` varchar(255) NOT NULL COMMENT '社会服务承诺',
  `MODEL_NORM` varchar(255) NOT NULL COMMENT '示范窗口规范',
  `POLITE_LANGUAGE` varchar(255) NOT NULL COMMENT '文明用语',
  `REGULATION` varchar(255) NOT NULL COMMENT '职工服务守则',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_srv_promise` */

/*Table structure for table `s_srv_req` */

DROP TABLE IF EXISTS `s_srv_req`;

CREATE TABLE `s_srv_req` (
  `ID` int(16) NOT NULL COMMENT '服务请求标识',
  `ID2` int(16) NOT NULL COMMENT '服务渠道标识',
  `SRV_MODE` varchar(8) DEFAULT NULL COMMENT '服务方式',
  `BUSI_TYPE_CODE` varchar(8) DEFAULT NULL COMMENT '受理业务类型',
  `SRV_EMP_NO` varchar(16) DEFAULT NULL COMMENT '服务人员',
  `CUST_NO` varchar(16) NOT NULL COMMENT '客户编号',
  `CONTACT_NAME` varchar(64) NOT NULL COMMENT '联系人',
  `ORDER_ID` int(16) NOT NULL COMMENT '工单编号',
  `CALLING_NO` varchar(256) NOT NULL COMMENT '主叫号码',
  `TEL` varchar(255) NOT NULL COMMENT '联系电话',
  `MOBILE` varchar(32) NOT NULL COMMENT '手机号码',
  `FAX_NO` varchar(255) NOT NULL COMMENT '传真电话',
  `EMAIL` varchar(255) NOT NULL COMMENT '电子邮件',
  `ADDR` varchar(255) NOT NULL COMMENT '联系地址',
  `REQ_DATE` date NOT NULL COMMENT '服务请求申请时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_srv_req` */

/*Table structure for table `s_subscibe` */

DROP TABLE IF EXISTS `s_subscibe`;

CREATE TABLE `s_subscibe` (
  `APP_NO` varchar(16) NOT NULL COMMENT '申请编号',
  `SUCC_FLAG` varchar(8) NOT NULL COMMENT '订阅成功标志',
  `FAIL_REASON` varchar(256) NOT NULL COMMENT '订阅失败原因',
  PRIMARY KEY (`APP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_subscibe` */

/*Table structure for table `s_subscibe_cont` */

DROP TABLE IF EXISTS `s_subscibe_cont`;

CREATE TABLE `s_subscibe_cont` (
  `SR_SUBSCRIBE_ID` varchar(32) NOT NULL COMMENT '订阅标识',
  `ITEM_CODE` varchar(8) NOT NULL COMMENT '订阅项目',
  `RCV_MODE` varchar(8) NOT NULL COMMENT '接收方式',
  `RCV_OBJ` varchar(32) NOT NULL COMMENT '接收目标',
  `BGN_DATE` date NOT NULL COMMENT '订阅开始日期',
  `END_DATE` date NOT NULL COMMENT '订阅结束日期',
  `SEND_TS` varchar(8) NOT NULL COMMENT '订阅发送时间段',
  `VALID_FLAG` varchar(8) NOT NULL COMMENT '有效标志',
  `CUST_NO` varchar(16) NOT NULL COMMENT '客户编号',
  PRIMARY KEY (`SR_SUBSCRIBE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_subscibe_cont` */

/*Table structure for table `s_subscibe_send` */

DROP TABLE IF EXISTS `s_subscibe_send`;

CREATE TABLE `s_subscibe_send` (
  `SEND_ID` varchar(32) NOT NULL COMMENT '订阅发送标识',
  `SR_SUBSCRIBE_ID` varchar(32) NOT NULL COMMENT '订阅标识',
  `SEND_CONTENT` varchar(255) NOT NULL COMMENT '订阅发送内容',
  `INFO_MADE_DATE` date NOT NULL COMMENT '信息产生时间',
  `INFO_MADE_MODE` varchar(8) NOT NULL COMMENT '信息产生方式',
  `EMP_NO` varchar(32) NOT NULL COMMENT '信息产生人员工号',
  `INFO_MAKER_NO` varchar(64) NOT NULL COMMENT '信息产生人员姓名',
  `SEND_FLAG` varchar(8) NOT NULL COMMENT '发送状态',
  `FAIL_TIMES` int(5) NOT NULL COMMENT '已发送失败次数',
  PRIMARY KEY (`SEND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_subscibe_send` */

/*Table structure for table `s_subscibe_send_rslt` */

DROP TABLE IF EXISTS `s_subscibe_send_rslt`;

CREATE TABLE `s_subscibe_send_rslt` (
  `SEND_RSLT_ID` varchar(32) NOT NULL COMMENT '订阅发送结果标识',
  `SEND_ID` varchar(32) NOT NULL COMMENT '订阅发送标识',
  `SEND_DATE` date NOT NULL COMMENT '发送时间',
  `SUCC_FLAG` varchar(8) NOT NULL COMMENT '发送成功标志',
  `FAIL_REASON` varchar(255) NOT NULL COMMENT '发送失败原因',
  `SENDER_NO` varchar(32) NOT NULL COMMENT '订阅发送人员',
  PRIMARY KEY (`SEND_RSLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_subscibe_send_rslt` */

/*Table structure for table `s_wkst_ext_attr` */

DROP TABLE IF EXISTS `s_wkst_ext_attr`;

CREATE TABLE `s_wkst_ext_attr` (
  `APP_NO` varchar(16) NOT NULL COMMENT '申请编号',
  `EXTEND_ATTR_ID` int(16) NOT NULL COMMENT '扩展属性值编码',
  `VALUE` varchar(255) NOT NULL COMMENT '扩展属性值',
  PRIMARY KEY (`APP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_wkst_ext_attr` */

/*Table structure for table `s_wkst_rela` */

DROP TABLE IF EXISTS `s_wkst_rela`;

CREATE TABLE `s_wkst_rela` (
  `APP_NO` varchar(16) NOT NULL COMMENT '申请编号',
  `RELA_WKST_NO` varchar(32) NOT NULL COMMENT '关联工单号',
  `WKST_REMARK` varchar(255) NOT NULL COMMENT '工单关联备注',
  PRIMARY KEY (`APP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `s_wkst_rela` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
