; ModuleID = 'C:/Users/G552/Desktop/4218_proj/hls_to_be_submitted/hls/solution4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@mlp_str = internal unnamed_addr constant [4 x i8] c"mlp\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"mlp_label18\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"mlp_label16\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"mlp_label14\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"mlp_label13\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"mlp_label12\00", align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str13 = private unnamed_addr constant [12 x i8] c"mlp_label22\00", align 1
@p_str12 = private unnamed_addr constant [12 x i8] c"mlp_label21\00", align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"mlp_label19\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define void @mlp(i32* %input_r, i32* %output_r) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input_r) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_r) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @mlp_str) nounwind
  %test_data_1 = alloca [29 x i32], align 4
  %test_data_2 = alloca [29 x i32], align 4
  %test_data_3 = alloca [29 x i32], align 4
  %test_data_4 = alloca [29 x i32], align 4
  %test_data_5 = alloca [29 x i32], align 4
  %test_data_6 = alloca [29 x i32], align 4
  %test_data_7 = alloca [29 x i32], align 4
  %test_data_8 = alloca [29 x i32], align 4
  %test_data_9 = alloca [29 x i32], align 4
  %test_data_10 = alloca [29 x i32], align 4
  %test_data_11 = alloca [29 x i32], align 4
  %test_data_12 = alloca [29 x i32], align 4
  %test_data_13 = alloca [29 x i32], align 4
  %weightIH_0 = alloca [11 x i32], align 4
  %weightIH_1 = alloca [11 x i32], align 4
  %weightIH_2 = alloca [11 x i32], align 4
  %weightIH_3 = alloca [11 x i32], align 4
  %weightIH_4 = alloca [11 x i32], align 4
  %weightIH_5 = alloca [11 x i32], align 4
  %weightIH_6 = alloca [11 x i32], align 4
  %weightIH_7 = alloca [11 x i32], align 4
  %weightIH_8 = alloca [11 x i32], align 4
  %weightIH_9 = alloca [11 x i32], align 4
  %weightIH_10 = alloca [11 x i32], align 4
  %weightIH_11 = alloca [11 x i32], align 4
  %weightIH_12 = alloca [11 x i32], align 4
  %weightIH_13 = alloca [11 x i32], align 4
  %weightHO = alloca [14 x i32], align 4
  %SumH = alloca [11 x i32], align 4
  %result = alloca [28 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %input_r, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_r, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 1, %0 ], [ %i_1, %2 ]
  %exitcond9 = icmp eq i5 %i, -3
  br i1 %exitcond9, label %.preheader12.preheader, label %2

.preheader12.preheader:                           ; preds = %1
  br label %.preheader12

; <label>:2                                       ; preds = %1
  %i_cast = zext i5 %i to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str4) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %input_read = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_1_addr = getelementptr [29 x i32]* %test_data_1, i32 0, i32 %i_cast
  store i32 %input_read, i32* %test_data_1_addr, align 4
  %input_read_1 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_2_addr = getelementptr [29 x i32]* %test_data_2, i32 0, i32 %i_cast
  store i32 %input_read_1, i32* %test_data_2_addr, align 4
  %input_read_2 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_3_addr = getelementptr [29 x i32]* %test_data_3, i32 0, i32 %i_cast
  store i32 %input_read_2, i32* %test_data_3_addr, align 4
  %input_read_3 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_4_addr = getelementptr [29 x i32]* %test_data_4, i32 0, i32 %i_cast
  store i32 %input_read_3, i32* %test_data_4_addr, align 4
  %input_read_4 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_5_addr = getelementptr [29 x i32]* %test_data_5, i32 0, i32 %i_cast
  store i32 %input_read_4, i32* %test_data_5_addr, align 4
  %input_read_5 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_6_addr = getelementptr [29 x i32]* %test_data_6, i32 0, i32 %i_cast
  store i32 %input_read_5, i32* %test_data_6_addr, align 4
  %input_read_6 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_7_addr = getelementptr [29 x i32]* %test_data_7, i32 0, i32 %i_cast
  store i32 %input_read_6, i32* %test_data_7_addr, align 4
  %input_read_7 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_8_addr = getelementptr [29 x i32]* %test_data_8, i32 0, i32 %i_cast
  store i32 %input_read_7, i32* %test_data_8_addr, align 4
  %input_read_8 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_9_addr = getelementptr [29 x i32]* %test_data_9, i32 0, i32 %i_cast
  store i32 %input_read_8, i32* %test_data_9_addr, align 4
  %input_read_9 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_10_addr = getelementptr [29 x i32]* %test_data_10, i32 0, i32 %i_cast
  store i32 %input_read_9, i32* %test_data_10_addr, align 4
  %input_read_10 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_11_addr = getelementptr [29 x i32]* %test_data_11, i32 0, i32 %i_cast
  store i32 %input_read_10, i32* %test_data_11_addr, align 4
  %input_read_11 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_12_addr = getelementptr [29 x i32]* %test_data_12, i32 0, i32 %i_cast
  store i32 %input_read_11, i32* %test_data_12_addr, align 4
  %input_read_12 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %test_data_13_addr = getelementptr [29 x i32]* %test_data_13, i32 0, i32 %i_cast
  store i32 %input_read_12, i32* %test_data_13_addr, align 4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_1) nounwind
  %i_1 = add i5 %i, 1
  br label %1

.preheader12:                                     ; preds = %.preheader12.preheader, %3
  %j = phi i4 [ %j_2, %3 ], [ 1, %.preheader12.preheader ]
  %exitcond8 = icmp eq i4 %j, -5
  br i1 %exitcond8, label %.preheader11.preheader, label %3

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11

; <label>:3                                       ; preds = %.preheader12
  %j_cast = zext i4 %j to i32
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str5) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %input_read_13 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %tmp = shl i32 %input_read_13, 8
  %weightIH_0_addr = getelementptr [11 x i32]* %weightIH_0, i32 0, i32 %j_cast
  store i32 %tmp, i32* %weightIH_0_addr, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_s) nounwind
  %j_2 = add i4 1, %j
  br label %.preheader12

.preheader11:                                     ; preds = %.preheader11.preheader, %4
  %j_1 = phi i4 [ %j_4, %4 ], [ 1, %.preheader11.preheader ]
  %exitcond7 = icmp eq i4 %j_1, -5
  br i1 %exitcond7, label %5, label %4

; <label>:4                                       ; preds = %.preheader11
  %j_1_cast = zext i4 %j_1 to i32
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str6) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %input_read_15 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_1_addr = getelementptr [11 x i32]* %weightIH_1, i32 0, i32 %j_1_cast
  store i32 %input_read_15, i32* %weightIH_1_addr, align 4
  %input_read_16 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_2_addr = getelementptr [11 x i32]* %weightIH_2, i32 0, i32 %j_1_cast
  store i32 %input_read_16, i32* %weightIH_2_addr, align 4
  %input_read_17 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_3_addr = getelementptr [11 x i32]* %weightIH_3, i32 0, i32 %j_1_cast
  store i32 %input_read_17, i32* %weightIH_3_addr, align 4
  %input_read_18 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_4_addr = getelementptr [11 x i32]* %weightIH_4, i32 0, i32 %j_1_cast
  store i32 %input_read_18, i32* %weightIH_4_addr, align 4
  %input_read_19 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_5_addr = getelementptr [11 x i32]* %weightIH_5, i32 0, i32 %j_1_cast
  store i32 %input_read_19, i32* %weightIH_5_addr, align 4
  %input_read_20 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_6_addr = getelementptr [11 x i32]* %weightIH_6, i32 0, i32 %j_1_cast
  store i32 %input_read_20, i32* %weightIH_6_addr, align 4
  %input_read_21 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_7_addr = getelementptr [11 x i32]* %weightIH_7, i32 0, i32 %j_1_cast
  store i32 %input_read_21, i32* %weightIH_7_addr, align 4
  %input_read_22 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_8_addr = getelementptr [11 x i32]* %weightIH_8, i32 0, i32 %j_1_cast
  store i32 %input_read_22, i32* %weightIH_8_addr, align 4
  %input_read_23 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_9_addr = getelementptr [11 x i32]* %weightIH_9, i32 0, i32 %j_1_cast
  store i32 %input_read_23, i32* %weightIH_9_addr, align 4
  %input_read_24 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_10_addr = getelementptr [11 x i32]* %weightIH_10, i32 0, i32 %j_1_cast
  store i32 %input_read_24, i32* %weightIH_10_addr, align 4
  %input_read_25 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_11_addr = getelementptr [11 x i32]* %weightIH_11, i32 0, i32 %j_1_cast
  store i32 %input_read_25, i32* %weightIH_11_addr, align 4
  %input_read_26 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_12_addr = getelementptr [11 x i32]* %weightIH_12, i32 0, i32 %j_1_cast
  store i32 %input_read_26, i32* %weightIH_12_addr, align 4
  %input_read_27 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightIH_13_addr = getelementptr [11 x i32]* %weightIH_13, i32 0, i32 %j_1_cast
  store i32 %input_read_27, i32* %weightIH_13_addr, align 4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_3) nounwind
  %j_4 = add i4 %j_1, 1
  br label %.preheader11

; <label>:5                                       ; preds = %.preheader11
  %input_read_14 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %tmp_2 = shl i32 %input_read_14, 8
  %weightHO_addr = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 0
  store i32 %tmp_2, i32* %weightHO_addr, align 4
  br label %6

; <label>:6                                       ; preds = %7, %5
  %i_2 = phi i4 [ 1, %5 ], [ %i_5, %7 ]
  %exitcond5 = icmp eq i4 %i_2, -5
  br i1 %exitcond5, label %.preheader10.preheader, label %7

.preheader10.preheader:                           ; preds = %6
  %weightHO_load = load i32* %weightHO_addr, align 4
  br label %.preheader10

; <label>:7                                       ; preds = %6
  %i_2_cast = zext i4 %i_2 to i32
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str8) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %input_read_28 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input_r) nounwind
  %weightHO_addr_1 = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 %i_2_cast
  store i32 %input_read_28, i32* %weightHO_addr_1, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_4) nounwind
  %i_5 = add i4 %i_2, 1
  br label %6

.preheader10:                                     ; preds = %14, %.preheader10.preheader
  %k_5 = phi i5 [ %k, %14 ], [ 1, %.preheader10.preheader ]
  %exitcond4 = icmp eq i5 %k_5, -3
  br i1 %exitcond4, label %.preheader.preheader, label %8

.preheader.preheader:                             ; preds = %.preheader10
  br label %.preheader

; <label>:8                                       ; preds = %.preheader10
  %k_5_cast = zext i5 %k_5 to i32
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str9) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9) nounwind
  %test_data_1_addr_1 = getelementptr [29 x i32]* %test_data_1, i32 0, i32 %k_5_cast
  %test_data_1_load = load i32* %test_data_1_addr_1, align 4
  %test_data_2_addr_1 = getelementptr [29 x i32]* %test_data_2, i32 0, i32 %k_5_cast
  %test_data_2_load = load i32* %test_data_2_addr_1, align 4
  %test_data_3_addr_1 = getelementptr [29 x i32]* %test_data_3, i32 0, i32 %k_5_cast
  %test_data_3_load = load i32* %test_data_3_addr_1, align 4
  %test_data_4_addr_1 = getelementptr [29 x i32]* %test_data_4, i32 0, i32 %k_5_cast
  %test_data_4_load = load i32* %test_data_4_addr_1, align 4
  %test_data_5_addr_1 = getelementptr [29 x i32]* %test_data_5, i32 0, i32 %k_5_cast
  %test_data_5_load = load i32* %test_data_5_addr_1, align 4
  %test_data_6_addr_1 = getelementptr [29 x i32]* %test_data_6, i32 0, i32 %k_5_cast
  %test_data_6_load = load i32* %test_data_6_addr_1, align 4
  %test_data_7_addr_1 = getelementptr [29 x i32]* %test_data_7, i32 0, i32 %k_5_cast
  %test_data_7_load = load i32* %test_data_7_addr_1, align 4
  %test_data_8_addr_1 = getelementptr [29 x i32]* %test_data_8, i32 0, i32 %k_5_cast
  %test_data_8_load = load i32* %test_data_8_addr_1, align 4
  %test_data_9_addr_1 = getelementptr [29 x i32]* %test_data_9, i32 0, i32 %k_5_cast
  %test_data_9_load = load i32* %test_data_9_addr_1, align 4
  %test_data_10_addr_1 = getelementptr [29 x i32]* %test_data_10, i32 0, i32 %k_5_cast
  %test_data_10_load = load i32* %test_data_10_addr_1, align 4
  %test_data_11_addr_1 = getelementptr [29 x i32]* %test_data_11, i32 0, i32 %k_5_cast
  %test_data_11_load = load i32* %test_data_11_addr_1, align 4
  %test_data_12_addr_1 = getelementptr [29 x i32]* %test_data_12, i32 0, i32 %k_5_cast
  %test_data_12_load = load i32* %test_data_12_addr_1, align 4
  %test_data_13_addr_1 = getelementptr [29 x i32]* %test_data_13, i32 0, i32 %k_5_cast
  %test_data_13_load = load i32* %test_data_13_addr_1, align 4
  br label %9

; <label>:9                                       ; preds = %10, %8
  %i_3 = phi i4 [ 1, %8 ], [ %i_7, %10 ]
  %exitcond3 = icmp eq i4 %i_3, -5
  br i1 %exitcond3, label %11, label %10

; <label>:10                                      ; preds = %9
  %i_3_cast = zext i4 %i_3 to i32
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %weightIH_0_addr_1 = getelementptr [11 x i32]* %weightIH_0, i32 0, i32 %i_3_cast
  %weightIH_0_load = load i32* %weightIH_0_addr_1, align 4
  %SumH_addr = getelementptr inbounds [11 x i32]* %SumH, i32 0, i32 %i_3_cast
  %weightIH_1_addr_1 = getelementptr [11 x i32]* %weightIH_1, i32 0, i32 %i_3_cast
  %weightIH_1_load = load i32* %weightIH_1_addr_1, align 4
  %tmp_8 = mul nsw i32 %weightIH_1_load, %test_data_1_load
  %weightIH_2_addr_1 = getelementptr [11 x i32]* %weightIH_2, i32 0, i32 %i_3_cast
  %weightIH_2_load = load i32* %weightIH_2_addr_1, align 4
  %tmp_36_1 = mul nsw i32 %weightIH_2_load, %test_data_2_load
  %weightIH_3_addr_1 = getelementptr [11 x i32]* %weightIH_3, i32 0, i32 %i_3_cast
  %weightIH_3_load = load i32* %weightIH_3_addr_1, align 4
  %tmp_36_2 = mul nsw i32 %weightIH_3_load, %test_data_3_load
  %weightIH_4_addr_1 = getelementptr [11 x i32]* %weightIH_4, i32 0, i32 %i_3_cast
  %weightIH_4_load = load i32* %weightIH_4_addr_1, align 4
  %tmp_36_3 = mul nsw i32 %weightIH_4_load, %test_data_4_load
  %weightIH_5_addr_1 = getelementptr [11 x i32]* %weightIH_5, i32 0, i32 %i_3_cast
  %weightIH_5_load = load i32* %weightIH_5_addr_1, align 4
  %tmp_36_4 = mul nsw i32 %weightIH_5_load, %test_data_5_load
  %weightIH_6_addr_1 = getelementptr [11 x i32]* %weightIH_6, i32 0, i32 %i_3_cast
  %weightIH_6_load = load i32* %weightIH_6_addr_1, align 4
  %tmp_36_5 = mul nsw i32 %weightIH_6_load, %test_data_6_load
  %weightIH_7_addr_1 = getelementptr [11 x i32]* %weightIH_7, i32 0, i32 %i_3_cast
  %weightIH_7_load = load i32* %weightIH_7_addr_1, align 4
  %tmp_36_6 = mul nsw i32 %weightIH_7_load, %test_data_7_load
  %weightIH_8_addr_1 = getelementptr [11 x i32]* %weightIH_8, i32 0, i32 %i_3_cast
  %weightIH_8_load = load i32* %weightIH_8_addr_1, align 4
  %tmp_36_7 = mul nsw i32 %weightIH_8_load, %test_data_8_load
  %weightIH_9_addr_1 = getelementptr [11 x i32]* %weightIH_9, i32 0, i32 %i_3_cast
  %weightIH_9_load = load i32* %weightIH_9_addr_1, align 4
  %tmp_36_8 = mul nsw i32 %weightIH_9_load, %test_data_9_load
  %weightIH_10_addr_1 = getelementptr [11 x i32]* %weightIH_10, i32 0, i32 %i_3_cast
  %weightIH_10_load = load i32* %weightIH_10_addr_1, align 4
  %tmp_36_9 = mul nsw i32 %weightIH_10_load, %test_data_10_load
  %weightIH_11_addr_1 = getelementptr [11 x i32]* %weightIH_11, i32 0, i32 %i_3_cast
  %weightIH_11_load = load i32* %weightIH_11_addr_1, align 4
  %tmp_36_s = mul nsw i32 %weightIH_11_load, %test_data_11_load
  %weightIH_12_addr_1 = getelementptr [11 x i32]* %weightIH_12, i32 0, i32 %i_3_cast
  %weightIH_12_load = load i32* %weightIH_12_addr_1, align 4
  %tmp_36_10 = mul nsw i32 %weightIH_12_load, %test_data_12_load
  %weightIH_13_addr_1 = getelementptr [11 x i32]* %weightIH_13, i32 0, i32 %i_3_cast
  %weightIH_13_load = load i32* %weightIH_13_addr_1, align 4
  %tmp_36_11 = mul nsw i32 %weightIH_13_load, %test_data_13_load
  %tmp1 = add i32 %tmp_8, %tmp_36_1
  %tmp2 = add i32 %tmp1, %weightIH_0_load
  %tmp3 = add i32 %tmp_36_2, %tmp_36_3
  %tmp4 = add i32 %tmp_36_4, %tmp_36_5
  %tmp5 = add i32 %tmp4, %tmp3
  %tmp6 = add i32 %tmp5, %tmp2
  %tmp7 = add i32 %tmp_36_7, %tmp_36_8
  %tmp8 = add i32 %tmp7, %tmp_36_6
  %tmp9 = add i32 %tmp_36_9, %tmp_36_s
  %tmp10 = add i32 %tmp_36_10, %tmp_36_11
  %tmp11 = add i32 %tmp10, %tmp9
  %tmp12 = add i32 %tmp11, %tmp8
  %tmp_37_s = add nsw i32 %tmp12, %tmp6
  %tmp_9 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %tmp_37_s, i32 8, i32 31)
  %tmp_34_cast = sext i24 %tmp_9 to i25
  %tmp_i = icmp sgt i24 %tmp_9, 1280
  %tmp_1_i = icmp sgt i24 %tmp_9, 608
  %tmp_10 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %tmp_37_s, i32 13, i32 31)
  %tmp_11 = sext i19 %tmp_10 to i27
  %tmp_2_i_cast = zext i27 %tmp_11 to i28
  %tmp_3_i = add i28 %tmp_2_i_cast, 216
  %tmp_3_i_cast = zext i28 %tmp_3_i to i30
  %tmp_4_i = icmp sgt i24 %tmp_9, 256
  %tmp_12 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %tmp_37_s, i32 11, i32 31)
  %tmp_13 = sext i21 %tmp_12 to i29
  %tmp_5_i_cast = zext i29 %tmp_13 to i30
  %tmp_6_i = add i30 %tmp_5_i_cast, 160
  %tmp_7_i = icmp sgt i24 %tmp_9, -256
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_37_s, i32 31)
  %p_neg_i = sub i25 0, %tmp_34_cast
  %tmp_15 = call i23 @_ssdm_op_PartSelect.i23.i25.i32.i32(i25 %p_neg_i, i32 2, i32 24)
  %tmp_16 = sext i23 %tmp_15 to i30
  %p_lshr_i_cast = zext i30 %tmp_16 to i31
  %p_neg_t_i = sub i31 0, %p_lshr_i_cast
  %tmp_17 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %tmp_37_s, i32 10, i32 31)
  %tmp_18 = sext i22 %tmp_17 to i30
  %p_lshr_f_i_cast = zext i30 %tmp_18 to i31
  %tmp_8_i = select i1 %tmp_14, i31 %p_neg_t_i, i31 %p_lshr_f_i_cast
  %tmp_8_i_cast = sext i31 %tmp_8_i to i32
  %tmp_9_i = add nsw i32 %tmp_8_i_cast, 128
  %tmp_i_16 = icmp sgt i24 %tmp_9, -608
  %tmp_19 = call i22 @_ssdm_op_PartSelect.i22.i25.i32.i32(i25 %p_neg_i, i32 3, i32 24)
  %tmp_20 = sext i22 %tmp_19 to i29
  %tmp_13_i_cast = zext i29 %tmp_20 to i30
  %tmp_11_i = sub i30 96, %tmp_13_i_cast
  %tmp_11_i_cast = sext i30 %tmp_11_i to i32
  %tmp_12_i = icmp sgt i24 %tmp_9, -1280
  %tmp_21 = call i20 @_ssdm_op_PartSelect.i20.i25.i32.i32(i25 %p_neg_i, i32 5, i32 24)
  %tmp_22 = sext i20 %tmp_21 to i27
  %tmp_16_i_cast = zext i27 %tmp_22 to i28
  %tmp_14_i = sub i28 40, %tmp_16_i_cast
  %sel_tmp_i = xor i1 %tmp_i, true
  %sel_tmp1_i = and i1 %tmp_1_i, %sel_tmp_i
  %sel_tmp5_i = xor i1 %tmp_1_i, true
  %sel_tmp6_i = and i1 %tmp_4_i, %sel_tmp5_i
  %sel_tmp12_i = xor i1 %tmp_4_i, true
  %sel_tmp13_i = and i1 %tmp_7_i, %sel_tmp12_i
  %sel_tmp21_i = xor i1 %tmp_7_i, true
  %sel_tmp22_i = and i1 %tmp_i_16, %sel_tmp21_i
  %sel_tmp32_i = xor i1 %tmp_i_16, true
  %sel_tmp33_i = and i1 %tmp_12_i, %sel_tmp32_i
  %newSel = select i1 %tmp_i, i28 256, i28 %tmp_14_i
  %newSel_cast = sext i28 %newSel to i32
  %or_cond = or i1 %tmp_i, %sel_tmp33_i
  %newSel1 = select i1 %sel_tmp22_i, i32 %tmp_11_i_cast, i32 %tmp_9_i
  %or_cond1 = or i1 %sel_tmp22_i, %sel_tmp13_i
  %newSel2 = select i1 %sel_tmp6_i, i30 %tmp_6_i, i30 %tmp_3_i_cast
  %or_cond2 = or i1 %sel_tmp6_i, %sel_tmp1_i
  %newSel3 = select i1 %or_cond, i32 %newSel_cast, i32 %newSel1
  %or_cond3 = or i1 %or_cond, %or_cond1
  %newSel4 = select i1 %or_cond2, i30 %newSel2, i30 0
  %newSel57_cast = zext i30 %newSel4 to i32
  %newSel5 = select i1 %or_cond3, i32 %newSel3, i32 %newSel57_cast
  store i32 %newSel5, i32* %SumH_addr, align 4
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_7) nounwind
  %i_7 = add i4 %i_3, 1
  br label %9

; <label>:11                                      ; preds = %9
  %result_addr_1 = getelementptr inbounds [28 x i32]* %result, i32 0, i32 %k_5_cast
  store i32 %weightHO_load, i32* %result_addr_1, align 4
  br label %12

; <label>:12                                      ; preds = %13, %11
  %j_3 = phi i4 [ 1, %11 ], [ %j_5, %13 ]
  %exitcond1 = icmp eq i4 %j_3, -5
  br i1 %exitcond1, label %14, label %13

; <label>:13                                      ; preds = %12
  %j_3_cast = zext i4 %j_3 to i32
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %SumH_addr_1 = getelementptr inbounds [11 x i32]* %SumH, i32 0, i32 %j_3_cast
  %SumH_load = load i32* %SumH_addr_1, align 4
  %weightHO_addr_2 = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 %j_3_cast
  %weightHO_load_1 = load i32* %weightHO_addr_2, align 4
  %tmp_32 = mul nsw i32 %weightHO_load_1, %SumH_load
  %result_load_2 = load i32* %result_addr_1, align 4
  %tmp_33 = add nsw i32 %result_load_2, %tmp_32
  store i32 %tmp_33, i32* %result_addr_1, align 4
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_39) nounwind
  %j_5 = add i4 %j_3, 1
  br label %12

; <label>:14                                      ; preds = %12
  %result_load_1 = load i32* %result_addr_1, align 4
  %tmp_23 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %result_load_1, i32 8, i32 31)
  %tmp_30_cast = sext i24 %tmp_23 to i25
  %tmp_i1 = icmp sgt i24 %tmp_23, 1280
  %tmp_1_i2 = icmp sgt i24 %tmp_23, 608
  %tmp_24 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %result_load_1, i32 13, i32 31)
  %tmp_25 = sext i19 %tmp_24 to i27
  %tmp_2_i3_cast = zext i27 %tmp_25 to i28
  %tmp_3_i4 = add i28 %tmp_2_i3_cast, 216
  %tmp_3_i4_cast = zext i28 %tmp_3_i4 to i30
  %tmp_4_i5 = icmp sgt i24 %tmp_23, 256
  %tmp_26 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %result_load_1, i32 11, i32 31)
  %tmp_27 = sext i21 %tmp_26 to i29
  %tmp_5_i6_cast = zext i29 %tmp_27 to i30
  %tmp_6_i7 = add i30 %tmp_5_i6_cast, 160
  %tmp_7_i8 = icmp sgt i24 %tmp_23, -256
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %result_load_1, i32 31)
  %p_neg_i1 = sub i25 0, %tmp_30_cast
  %tmp_29 = call i23 @_ssdm_op_PartSelect.i23.i25.i32.i32(i25 %p_neg_i1, i32 2, i32 24)
  %tmp_30 = sext i23 %tmp_29 to i30
  %p_lshr_i12_cast = zext i30 %tmp_30 to i31
  %p_neg_t_i1 = sub i31 0, %p_lshr_i12_cast
  %tmp_31 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %result_load_1, i32 10, i32 31)
  %tmp_34 = sext i22 %tmp_31 to i30
  %p_lshr_f_i14_cast = zext i30 %tmp_34 to i31
  %tmp_8_i1 = select i1 %tmp_28, i31 %p_neg_t_i1, i31 %p_lshr_f_i14_cast
  %tmp_8_i15_cast = sext i31 %tmp_8_i1 to i32
  %tmp_9_i1 = add nsw i32 %tmp_8_i15_cast, 128
  %tmp_i1_20 = icmp sgt i24 %tmp_23, -608
  %tmp_35 = call i22 @_ssdm_op_PartSelect.i22.i25.i32.i32(i25 %p_neg_i1, i32 3, i32 24)
  %tmp_36 = sext i22 %tmp_35 to i29
  %tmp_13_i18_cast = zext i29 %tmp_36 to i30
  %tmp_11_i1 = sub i30 96, %tmp_13_i18_cast
  %tmp_11_i19_cast = sext i30 %tmp_11_i1 to i32
  %tmp_12_i1 = icmp sgt i24 %tmp_23, -1280
  %tmp_37 = call i20 @_ssdm_op_PartSelect.i20.i25.i32.i32(i25 %p_neg_i1, i32 5, i32 24)
  %tmp_38 = sext i20 %tmp_37 to i27
  %tmp_16_i21_cast = zext i27 %tmp_38 to i28
  %tmp_14_i1 = sub i28 40, %tmp_16_i21_cast
  %sel_tmp_i1 = xor i1 %tmp_i1, true
  %sel_tmp1_i1 = and i1 %tmp_1_i2, %sel_tmp_i1
  %sel_tmp5_i1 = xor i1 %tmp_1_i2, true
  %sel_tmp6_i1 = and i1 %tmp_4_i5, %sel_tmp5_i1
  %sel_tmp12_i1 = xor i1 %tmp_4_i5, true
  %sel_tmp13_i1 = and i1 %tmp_7_i8, %sel_tmp12_i1
  %sel_tmp21_i1 = xor i1 %tmp_7_i8, true
  %sel_tmp22_i1 = and i1 %tmp_i1_20, %sel_tmp21_i1
  %sel_tmp32_i1 = xor i1 %tmp_i1_20, true
  %sel_tmp33_i1 = and i1 %tmp_12_i1, %sel_tmp32_i1
  %newSel6 = select i1 %tmp_i1, i28 256, i28 %tmp_14_i1
  %newSel61_cast = sext i28 %newSel6 to i32
  %or_cond4 = or i1 %tmp_i1, %sel_tmp33_i1
  %newSel7 = select i1 %sel_tmp22_i1, i32 %tmp_11_i19_cast, i32 %tmp_9_i1
  %or_cond5 = or i1 %sel_tmp22_i1, %sel_tmp13_i1
  %newSel8 = select i1 %sel_tmp6_i1, i30 %tmp_6_i7, i30 %tmp_3_i4_cast
  %or_cond6 = or i1 %sel_tmp6_i1, %sel_tmp1_i1
  %newSel9 = select i1 %or_cond4, i32 %newSel61_cast, i32 %newSel7
  %or_cond7 = or i1 %or_cond4, %or_cond5
  %newSel10 = select i1 %or_cond6, i30 %newSel8, i30 0
  %newSel69_cast = zext i30 %newSel10 to i32
  %newSel11 = select i1 %or_cond7, i32 %newSel9, i32 %newSel69_cast
  store i32 %newSel11, i32* %result_addr_1, align 4
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_5) nounwind
  %k = add i5 %k_5, 1
  br label %.preheader10

.preheader:                                       ; preds = %.preheader.preheader, %15
  %i_4 = phi i5 [ %i_6, %15 ], [ 1, %.preheader.preheader ]
  %exitcond = icmp eq i5 %i_4, -3
  br i1 %exitcond, label %16, label %15

; <label>:15                                      ; preds = %.preheader
  %i_4_cast = zext i5 %i_4 to i32
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %result_addr = getelementptr inbounds [28 x i32]* %result, i32 0, i32 %i_4_cast
  %result_load = load i32* %result_addr, align 4
  call void @_ssdm_op_Write.axis.i32P(i32* %output_r, i32 %result_load) nounwind
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_6) nounwind
  %i_6 = add i5 %i_4, 1
  br label %.preheader

; <label>:16                                      ; preds = %.preheader
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i25 @llvm.part.select.i25(i25, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.axis.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i24
  ret i24 %empty_24
}

define weak i23 @_ssdm_op_PartSelect.i23.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2)
  %empty_25 = trunc i25 %empty to i23
  ret i23 %empty_25
}

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_26 = trunc i32 %empty to i22
  ret i22 %empty_26
}

define weak i22 @_ssdm_op_PartSelect.i22.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2)
  %empty_27 = trunc i25 %empty to i22
  ret i22 %empty_27
}

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_28 = trunc i32 %empty to i21
  ret i21 %empty_28
}

define weak i20 @_ssdm_op_PartSelect.i20.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2)
  %empty_29 = trunc i25 %empty to i20
  ret i20 %empty_29
}

define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_30 = trunc i32 %empty to i19
  ret i19 %empty_30
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_31 = and i32 %0, %empty
  %empty_32 = icmp ne i32 %empty_31, 0
  ret i1 %empty_32
}

declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (i32*, i32*)* @mlp, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"input", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"output", metadata !17, metadata !"int", i32 0, i32 31}
