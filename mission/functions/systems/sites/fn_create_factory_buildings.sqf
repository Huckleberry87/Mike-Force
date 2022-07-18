/*
	File: fn_create_factory_buildings.sqf
	Author: Cerebral
	Public: No
	
	Description:
		Creates buildings for a PAVN Factory.
	
	Parameter(s):
		_position - Position [Position]
	
	Returns: nothing
	
	Example(s): none
	
	0: STRING	- Classname
	1: ARRAY	- Position [delta X, delta Y, z]
	2: NUMBER	- Azimuth
	3: NUMBER	- Fuel
	4: NUMBER	- Damage
	5: ARRAY	- Return from BIS_fnc_getPitchBank (only if 2nd param is true)
	6: STRING	- vehicleVarName
	7: STRING	- Initialization commands
	8: BOOLEAN	- Enable simulation
	9: BOOLEAN	- Position is ASL
*/

params ["_position"];

vn_mf_factory_compositions = [];

if(toLower(worldName) in ["cam_lao_nam", "vn_khe_sanh"])then {
	vn_mf_factory_compositions = [
		[
			["vn_o_armor_type63_01",[-3.75635,-0.803223,0.0749989],180.535,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_03",[6.37354,3.01221,1.38496],268.676,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_01",[6.36963,5.98193,1.05771],269.694,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_06",[9.52197,2.25537,1.46346],179.777,1,0,[0,-0],"","",false,false], 
			["vn_o_nva_65_static_zpu4",[6.12158,4.7583,6.00192],89.514,1,0,[0,0],"","",false,false], 
			["Land_vn_usaf_revetment_helipad_02",[13.4565,-5.3999,-0.00240421],0.473,1,0,[0,0],"","",false,false], 
			["vn_o_armor_type63_01",[-12.2124,-1.02393,0.0749989],178.4,1,0,[0,-0],"","",false,false], 
			["Land_Map_unfolded_F",[9.97461,7.9458,1.18689],337.553,1,0,[0,0],"","",false,false], 
			["vn_o_air_mi2_04_01",[11.7339,-5.59619,-0.116121],89.314,1,0,[0,0],"","",false,false], 
			["Land_WoodenTable_large_F",[10.5151,8.1709,0.328636],268.464,1,0,[0,0],"","",false,false], 
			["vn_o_prop_t102e_01",[10.9131,8.0918,1.19323],26.5895,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_13",[11.8052,6.57568,1.88872],89.4576,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_06",[9.7251,10.1772,1.96181],0.158364,1,0,[0,0],"","",false,false], 
			["Land_vn_wf_vehicle_service_point_east",[-13.0952,7.40479,0.0659528],181.648,1,0,[5.18342e-007,2.59775e-006],"","",false,false], 
			["Land_vn_cementworks_01_grey_f",[-0.279785,20.5488,0],269.532,1,0,[0,0],"","",false,false], 
			["Land_Net_Fence_Gate_F",[-8.12256,-18.9917,0],179.946,1,0,[0,-0],"","",false,false], 
			["vn_o_nva_static_pk_high",[15.4258,13.7017,1.14046],180.732,1,0,[0.140406,0.0635871],"","",false,false], 
			["vn_o_armor_type63_01",[-20.8354,-0.472168,0.0749989],179.345,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_4m_F",[-0.12207,-20.9395,1.56072],88.7245,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-10.2212,-18.7769,1.62216],181.843,1,0,[0,0],"","",false,false], 
			["Land_vn_fuel_tank_stairs",[-2.19336,20.7432,0.473044],0.119,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_4m_F",[-0.0517578,-23.375,1.56072],88.7245,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[23.8774,3.72461,1.62216],89.8709,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[23.8735,-4.2832,1.62216],90.1429,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-2.08301,-25.2251,1.62215],181.742,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-18.1963,-18.5396,1.62215],181.571,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[5.93896,-25.4868,1.622],182.014,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[23.8774,11.748,1.62215],90.1429,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[23.8735,-12.2617,1.62216],89.8709,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-10.0845,-24.9595,1.62215],182.014,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[13.8765,-25.7671,1.62215],182.014,1,0,[0,0],"","",false,false], 
			["Land_vn_strazni_vez",[-28.4795,-15.1694,0],1.37287,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-30.0874,0.669922,1.622],90.044,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-18.0596,-24.6987,1.62216],181.742,1,0,[0,0],"","",false,false], 
			["Land_vn_strazni_vez",[23.4971,-20.3418,0],178.218,1,0,[0,-0],"","",false,false], 
			["Land_Net_Fence_Gate_F",[-22.5347,-26.4692,0],91.9677,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[23.8813,19.7559,1.62216],89.8709,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-30.1187,-7.40234,1.62215],90.0442,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-30.0991,8.67773,1.62215],90.0442,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[23.8696,-20.2695,1.62201],90.143,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-26.2017,-18.2983,1.62215],181.843,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[20.0229,-25.9585,1.62216],182.014,1,0,[0,0],"","",false,false], 
			["vn_o_nva_static_pk_high",[15.3799,29.2798,1.1404],180.748,1,0,[0.144632,0.0602267],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-30.0615,-14.416,1.622],269.272,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_06",[-30.2573,14.814,1.34124],87.585,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_zpu4",[-26.9839,17.7192,8.91143],5.787,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_4m_F",[23.8643,-24.2354,1.56072],88.7245,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_13",[-30.2241,17.4214,3.41115],90.067,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-26.063,-24.4331,1.62216],182.014,1,0,[0,0],"","",false,false], 
			["Land_vn_strazni_vez",[19.813,30.811,0],89.2912,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_06",[-30.3345,20.0347,1.24929],86.61,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[23.8599,27.6504,1.62216],90.1429,1,0,[0,-0],"","",false,false], 
			["Land_Net_Fence_Gate_F",[-30.0151,-16.313,0],270.512,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[19.918,31.46,1.622],359.151,1,0,[0,0],"","",false,false]
		],
		[
			["Land_Map_unfolded_F",[2.93018,0.445313,0.907043],121.485,1,0,[0,-0],"","",false,false], 
			["Land_WoodenTable_small_F",[3.14063,0.827148,0.0424509],0,1,0,[0,0],"","",false,false], 
			["vn_o_prop_t102e_01",[3.19971,1.13428,0.907043],83.3211,1,0,[0,0],"","",false,false], 
			["vn_o_wheeled_z157_fuel_nvam",[0.289551,6.69287,-0.0194654],269.254,1,0,[0.111906,0.0559846],"","",false,false], 
			["Land_vn_controltower_01_f",[1.50732,-1.58545,0.052927],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.0518,2.19971,-0.000999928],90.9541,1,0,[0,-0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.0459,3.56104,0.531906],90.9541,1,0,[0,-0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.001,5.01611,-0.000999928],90.9541,1,0,[0,-0],"","",false,false], 
			["Land_BagFence_Long_F",[-12,7.90576,-0.000999928],88.9019,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.8691,-7.76855,-0.000999928],270.613,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.043,9.26709,0.531906],88.9019,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.8672,-9.12988,0.531906],270.613,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.0498,10.7241,-0.000999928],88.9019,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.9033,-10.5859,-0.000999928],270.613,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_zpu4",[2.91895,16.5576,-0.0749998],89.514,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.875,-13.3975,-0.000999928],269.542,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.8477,-14.7588,0.531906],269.542,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-12.8574,-16.2139,-0.000999928],269.542,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-0.33252,21.3467,1.62216],359.876,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-20.7246,-6.90332,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["vn_o_air_mi2_05_02",[-20.7646,6.62549,-0.186559],89.805,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[21.3066,-6.97168,-0.000999928],359.168,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[7.70459,21.3477,1.62216],359.876,1,0,[0,0],"","",false,false], 
			["Land_vn_usaf_revetment_helipad_02",[-18.4399,6.32227,-0.00240421],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-8.31885,21.333,1.62215],359.876,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-20.0098,11.5166,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-22.0869,-6.91895,0.531906],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-10.1265,21.3203,1.62215],359.876,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_09_01",[-11.0352,21.1133,0],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[22.7627,-6.97168,0.531906],359.168,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[21.0264,11.376,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["vn_o_air_mi2_05_02",[-20.3506,-12.5225,-0.186559],90.432,1,0,[0,-0],"","",false,false], 
			["Land_BagFence_Long_F",[-21.3721,11.499,0.531906],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-23.542,-6.89844,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[24.124,-6.93457,-0.000999928],359.168,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[22.54,11.3408,0.531906],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-22.8271,11.5205,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_vn_usaf_revetment_helipad_02",[-18.8345,-12.0498,-0.00240421],0,1,0,[0,0],"","",false,false], 
			["Land_vn_usaf_revetment_helipad_02",[29.0356,5.2627,-0.00240421],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[25.3604,-6.90918,-0.000999928],359.36,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[23.9854,11.3789,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[15.7261,21.3682,1.62215],359.876,1,0,[0,0],"","",false,false], 
			["Land_Net_Fence_Gate_F",[-5.12402,-26.6577,0],180.084,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-26.501,-6.89355,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_Net_Fence_Gate_F",[-22.1133,21.3901,0],180.084,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[6.77783,-26.6943,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-7.1499,-26.6387,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[26.8164,-6.91406,0.531906],359.36,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[17.812,21.3701,1.62216],359.876,1,0,[0,0],"","",false,false], 
			["vn_o_air_mi2_04_01",[27.2813,5.22168,-0.186559],88.781,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[7.95459,-26.6953,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-8.03662,-26.6563,1.62216],179.936,1,0,[0,-0],"","",false,false], 
			["vn_sign_town_d_09_01",[18.499,21.1748,7.62939e-006],0,1,0,[0,0],"","",false,false], 
			["Land_vn_usaf_revetment_helipad_02",[28.8286,-12.0029,-0.00240421],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-25.7891,11.543,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-27.8633,-6.90918,0.531906],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[28.1777,-6.88184,-0.000999928],359.36,1,0,[0,0],"","",false,false], 
			["Land_vn_wf_vehicle_service_point_east",[0.667969,29.0059,0],181.254,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[26.876,11.3643,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_dshkm_high_02",[8.6543,26.2363,7.95605],180.23,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-27.1504,11.5264,0.531906],0,1,0,[0,0],"","",false,false], 
			["vn_o_air_mi2_05_05",[27.4219,-11.4111,-0.186559],90.608,1,0,[0,-0],"","",false,false], 
			["Land_BagFence_Long_F",[-29.3184,-6.88867,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[28.332,11.3428,0.531906],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[-28.6064,11.5479,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[-24.9121,17.7734,-0.00130129],269.012,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[-24.9678,17.7773,0.602405],269.012,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[15.9331,-26.6953,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-16.0747,-26.6787,1.62216],0,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_09_01",[-23.2061,21.0547,0],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[30.6104,-6.93457,-0.000999928],359.147,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_dshkm_high_02",[-4.0459,26.8965,14.0578],180.23,1,0,[-0.000112267,0.0279762],"","",false,false], 
			["Land_BagFence_Long_F",[29.6934,11.3604,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-24.2134,21.3379,1.62216],359.876,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_dshkm_high_02",[-27.2285,17.5732,-0.0557752],89.6314,1,0,[0,0],"","",false,false], 
			["Land_vn_scf_01_crystallizer_f",[2.45898,31.458,0],180.359,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_zpu4",[-32.3555,-3.08691,-0.0749998],89.514,1,0,[0,0],"","",false,false], 
			["Land_Net_Fence_Gate_F",[19.835,21.3247,0],180.084,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[32.0664,-6.93457,0.531906],359.147,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[30.9658,11.3525,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["vn_o_wheeled_z157_ammo_nvam",[-19.8896,26.3711,0.179999],270.158,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[33.4277,-6.89746,0.0389857],359.147,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[32.4209,11.332,0.531906],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[29.4165,17.9331,-0.00130129],88.2814,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[29.4722,17.9292,0.602405],88.2814,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[-25.0918,-24.1787,-0.00130129],269.012,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[-25.1475,-24.1738,0.602405],269.012,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[35.1436,1.22998,-0.000999928],87.8809,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[35.252,2.57275,0.531906],87.8809,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[35.2021,4.07373,-0.000999928],87.8809,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[33.7832,11.3486,-0.000999928],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[35.0977,6.94092,-0.000999928],87.8809,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[34.8906,-8.22119,-0.000999928],87.8809,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[23.9536,-26.6924,1.62215],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-24.062,-26.6748,1.62215],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[35.0313,8.30029,0.531906],87.8809,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-36.0508,1.36279,1.62215],89.8671,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_dshkm_high_02",[31.293,17.9785,-0.0557752],270.106,1,0,[0,0],"","",false,false], 
			["vn_o_wheeled_z157_repair_nvam",[16.6514,32.0225,0.18],182.282,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[34.9238,-9.67627,0.531906],87.8809,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_06",[-12.3691,34.0947,1.45985],324.666,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[34.998,9.75635,-0.000999928],87.8809,1,0,[0,0],"","",false,false], 
			["vn_o_nva_static_dshkm_low_01",[-10.1367,34.9053,-0.0749998],197.358,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_dshkm_high_02",[-27.2773,-24.3398,-0.0557752],88.8635,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[34.9912,-11.0376,-0.000999928],87.8809,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-36.0381,-6.66455,1.62216],89.8671,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-36.0654,9.3501,1.622],89.867,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[35.0225,-13.4302,-0.000999928],87.8809,1,0,[0,0],"","",false,false], 
			["Land_vn_fuel_tank_stairs",[-15.228,32.2358,0.345001],0.119,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[35.0547,-14.8853,0.531906],87.8809,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_09_01",[31.7861,21.0664,-7.62939e-006],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[29.2046,-24.3188,-0.00130129],88.2972,1,0,[0,0],"","",false,false], 
			["Land_vn_strazni_vez",[-35.4248,17.4053,0],0,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[29.2612,-24.3237,0.602405],88.2972,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[31.8198,21.2559,1.62216],359.876,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[-25.1914,-29.0186,-0.00130129],269.012,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-32.2085,21.3291,1.62215],359.876,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Round_F",[-25.2471,-29.0137,0.602405],269.012,1,0,[0,0],"","",false,false], 
			["Land_BagFence_Long_F",[35.1221,-16.2456,-0.000999928],87.8809,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-36.0166,-14.686,1.62216],89.8671,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_dshkm_high_02",[31.2178,-24.0479,-0.0557752],270.106,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_zpu4",[39.3096,-3.57813,-0.0749998],89.514,1,0,[0,0],"","",false,false], 
			["Land_Barracks_05_F",[10.7783,-38.8018,0.195111],180.662,1,0,[0,0],"","",false,false], 
			["vn_banner_pavn",[-19.1611,34.6035,3.489],180.636,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_dshkm_high_02",[-27.377,-29.1797,-0.0557752],88.8635,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-36.0869,17.3716,1.62216],89.8671,1,0,[0,0],"","",false,false], 
			["Land_Barracks_02_F",[-21.2246,-36.3896,0],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-31.9878,25.3491,1.60787],91.0368,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-31.9458,25.7251,1.60787],91.0368,1,0,[0,-0],"","",false,false], 
			["vn_o_nva_static_dshkm_low_01",[-19.0938,35.6172,6.05126],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[2.36768,40.9795,1.62212],180.443,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-5.65283,41.0635,1.62212],180.443,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[31.9409,-26.6963,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-32.0825,-26.6777,1.62216],0,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_06",[23.0068,34.7402,4.01542],30.11,1,0,[0,0],"","",false,false], 
			["Land_vn_strazni_vez",[-32.2534,-26.6582,0],269.77,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[10.3481,41.0103,1.62212],179.49,1,0,[0,-0],"","",false,false], 
			["vn_banner_pavn",[25.5713,32.79,7.50499],0,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_07",[-25.5977,33.7783,1.55459],29.214,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-36.0029,-22.6733,1.62216],89.8671,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[3.69775,-42.7627,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-30.0073,-30.8433,1.62216],270.594,1,0,[0,0],"","",false,false], 
			["Land_vn_scf_01_crystallizertowers_f",[-19.2866,36.5151,0],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-4.28076,-42.856,1.62216],359.048,1,0,[0,0],"","",false,false], 
			["Land_vn_strazni_vez",[41.2578,20.7339,0],179.374,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-13.7573,41.2207,1.62213],180.443,1,0,[0,0],"","",false,false], 
			["vn_sign_town_d_07",[26.9482,34.2168,3.99155],346.035,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[43.7773,1.19092,1.62216],89.8671,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[36.0278,25.2368,1.62215],91.0368,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[43.7529,-6.74658,1.62215],89.8671,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[11.7192,-42.7852,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[27.8706,-34.8726,1.62216],359.048,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-12.1665,-42.9941,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[43.7637,9.17725,1.62216],89.8671,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[18.2339,41.0869,1.6221],180.443,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[39.7954,21.1763,1.62215],181.018,1,0,[0,0],"","",false,false], 
			["vn_o_nva_static_dshkm_low_01",[25.4189,37.4619,-0.0749998],185.282,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[43.7744,-14.7681,1.62216],89.8671,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-31.856,33.7329,1.62215],91.0368,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-21.8052,41.3164,1.62211],180.443,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[43.7422,17.1987,1.62215],89.8671,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[19.7407,-42.7822,1.62215],0,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_dshkm_high_02",[25.438,35.8857,15.7658],192.176,1,0,[-9.26333,-3.08093],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-20.188,-42.9717,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_vn_scf_01_clarifier_f",[25.5918,39.209,-0.00137329],0,1,0,[0,0],"","",false,false], 
			["Land_vn_strazni_vez",[43.2344,-22.7314,0],178.818,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[39.8706,-26.7119,1.62216],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[26.2554,41.0029,1.62212],180.443,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[37.9673,-30.8071,1.62215],270.594,1,0,[0,0],"","",false,false], 
			["vn_o_nva_static_dshkm_low_01",[26.6016,-41.1602,-0.0750456],324.362,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[36.1538,33.1782,1.62216],91.0368,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-30.0718,-38.7856,1.62216],270.594,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-31.8208,37.4253,1.62217],91.0368,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[43.7881,-22.7544,1.62216],89.8671,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-27.8696,41.3447,1.62213],180.443,1,0,[0,0],"","",false,false], 
			["Land_vn_strazni_vez",[31.5771,-42.2896,0],270.875,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[-25.7847,-42.8672,1.622],0,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[31.813,-38.6069,1.62216],90.9308,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[27.8052,-42.6772,1.622],359.048,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[36.2583,37.0269,1.62216],91.0368,1,0,[0,-0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[32.1909,40.9521,1.62212],180.443,1,0,[0,0],"","",false,false], 
			["Land_NetFence_01_m_8m_F",[37.8423,-38.8228,1.62216],270.594,1,0,[0,0],"","",false,false], 
			["Land_Net_Fence_Gate_F",[29.7744,-42.646,0],180.084,1,0,[0,0],"","",false,false]
		],
		[
			["vn_o_nva_static_pk_high",[-3.53125,9.40869,-0.0837235],180.744,1,0,[0.142331,0.064445],"","",false,false], 
			["vn_o_armor_type63_01",[11.3823,-2.29688,-0.0992956],268.811,1,0,[0.0436287,0.0194958],"","",false,false], 
			["vn_o_armor_type63_01",[11.3057,3.72168,-0.101357],267.773,1,0,[0.0426658,0.0176735],"","",false,false], 
			["Land_vn_pillboxwall_01_6m_round_f",[1.53662,13.7295,0.228409],180.421,1,0,[0,0],"","",false,false], 
			["Land_vn_pillboxwall_01_6m_round_f",[-1.85889,13.75,0.228409],180.421,1,0,[0,0],"","",false,false], 
			["vn_o_armor_type63_01",[10.5874,9.67285,-0.0994587],268.229,1,0,[0.0430468,0.0192015],"","",false,false], 
			["Land_vn_plot_green_branka",[-5.56494,13.6084,0],0,1,0,[0,0],"","",false,false], 
			["vn_o_prop_t102e_01",[-12.3413,-8.60791,1.17837],85.303,1,0,[0,0],"","",false,false], 
			["Land_Map_unfolded_F",[-12.9634,-8.02295,1.18801],0,1,0,[0,0],"","",false,false], 
			["Land_WoodenTable_large_F",[-12.7427,-8.43994,0.313781],269.547,1,0,[0,0],"","",false,false], 
			["vn_o_armor_type63_01",[12.6987,-8.62012,-0.0964999],270.403,1,0,[0.0420978,0.0176547],"","",false,false], 
			["Land_vn_fuel_tank_stairs",[-4.94727,16.0942,0],179.52,1,0,[0,-0],"","",false,false], 
			["Land_vn_pillboxwall_01_6m_round_f",[4.2793,16.4463,0.228409],89.4816,1,0,[0,0],"","",false,false], 
			["Land_vn_pillboxwall_01_6m_round_f",[-6.45264,16.5059,0.247058],269.875,1,0,[0,0],"","",false,false], 
			["Land_vn_wf_vehicle_service_point_east",[-17.2202,4.61084,0.0659556],91.066,1,0.0126496,[-0.000168,3.03594e-005],"","",false,false], 
			["Land_GarageOffice_01_F",[-13.9429,-12.311,0],178.78,1,0,[0,-0],"","",false,false], 
			["Land_vn_pillboxwall_01_6m_round_f",[1.50342,19.3164,0.235148],0.374524,1,0,[0,0],"","",false,false], 
			["Land_vn_pillboxwall_01_6m_round_f",[-3.69727,19.3882,0.249469],0.374524,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_90_02",[-11.1299,13.9619,0],359.594,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_zpu4",[-13.2026,16.2681,-0.0780087],5.78714,1,0,[8.15815e-006,-7.88171e-007],"","",false,false], 
			["Land_WeldingTrolley_01_F",[-12.1187,-17.8799,-0.000996113],359.993,1,0,[0.00060901,-0.000395087],"","",false,false], 
			["Land_vn_b_trench_revetment_tall_09",[0.964844,-23.9609,0],270.796,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_90_02",[11.687,-17.9956,0.420151],180.505,1,0,[0,0],"","",false,false], 
			["vn_o_nva_65_static_zpu4",[12.8306,-21.1489,-0.0780072],5.78683,1,0,[6.67188e-006,-2.95073e-005],"","",false,false], 
			["Land_vn_b_tower_01",[15.5903,18.8599,0],359.834,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_20_01",[23.458,9.22852,0.863388],88.8883,1,0,[0,0],"","",false,false], 
			["Land_vn_b_tower_01",[4.12695,-25.436,0],180.443,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_20_01",[23.9678,-9.87305,0.863388],88.3601,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_20_01",[9.1709,25.1401,0.863388],358.454,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_20_01",[-9.93311,24.6606,0.863388],358.982,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_revetment_tall_09",[-11.2695,-24.519,0],89.7132,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_20_01",[-26.0503,8.35938,0.863388],269.319,1,0,[0,0],"","",false,false], 
			["Land_vn_b_tower_01",[-21.2837,18.6069,0.265411],359.834,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_20_01",[-25.6997,-10.8301,0.863388],269.319,1,0,[0,0],"","",false,false], 
			["Land_vn_b_tower_01",[-12.2334,-24.832,0],178.913,1,0,[0,-0],"","",false,false], 
			["Land_vn_b_trench_revetment_tall_09",[5.03857,-27.9697,0],179.592,1,0,[0,-0],"","",false,false], 
			["Land_vn_b_trench_revetment_tall_09",[11.6626,-27.8975,0],179.592,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_03",[1.21631,-30.1655,0],87.831,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[31.8647,4.3457,0],88.945,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_revetment_tall_09",[-15.8589,-28.2832,0],179.592,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[32.0571,-5.30566,0],88.945,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_03",[-11.2095,-30.7778,0],87.831,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-32.4048,-5.34668,0],88.945,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-32.5972,4.30469,0],88.945,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-1.64795,33.312,0],179.082,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_03",[1.21143,-33.3804,0],87.831,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_tee_01",[23.2266,25.4814,0.863388],180.39,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[8.00537,33.4829,0],179.082,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[31.7739,14.1016,0],88.945,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_tee_01",[24.2012,-26.1826,0.863388],0.390312,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-11.3901,33.3335,0],179.082,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_03",[-11.022,-33.5288,0],87.831,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[5.5835,-35.041,0],180.538,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[32.2505,-14.958,0],88.945,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-32.644,13.8984,0],88.945,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-32.2114,-14.999,0],88.945,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_tee_01",[-26.3311,25.0361,0.863388],180.39,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_tee_01",[-25.707,-26.8301,0.863388],0.390312,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[13.4155,-34.8428,0],180.538,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-15.3325,-34.9131,0],180.538,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[17.6567,33.6519,0],179.082,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-20.9263,33.23,0],179.082,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[23.0698,-34.918,0],180.538,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[41.8213,-1.39648,0],270.27,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_firing_05",[33.52,25.582,0.863388],358.167,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-42.4155,1.4668,0],269.861,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[41.9199,8.6377,0],270.27,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-25.3169,-34.7236,0],180.538,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[41.792,-11.0508,0],270.27,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_firing_05",[34.4624,-26.4492,0.863388],0.377374,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[27.4136,33.7202,0],179.082,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-42.2998,-10.5771,0],270.27,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_firing_05",[-34.4585,-26.9048,0.863388],179.366,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-42.3735,11.2461,0],269.861,1,0,[0,0],"","",false,false], 
			["Land_vn_b_trench_firing_05",[-36.0698,25.1167,0.863388],179.366,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-30.3931,33.2573,0],179.082,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[41.9956,17.9375,0],269.861,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-42.457,-19.5342,0],270.27,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[41.6494,-21.0371,0],270.27,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-42.2749,21.0938,0.504541],269.861,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[41.9819,22.5039,0],269.861,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[33.0542,-35.1084,0],180.538,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-34.9712,-34.6494,0],180.538,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[36.478,33.709,0],2.31266,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-37.561,33.2319,0],179.018,1,0,[0,-0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-42.0835,29.1934,0.672502],269.861,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[41.9282,30.2163,0],269.283,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[-42.2393,-29.957,0],270.27,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[41.5371,-30.8154,0],270.27,1,0,[0,0],"","",false,false], 
			["Land_vn_fence_punji_01_10",[38.0112,-35.3447,0],180.538,1,0,[0,0],"","",false,false]
		]
	];
};

//if(toLower(worldName) isEqualTo "tanoa")then {
//	vn_mf_hq_composition = [
//	];
//};

private _randomAngle = [0,360] call BIS_fnc_randomInt;
private _factoryObjects = [_position, _randomAngle, selectRandom vn_mf_factory_compositions, 0] call BIS_fnc_objectsMapper;
{
    if (_x isKindOf "GRAD_envelope_giant") then {
        _x setVectorUp (surfaceNormal getPos _x);
    };
	
	if (_x isKindOf "Land_vn_o_trench_firing_01") then {
        _x setVectorUp (surfaceNormal getPos _x);
    };

} forEach _factoryObjects;

_factoryObjects