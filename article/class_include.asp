<%
DIM DLB(35,2)
		DLB(1,0) = "1001"
		DLB(1,1) = "����"
		DLB(2,0) = "1002"
		DLB(2,1) = "��"
		DLB(3,0) = "1003"
		DLB(3,1) = "����"
		DLB(4,0) = "1004"
		DLB(4,1) = "���"
		DLB(5,0) = "1005"
		DLB(5,1) = "����"
		DLB(6,0) = "1006"
		DLB(6,1) = "ʯ��"
		DLB(7,0) = "1007"
		DLB(7,1) = "��֬"
		DLB(8,0) = "1008"
		DLB(8,1) = "С��"
		DLB(9,0) = "1009"
		DLB(9,1) = "ʯ������"
		DLB(10,0) = "1010"
		DLB(10,1) = "���Ӽ�"
		DLB(11,0) = "1011"
		DLB(11,1) = "����"
		DLB(12,0) = "1012"
		DLB(12,1) = "��ֳ"
		DLB(13,0) = "1013"
		DLB(13,1) = "����"
		DLB(14,0) = "1014"
		DLB(14,1) = "ˮ��Ʒ"
		DLB(15,0) = "1015"
		DLB(15,1) = "���Ʒ"
		DLB(16,0) = "1016"
		DLB(16,1) = "����"
		DLB(17,0) = "1017"
		DLB(17,1) = "����"
		DLB(18,0) = "1018"
		DLB(18,1) = "��Ƿ�"
		DLB(19,0) = "1021"
		DLB(19,1) = "������"
		DLB(20,0) = "1020"
		DLB(20,1) = "ά����"
		DLB(21,0) = "1022"
		DLB(21,1) = "����"
		DLB(22,0) = "1024"
		DLB(22,1) = "΢��Ԫ��"
		DLB(23,0) = "1025"
		DLB(23,1) = "�ݲ�Ʒ"
		DLB(24,0) = "1026"
		DLB(24,1) = "���"
		DLB(25,0) = "1019"
		DLB(25,1) = "�ڻ�"
		DLB(26,0) = "1027"
		DLB(26,1) = "��"
		DLB(27,0) = "1028"
		DLB(27,1) = "�޻�"
	
	DIM XLB(70,2)
		XLB(1,0) = "1001"
		XLB(1,1) = "2055"
		XLB(1,2) = "���׵��׷�"
		XLB(2,0) = "1001"
		XLB(2,1) = "2056"
		XLB(2,2) = "DDGS"
		XLB(3,0) = "1007"
		XLB(3,1) = "2009"
		XLB(3,2) = "�����"
		XLB(4,0) = "1007"
		XLB(4,1) = "2036"
		XLB(4,2) = "����"
		XLB(5,0) = "1007"
		XLB(5,1) = "2037"
		XLB(5,2) = "����"
		XLB(6,0) = "1007"
		XLB(6,1) = "2038"
		XLB(6,2) = "������"
		XLB(7,0) = "1007"
		XLB(7,1) = "2039"
		XLB(7,2) = "������"
		XLB(8,0) = "1007"
		XLB(8,1) = "2040"
		XLB(8,2) = "��������"
		XLB(9,0) = "1008"
		XLB(9,1) = "2081"
		XLB(9,2) = "С�����"
		XLB(10,0) = "1008"
		XLB(10,1) = "2082"
		XLB(10,2) = "���÷�"
		XLB(11,0) = "1010"
		XLB(11,1) = "2001"
		XLB(11,2) = "�����"
		XLB(12,0) = "1010"
		XLB(12,1) = "2002"
		XLB(12,2) = "������"
		XLB(13,0) = "1010"
		XLB(13,1) = "2003"
		XLB(13,2) = "������"
		XLB(14,0) = "1010"
		XLB(14,1) = "2004"
		XLB(14,2) = "�������"
		XLB(15,0) = "1010"
		XLB(15,1) = "2010"
		XLB(15,2) = "������"
		XLB(16,0) = "1010"
		XLB(16,1) = "2011"
		XLB(16,2) = "ά����"
		XLB(17,0) = "1011"
		XLB(17,1) = "2005"
		XLB(17,2) = "����"
		XLB(18,0) = "1011"
		XLB(18,1) = "2006"
		XLB(18,2) = "����"
		XLB(19,0) = "1011"
		XLB(19,1) = "2007"
		XLB(19,2) = "������"
		XLB(20,0) = "1011"
		XLB(20,1) = "2008"
		XLB(20,2) = "��������"
		XLB(21,0) = "1011"
		XLB(21,1) = "2080"
		XLB(21,2) = "����"
		XLB(22,0) = "1016"
		XLB(22,1) = "2083"
		XLB(22,2) = "���׵��׷�"
		XLB(23,0) = "1021"
		XLB(23,1) = "2031"
		XLB(23,2) = "������"
		XLB(24,0) = "1021"
		XLB(24,1) = "2032"
		XLB(24,2) = "������"
		XLB(25,0) = "1021"
		XLB(25,1) = "2034"
		XLB(25,2) = "�հ���"
		XLB(26,0) = "1022"
		XLB(26,1) = "2041"
		XLB(26,2) = "������"
		XLB(27,0) = "1022"
		XLB(27,1) = "2042"
		XLB(27,2) = "������"
		XLB(28,0) = "1022"
		XLB(28,1) = "2038"
		XLB(28,2) = "������"
		XLB(29,0) = "1022"
		XLB(29,1) = "2007"
		XLB(29,2) = "������"
		XLB(30,0) = "1024"
		XLB(30,1) = "2060"
		XLB(30,2) = "����ͭ"
		XLB(31,0) = "1024"
		XLB(31,1) = "2061"
		XLB(31,2) = "��������"
		XLB(32,0) = "1024"
		XLB(32,1) = "2062"
		XLB(32,2) = "����п/����п"
		XLB(33,0) = "1024"
		XLB(33,1) = "2063"
		XLB(33,2) = "������"
		XLB(34,0) = "1024"
		XLB(34,1) = "2064"
		XLB(34,2) = "����þ"
		XLB(35,0) = "1024"
		XLB(35,1) = "2065"
		XLB(35,2) = "�����"
		XLB(36,0) = "1019"
		XLB(36,1) = "2012"
		XLB(36,2) = "�����ڻ�"
		XLB(37,0) = "1019"
		XLB(37,1) = "2013"
		XLB(37,2) = "����������"
		XLB(38,0) = "1019"
		XLB(38,1) = "2014"
		XLB(38,2) = "�Ϻ�����"
		XLB(39,0) = "1019"
		XLB(39,1) = "2015"
		XLB(39,2) = "�¼�Ԫ�ڻ�"
		XLB(40,0) = "1019"
		XLB(40,1) = "2016"
		XLB(40,2) = "���ڹ�����"
		XLB(41,0) = "1019"
		XLB(41,1) = "2017"
		XLB(41,2) = "�»��ƾ�"
		XLB(42,0) = "1019"
		XLB(42,1) = "2018"
		XLB(42,2) = "����������"
		XLB(43,0) = "1019"
		XLB(43,1) = "2019"
		XLB(43,2) = "�϶��ڻ�"
		XLB(44,0) = "1019"
		XLB(44,1) = "2020"
		XLB(44,2) = "�����ڻ�"
		XLB(45,0) = "1019"
		XLB(45,1) = "2024"
		XLB(45,2) = "�����ڻ�"
		XLB(46,0) = "1019"
		XLB(46,1) = "2022"
		XLB(46,2) = "JCI����"
		XLB(47,0) = "1019"
		XLB(47,1) = "2023"
		XLB(47,2) = "�����ڻ���˾"
		XLB(48,0) = "1019"
		XLB(48,1) = "2025"
		XLB(48,2) = "�㷢�ڻ�"
		XLB(49,0) = "1019"
		XLB(49,1) = "2026"
		XLB(49,2) = "��ͨ�ڻ�"
		XLB(50,0) = "1019"
		XLB(50,1) = "2070"
		XLB(50,2) = "�й��ڻ�"
		XLB(51,0) = "1019"
		XLB(51,1) = "2071"
		XLB(51,2) = "�г��ڻ�"
		XLB(52,0) = "1019"
		XLB(52,1) = "2072"
		XLB(52,2) = "�����ڻ�"
		XLB(53,0) = "1019"
		XLB(53,1) = "2073"
		XLB(53,2) = "�����ڻ�"
		XLB(54,0) = "1019"
		XLB(54,1) = "2074"
		XLB(54,2) = "�����ڻ�"
		XLB(55,0) = "1019"
		XLB(55,1) = "2075"
		XLB(55,2) = "����ڻ�"
		XLB(56,0) = "1019"
		XLB(56,1) = "2076"
		XLB(56,2) = "ʵ���ڻ�"
		XLB(57,0) = "1019"
		XLB(57,1) = "2077"
		XLB(57,2) = "�����ڻ�"
		XLB(58,0) = "1019"
		XLB(58,1) = "2078"
		XLB(58,2) = "��½�ڻ�"
		XLB(59,0) = "1012"
		XLB(59,1) = "2090"
		XLB(59,2) = "����"
		XLB(60,0) = "1012"
		XLB(60,1) = "2091"
		XLB(60,2) = "����"
		XLB(61,0) = "1012"
		XLB(61,1) = "2092"
		XLB(61,2) = "����"
		XLB(62,0) = "1012"
		XLB(62,1) = "1014"
		XLB(62,2) = "ˮ��"
		XLB(63,0) = "1028"
		XLB(63,1) = "2039"
		XLB(63,2) = "������"
		XLB(64,0) = "1028"
		XLB(64,1) = "2080"
		XLB(64,2) = "����"
		XLB(65,0) = "1028"
		XLB(65,1) = "2006"
		XLB(65,2) = "����"
		XLB(66,0) = "1028"
		XLB(66,1) = "2004"
		XLB(66,2) = "����"
		XLB(67,0) = "1004"
		XLB(67,1) = "2093"
		XLB(67,2) = "����"
		XLB(68,0) = "1004"
		XLB(68,1) = "2094"
		XLB(68,2) = "�������"
		XLB(69,0) = "1001"
		XLB(69,1) = "2095"
		XLB(69,2) = "ȼ���Ҵ�"
		XLB(70,0) = "1007"
		XLB(70,1) = "2096"
		XLB(70,2) = "������"
	DIM CDGJ(20,2)
		CDGJ(1,0) = "ALL"
		CDGJ(1,1) = "����"
		CDGJ(2,0) = "USA"
		CDGJ(2,1) = "����"
		CDGJ(3,0) = "CAN"
		CDGJ(3,1) = "���ô�"
		CDGJ(4,0) = "PRU"
		CDGJ(4,1) = "��³"
		CDGJ(5,0) = "ZHL"
		CDGJ(5,1) = "����"
		CDGJ(6,0) = "ARG"
		CDGJ(6,1) = "����͢"
		CDGJ(7,0) = "BRA"
		CDGJ(7,1) = "����"
		CDGJ(8,0) = "EUR"
		CDGJ(8,1) = "ŷ��"
		CDGJ(9,0) = "CHN"
		CDGJ(9,1) = "�й�"
		CDGJ(10,0) = "CHI"
		CDGJ(10,1) = "����"
		CDGJ(11,0) = "JAP"
		CDGJ(11,1) = "�ձ�"
		CDGJ(12,0) = "HKR"
		CDGJ(12,1) = "����"
		CDGJ(13,0) = "MYL"
		CDGJ(13,1) = "��������"
		CDGJ(14,0) = "HKO"
		CDGJ(14,1) = "�۰�̨"
		CDGJ(15,0) = "EAS"
		CDGJ(15,1) = "����"
		CDGJ(16,0) = "IND"
		CDGJ(16,1) = "ӡ��������"
		CDGJ(17,0) = "SOU"
		CDGJ(17,1) = "�Ϸ�"
		CDGJ(18,0) = "OTHERS"
		CDGJ(18,1) = "����"
		CDGJ(19,0) = "THA"
		CDGJ(19,1) = "̩��"
		CDGJ(20,0) = "VIE"
		CDGJ(20,1) = "Խ��"
		
	DIM DLM(17,2)
		DLM(1,0) = "990001"
		DLM(1,1) = "Ʒ��Ƶ��"
		DLM(2,0) = "990002"
		DLM(2,1) = "���羭��"
		DLM(3,0) = "990004"
		DLM(3,1) = "�۸�����"
		DLM(4,0) = "990005"
		DLM(4,1) = "����Ԥ��"
		DLM(5,0) = "990010"
		DLM(5,1) = "����ũҵ"
		DLM(6,0) = "990012"
		DLM(6,1) = "������ֳ"
		DLM(7,0) = "990013"
		DLM(7,1) = "�ۿں���"
		DLM(8,0) = "990014"
		DLM(8,1) = "���߶�̬"
		DLM(9,0) = "990015"
		DLM(9,1) = "�ۺ���Ѷ"
		DLM(10,0) = "990016"
		DLM(10,1) = "ͳ������"
		DLM(11,0) = "990017"
		DLM(11,1) = "�������"
		DLM(12,0) = "990018"
		DLM(12,1) = "�ڻ��ټ�"
		DLM(13,0) = "990020"
		DLM(13,1) = "����Ͷ��"
		DLM(14,0) = "990021"
		DLM(14,1) = "�˷ѻ���"
		DLM(15,0) = "990022"
		DLM(15,1) = "����"
		DLM(16,0) = "990023"
		DLM(16,1) = "JCIͼ��"
		DLM(17,0) = "990024"
		DLM(17,1) = "��Դȼ��"
	
	DIM XLM(120,2)	
		XLM(1,0) = "990001"
		XLM(1,1) = "100046"
		XLM(1,2) = "�����ӵ�"
		XLM(2,0) = "990001"
		XLM(2,1) = "100047"
		XLM(2,2) = "��ر���"
		XLM(3,0) = "990001"
		XLM(3,1) = "100077"
		XLM(3,2) = "�г��챨"
		XLM(4,0) = "990001"
		XLM(4,1) = "100016"
		XLM(4,2) = "�ڻ�"
		XLM(5,0) = "990001"
		XLM(5,1) = "100070"
		XLM(5,2) = "ó��"
		XLM(6,0) = "990001"
		XLM(6,1) = "100002"
		XLM(6,2) = "ÿ������"
		XLM(7,0) = "990001"
		XLM(7,1) = "100003"
		XLM(7,2) = "�¶�����"
		XLM(8,0) = "990001"
		XLM(8,1) = "100004"
		XLM(8,2) = "�������"
		XLM(9,0) = "990001"
		XLM(9,1) = "100118"
		XLM(9,2) = "�����г�"
		XLM(10,0) = "990001"
		XLM(10,1) = "100117"
		XLM(10,2) = "�����г�"
		XLM(11,0) = "990001"
		XLM(11,1) = "100120"
		XLM(11,2) = ""
		XLM(12,0) = "990001"
		XLM(12,1) = "100059"
		XLM(12,2) = ""
		XLM(13,0) = "990001"
		XLM(13,1) = "100129"
		XLM(13,2) = "�г���̬"
		XLM(14,0) = "990001"
		XLM(14,1) = "100119"
		XLM(14,2) = "�۸�̬"
		XLM(15,0) = "990001"
		XLM(15,1) = "100125"
		XLM(15,2) = "��ҵ��̬"
		XLM(16,0) = "990001"
		XLM(16,1) = "100146"
		XLM(16,2) = "Ʒ��֪ʶ"
		XLM(17,0) = "990001"
		XLM(17,1) = "100136"
		XLM(17,2) = ""
		XLM(18,0) = "990001"
		XLM(18,1) = "100137"
		XLM(18,2) = "����ũ��"
		XLM(19,0) = "990001"
		XLM(19,1) = "100138"
		XLM(19,2) = "����ͳ��"
		XLM(20,0) = "990001"
		XLM(20,1) = "100139"
		XLM(20,2) = "ŷ���г�"
		XLM(111,0) = "990001"
		XLM(111,1) = "100164"
		XLM(111,2) = "������Ѷ"
		XLM(112,0) = "990001"
		XLM(112,1) = "100165"
		XLM(112,2) = "�г��۵�"
		
		
		XLM(21,0) = "990002"
		XLM(21,1) = "100134"
		XLM(21,2) = "ԭ���ڻ�"
		XLM(22,0) = "990002"
		XLM(22,1) = "100135"
		XLM(22,2) = "����г�"
		XLM(23,0) = "990002"
		XLM(23,1) = "100161"
		XLM(23,2) = "��������"
		XLM(24,0) = "990002"
		XLM(24,1) = "100147"
		XLM(24,2) = "CRBָ��"
		XLM(25,0) = "990002"
		XLM(25,1) = "100148"
		XLM(25,2) = "���޵غ�ָ��"
		XLM(26,0) = "990002"
		XLM(26,1) = "100162"
		XLM(26,2) = "���ʻƽ�"
		XLM(27,0) = "990002"
		XLM(27,1) = "100163"
		XLM(27,2) = "���̶�̬"
		XLM(28,0) = "990002"
		XLM(28,1) = "100008"
		XLM(28,2) = "ŷ��"
		XLM(29,0) = "990002"
		XLM(29,1) = "100010"
		XLM(29,2) = "����"
		XLM(30,0) = "990002"
		XLM(30,1) = "100005"
		XLM(30,2) = "����"
		XLM(31,0) = "990002"
		XLM(31,1) = "100006"
		XLM(31,2) = "�й�"
		XLM(32,0) = "990002"
		XLM(32,1) = "100007"
		XLM(32,2) = "����"
		XLM(33,0) = "990002"
		XLM(33,1) = "100009"
		XLM(33,2) = "����"
		
		XLM(34,0) = "990004"
		XLM(34,1) = "100050"
		XLM(34,2) = "�����ձ�"
		XLM(35,0) = "990004"
		XLM(35,1) = "100051"
		XLM(35,2) = "�����ձ�"
		
		XLM(36,0) = "990005"
		XLM(36,1) = "100019"
		XLM(36,2) = "�й�"
		XLM(37,0) = "990005"
		XLM(37,1) = "100020"
		XLM(37,2) = "����"
		XLM(38,0) = "990005"
		XLM(38,1) = "100021"
		XLM(38,2) = "����"
		XLM(39,0) = "990005"
		XLM(39,1) = "100022"
		XLM(39,2) = "����"
		XLM(40,0) = "990005"
		XLM(40,1) = "100023"
		XLM(40,2) = "����"
		XLM(41,0) = "990005"
		XLM(41,1) = "100024"
		XLM(41,2) = "����֪ʶ"
		XLM(42,0) = "990005"
		XLM(42,1) = "100149"
		XLM(42,2) = "����Ԥ��"
		XLM(43,0) = "990005"
		XLM(43,1) = "100150"
		XLM(43,2) = "����Ԥ��"
		
		
		XLM(44,0) = "990010"
		XLM(44,1) = "100041"
		XLM(44,2) = "����"
		XLM(45,0) = "990010"
		XLM(45,1) = "100042"
		XLM(45,2) = "����"
		XLM(46,0) = "990010"
		XLM(46,1) = "100043"
		XLM(46,2) = "ŷ��"
		XLM(47,0) = "990010"
		XLM(47,1) = "100044"
		XLM(47,2) = "�й�"
		XLM(48,0) = "990010"
		XLM(48,1) = "100045"
		XLM(48,2) = "����"
		XLM(49,0) = "990010"
		XLM(49,1) = "100040"
		XLM(49,2) = "����"
		
		XLM(50,0) = "990012"
		XLM(50,1) = "100052"
		XLM(50,2) = "����"
		XLM(51,0) = "990012"
		XLM(51,1) = "100054"
		XLM(51,2) = "�۸�"
		XLM(52,0) = "990012"
		XLM(52,1) = "100053"
		XLM(52,2) = "����"
		XLM(53,0) = "990012"
		XLM(53,1) = "100055"
		XLM(53,2) = "����"
		XLM(54,0) = "990012"
		XLM(54,1) = "100065"
		XLM(54,2) = "����"
		XLM(55,0) = "990012"
		XLM(55,1) = "100066"
		XLM(55,2) = "ˮ��"
		XLM(56,0) = "990012"
		XLM(56,1) = "100067"
		XLM(56,2) = "��̬"
		XLM(57,0) = "990012"
		XLM(57,1) = "100068"
		XLM(57,2) = "����"
		
		XLM(58,0) = "990013"
		XLM(58,1) = "100057"
		XLM(58,2) = "Ԥ������"
		XLM(59,0) = "990013"
		XLM(59,1) = "100030"
		XLM(59,2) = "ͳ������"
		
		
		XLM(60,0) = "990014"
		XLM(60,1) = "100058"
		XLM(60,2) = "ũҵ����"
		XLM(61,0) = "990014"
		XLM(61,1) = "100060"
		XLM(61,2) = "��������"
		XLM(62,0) = "990014"
		XLM(62,1) = "100061"
		XLM(62,2) = "��������"
		XLM(63,0) = "990014"
		XLM(63,1) = "100062"
		XLM(63,2) = "ó������"
		XLM(64,0) = "990014"
		XLM(64,1) = "100063"
		XLM(64,2) = "�������"
		XLM(65,0) = "990014"
		XLM(65,1) = "100064"
		XLM(65,2) = "���ұ�׼"
		
		XLM(66,0) = "990015"
		XLM(66,1) = "100038"
		XLM(66,2) = "����԰��"
		XLM(67,0) = "990015"
		XLM(67,1) = "100039"
		XLM(67,2) = "�Ƽ�����"
		XLM(68,0) = "990015"
		XLM(68,1) = "100049"
		XLM(68,2) = "��չ��Ѷ"
		XLM(69,0) = "990015"
		XLM(69,1) = "100036"
		XLM(69,2) = "������̸"
		XLM(70,0) = "990015"
		XLM(70,1) = "100037"
		XLM(70,2) = "�����ڻ�"
		XLM(71,0) = "990015"
		XLM(71,1) = "100048"
		XLM(71,2) = "�������"
		
		XLM(76,0) = "990016"
		XLM(76,1) = "100075"
		XLM(76,2) = "����ͼ��"
		XLM(77,0) = "990016"
		XLM(77,1) = "100076"
		XLM(77,2) = "��������"
		XLM(73,0) = "990016"
		XLM(73,1) = "100072"
		XLM(73,2) = "��������"
		XLM(74,0) = "990016"
		XLM(74,1) = "100073"
		XLM(74,2) = "����ͼ��"
		XLM(75,0) = "990016"
		XLM(75,1) = "100074"
		XLM(75,2) = "�۸�ͼ��"
		XLM(72,0) = "990016"
		XLM(72,1) = "100071"
		XLM(72,2) = "ƽ��ͼ��"
		
		XLM(78,0) = "990017"
		XLM(78,1) = "100081"
		XLM(78,2) = "��������"
		XLM(79,0) = "990017"
		XLM(79,1) = "100082"
		XLM(79,2) = "��������"
		XLM(80,0) = "990017"
		XLM(80,1) = "100080"
		XLM(80,2) = "S.K�ʾ�����"
		XLM(81,0) = "990017"
		XLM(81,1) = "100079"
		XLM(81,2) = "�챦����"
		XLM(82,0) = "990017"
		XLM(82,1) = "100100"
		XLM(82,2) = "JCI����"
		
		XLM(83,0) = "990018"
		XLM(83,1) = "100113"
		XLM(83,2) = "JCI����"
		XLM(84,0) = "990018"
		XLM(84,1) = "100114"
		XLM(84,2) = "CBOT����"
		XLM(85,0) = "990018"
		XLM(85,1) = "100115"
		XLM(85,2) = "�����ڻ�"
		XLM(86,0) = "990018"
		XLM(86,1) = "100116"
		XLM(86,2) = "�����ڻ�"
		
		
		XLM(87,0) = "990020"
		XLM(87,1) = "100124"
		XLM(87,2) = "����"
		XLM(88,0) = "990020"
		XLM(88,1) = "100123"
		XLM(88,2) = "����"
		XLM(89,0) = "990020"
		XLM(89,1) = "100122"
		XLM(89,2) = "��׼"
		XLM(90,0) = "990020"
		XLM(90,1) = "100121"
		XLM(90,2) = "����"
		
		XLM(91,0) = "990021"
		XLM(91,1) = "100130"
		XLM(91,2) = "�˷Ѷ�̬"
		XLM(92,0) = "990021"
		XLM(92,1) = "100131"
		XLM(92,2) = "�����"
		XLM(93,0) = "990021"
		XLM(93,1) = "100132"
		XLM(93,2) = "���ָ��"
		XLM(94,0) = "990021"
		XLM(94,1) = "100133"
		XLM(94,2) = "������Ѷ"
		XLM(95,0) = "990021"
		XLM(95,1) = "100151"
		XLM(95,2) = "�����г�"
		XLM(96,0) = "990021"
		XLM(96,1) = "100152"
		XLM(96,2) = "�����г�"
		
		XLM(97,0) = "990022"
		XLM(97,1) = "100140"
		XLM(97,2) = "USDA�¶�"
		XLM(98,0) = "990022"
		XLM(98,1) = "100141"
		XLM(98,2) = "USDA�ܶ�"
		XLM(99,0) = "990022"
		XLM(99,1) = "100142"
		XLM(99,2) = "���"
		XLM(100,0) = "990022"
		XLM(100,1) = "100143"
		XLM(100,2) = "����"
		XLM(101,0) = "990022"
		XLM(101,1) = "100144"
		XLM(101,2) = "���챨��"
		XLM(102,0) = "990022"
		XLM(102,1) = "100145"
		XLM(102,2) = "��ҵ����"
		
		XLM(103,0) = "990023"
		XLM(103,1) = "100153"
		XLM(103,2) = "���ڼ۸�ͼ��"
		XLM(104,0) = "990023"
		XLM(104,1) = "100154"
		XLM(104,2) = "������ͼ��"
		XLM(105,0) = "990023"
		XLM(105,1) = "100155"
		XLM(105,2) = "���ͼ��"
		XLM(106,0) = "990023"
		XLM(106,1) = "100156"
		XLM(106,2) = "ѹե����ͼ��"
		XLM(107,0) = "990023"
		XLM(107,1) = "100157"
		XLM(107,2) = "��������ͼ��"
		XLM(108,0) = "990023"
		XLM(108,1) = "100158"
		XLM(108,2) = "����ͼ��"
		XLM(109,0) = "990023"
		XLM(109,1) = "100159"
		XLM(109,2) = "����ͼ��"
		XLM(110,0) = "990023"
		XLM(110,1) = "100160"
		XLM(110,2) = "���ڼ۸�ͼ��"
		XLM(113,0) = "990024"
		XLM(113,1) = "100166"
		XLM(113,2) = "ȼ���Ҵ�"
		XLM(114,0) = "990024"
		XLM(114,1) = "100167"
		XLM(114,2) = "�������"
		XLM(115,0) = "990024"
		XLM(115,1) = "100134"
		XLM(115,2) = "ʯ���ڻ�"
		XLM(116,0) = "990024"
		XLM(116,1) = "100129"
		XLM(116,2) = "�г���̬"
		XLM(117,0) = "990018"
		XLM(117,1) = "100168"
		XLM(117,2) = "����ڻ�"
		XLM(118,0) = "990018"
		XLM(118,1) = "100169"
		XLM(118,2) = "�����ڻ�"
		XLM(119,0) = "990022"
		XLM(119,1) = "100170"
		XLM(119,2) = "USGC�ܶȱ���"
		
	DIM QHBJ(23,2)
		QHBJ(1,0) = "2012"
		QHBJ(1,1) = "�����ڻ�"
		QHBJ(2,0) = "2013"
		QHBJ(2,1) = "����������"
		QHBJ(3,0) = "2014"
		QHBJ(3,1) = "�Ϻ�����"
		QHBJ(4,0) = "2015"
		QHBJ(4,1) = "�¼�Ԫ�ڻ�"
		QHBJ(5,0) = "2016"
		QHBJ(5,1) = "���ڹ�����"
		QHBJ(6,0) = "2017"
		QHBJ(6,1) = "�»��ƾ�"
		QHBJ(7,0) = "2018"
		QHBJ(7,1) = "����������"
		QHBJ(8,0) = "2019"
		QHBJ(8,1) = "�϶��ڻ�"
		QHBJ(9,0) = "2020"
		QHBJ(9,1) = "�����ڻ�"
		QHBJ(10,0) = "2024"
		QHBJ(10,1) = "�����ڻ�"
		QHBJ(11,0) = "2022"
		QHBJ(11,1) = "JCI����"
		QHBJ(12,0) = "2023"
		QHBJ(12,1) = "�����ڻ���˾"
		QHBJ(13,0) = "2025"
		QHBJ(13,1) = "�㷢�ڻ�"
		QHBJ(14,0) = "2026"
		QHBJ(14,1) = "��ͨ�ڻ�"
		QHBJ(15,0) = "2070"
		QHBJ(15,1) = "�й��ڻ�"
		QHBJ(16,0) = "2071"
		QHBJ(16,1) = "�г��ڻ�"
		QHBJ(17,0) = "2072"
		QHBJ(17,1) = "�����ڻ�"
		QHBJ(18,0) = "2073"
		QHBJ(18,1) = "�����ڻ�"
		QHBJ(19,0) = "2074"
		QHBJ(19,1) = "�����ڻ�"
		QHBJ(20,0) = "2075"
		QHBJ(20,1) = "����ڻ�"
		QHBJ(21,0) = "2076"
		QHBJ(21,1) = "ʵ���ڻ�"
		QHBJ(22,0) = "2077"
		QHBJ(22,1) = "�����ڻ�"
		QHBJ(23,0) = "2078"
		QHBJ(23,1) = "��½�ڻ�"
		
	DIM ZTBD(8,2)
		ZTBD(1,0) = "QLG"
		ZTBD(1,1) = "������"
		ZTBD(2,0) = "RMB"
		ZTBD(2,1) = "�������ֵ"
		ZTBD(3,0) = "ZLQ"
		ZTBD(3,1) = "�������������"
		ZTBD(4,0) = "SYNY"
		ZTBD(4,1) = "ʯ����Դ"
		ZTBD(5,0) = "HQYC"
		ZTBD(5,1) = "����Ԥ��"
		ZTBD(6,0) = "SN"
		ZTBD(6,1) = "��ũ"
		ZTBD(7,0) = "LRB"
		ZTBD(7,1) = "������"
		ZTBD(8,0) = "ZLG"
		ZTBD(8,1) = "������"
	DIM RENSHU(25)
		RENSHU(1) = "admin_lq"
		RENSHU(2) = "jennychen"
		RENSHU(3) = "guoshi"
		RENSHU(4) = "guoshi"
		RENSHU(5) = "lele"
		RENSHU(6) = "hanver"
		RENSHU(7) = "sylvia"
		RENSHU(8) = "sunny"
		RENSHU(9) = "tommy"
		RENSHU(10) = "monica"
		RENSHU(11) = "Stephen"
		RENSHU(12) = "jenny"
		RENSHU(13) = "lina"
		RENSHU(14) = "leon"
		RENSHU(15) = "cherry"
		RENSHU(16) = "weijiang"
		RENSHU(17) = "larry"
		RENSHU(18) = "alice"
		RENSHU(19) = "Ningli"
		RENSHU(20) = "cindy"
		RENSHU(21) = "robin"
		RENSHU(22) = "nancy"
		RENSHU(23) = "Denise"
		RENSHU(24) = "Jade"
		
		
%>