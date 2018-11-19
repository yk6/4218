; ModuleID = 'C:/Users/G552/Desktop/4218_proj/hls_to_be_submitted/hls/solution4/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@mlp_str = internal unnamed_addr constant [4 x i8] c"mlp\00" ; [#uses=1 type=[4 x i8]*]
@p_str9 = private unnamed_addr constant [12 x i8] c"mlp_label18\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str8 = private unnamed_addr constant [12 x i8] c"mlp_label16\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str6 = private unnamed_addr constant [12 x i8] c"mlp_label14\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str5 = private unnamed_addr constant [12 x i8] c"mlp_label13\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"mlp_label12\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=23 type=[1 x i8]*]
@p_str13 = private unnamed_addr constant [12 x i8] c"mlp_label22\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str12 = private unnamed_addr constant [12 x i8] c"mlp_label21\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"mlp_label19\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=0]
define void @mlp(i32* %input, i32* %output) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @mlp_str) nounwind
  %test_data_1 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_2 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_3 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_4 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_5 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_6 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_7 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_8 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_9 = alloca [29 x i32], align 4       ; [#uses=2 type=[29 x i32]*]
  %test_data_10 = alloca [29 x i32], align 4      ; [#uses=2 type=[29 x i32]*]
  %test_data_11 = alloca [29 x i32], align 4      ; [#uses=2 type=[29 x i32]*]
  %test_data_12 = alloca [29 x i32], align 4      ; [#uses=2 type=[29 x i32]*]
  %test_data_13 = alloca [29 x i32], align 4      ; [#uses=2 type=[29 x i32]*]
  %weightIH_0 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_1 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_2 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_3 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_4 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_5 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_6 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_7 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_8 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_9 = alloca [11 x i32], align 4        ; [#uses=2 type=[11 x i32]*]
  %weightIH_10 = alloca [11 x i32], align 4       ; [#uses=2 type=[11 x i32]*]
  %weightIH_11 = alloca [11 x i32], align 4       ; [#uses=2 type=[11 x i32]*]
  %weightIH_12 = alloca [11 x i32], align 4       ; [#uses=2 type=[11 x i32]*]
  %weightIH_13 = alloca [11 x i32], align 4       ; [#uses=2 type=[11 x i32]*]
  %weightHO = alloca [14 x i32], align 4          ; [#uses=3 type=[14 x i32]*]
  %SumH = alloca [11 x i32], align 4              ; [#uses=2 type=[11 x i32]*]
  %result = alloca [28 x i32], align 4            ; [#uses=2 type=[28 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %input}, i64 0, metadata !23), !dbg !32 ; [debug line = 3:14] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i32* %output}, i64 0, metadata !33), !dbg !34 ; [debug line = 3:27] [debug variable = output]
  call void (...)* @_ssdm_op_SpecInterface(i32* %input, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !35 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %output, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !37 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !38 ; [debug line = 6:1]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_1}, metadata !39), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[1]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_2}, metadata !45), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[2]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_3}, metadata !46), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[3]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_4}, metadata !47), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[4]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_5}, metadata !48), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[5]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_6}, metadata !49), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[6]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_7}, metadata !50), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[7]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_8}, metadata !51), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[8]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_9}, metadata !52), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[9]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_10}, metadata !53), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[10]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_11}, metadata !54), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[11]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_12}, metadata !55), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[12]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %test_data_13}, metadata !56), !dbg !44 ; [debug line = 8:6] [debug variable = test_data[13]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_0}, metadata !57), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[0]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_1}, metadata !62), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[1]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_2}, metadata !63), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[2]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_3}, metadata !64), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[3]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_4}, metadata !65), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[4]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_5}, metadata !66), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[5]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_6}, metadata !67), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[6]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_7}, metadata !68), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[7]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_8}, metadata !69), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[8]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_9}, metadata !70), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[9]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_10}, metadata !71), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[10]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_11}, metadata !72), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[11]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_12}, metadata !73), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[12]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %weightIH_13}, metadata !74), !dbg !61 ; [debug line = 10:6] [debug variable = weightIH[13]]
  call void @llvm.dbg.declare(metadata !{[14 x i32]* %weightHO}, metadata !75), !dbg !78 ; [debug line = 11:6] [debug variable = weightHO]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %SumH}, metadata !79), !dbg !82 ; [debug line = 13:6] [debug variable = SumH]
  call void @llvm.dbg.declare(metadata !{[28 x i32]* %result}, metadata !83), !dbg !87 ; [debug line = 15:6] [debug variable = result]
  br label %1, !dbg !88                           ; [debug line = 20:19]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 1, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i5]
  %exitcond9 = icmp eq i5 %i, -3, !dbg !88        ; [#uses=1 type=i1] [debug line = 20:19]
  br i1 %exitcond9, label %.preheader12.preheader, label %2, !dbg !88 ; [debug line = 20:19]

.preheader12.preheader:                           ; preds = %1
  br label %.preheader12, !dbg !90                ; [debug line = 38:19]

; <label>:2                                       ; preds = %1
  %i_cast = zext i5 %i to i32, !dbg !88           ; [#uses=13 type=i32] [debug line = 20:19]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str4) nounwind, !dbg !92 ; [debug line = 20:41]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 20:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !94 ; [debug line = 21:1]
  %input_read = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !95 ; [#uses=1 type=i32] [debug line = 21:3]
  %test_data_1_addr = getelementptr [29 x i32]* %test_data_1, i32 0, i32 %i_cast, !dbg !95 ; [#uses=1 type=i32*] [debug line = 21:3]
  store i32 %input_read, i32* %test_data_1_addr, align 4, !dbg !95 ; [debug line = 21:3]
  %input_read_1 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !96 ; [#uses=1 type=i32] [debug line = 22:3]
  %test_data_2_addr = getelementptr [29 x i32]* %test_data_2, i32 0, i32 %i_cast, !dbg !96 ; [#uses=1 type=i32*] [debug line = 22:3]
  store i32 %input_read_1, i32* %test_data_2_addr, align 4, !dbg !96 ; [debug line = 22:3]
  %input_read_2 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !97 ; [#uses=1 type=i32] [debug line = 23:3]
  %test_data_3_addr = getelementptr [29 x i32]* %test_data_3, i32 0, i32 %i_cast, !dbg !97 ; [#uses=1 type=i32*] [debug line = 23:3]
  store i32 %input_read_2, i32* %test_data_3_addr, align 4, !dbg !97 ; [debug line = 23:3]
  %input_read_3 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !98 ; [#uses=1 type=i32] [debug line = 24:3]
  %test_data_4_addr = getelementptr [29 x i32]* %test_data_4, i32 0, i32 %i_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 24:3]
  store i32 %input_read_3, i32* %test_data_4_addr, align 4, !dbg !98 ; [debug line = 24:3]
  %input_read_4 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !99 ; [#uses=1 type=i32] [debug line = 25:3]
  %test_data_5_addr = getelementptr [29 x i32]* %test_data_5, i32 0, i32 %i_cast, !dbg !99 ; [#uses=1 type=i32*] [debug line = 25:3]
  store i32 %input_read_4, i32* %test_data_5_addr, align 4, !dbg !99 ; [debug line = 25:3]
  %input_read_5 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !100 ; [#uses=1 type=i32] [debug line = 26:3]
  %test_data_6_addr = getelementptr [29 x i32]* %test_data_6, i32 0, i32 %i_cast, !dbg !100 ; [#uses=1 type=i32*] [debug line = 26:3]
  store i32 %input_read_5, i32* %test_data_6_addr, align 4, !dbg !100 ; [debug line = 26:3]
  %input_read_6 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !101 ; [#uses=1 type=i32] [debug line = 27:3]
  %test_data_7_addr = getelementptr [29 x i32]* %test_data_7, i32 0, i32 %i_cast, !dbg !101 ; [#uses=1 type=i32*] [debug line = 27:3]
  store i32 %input_read_6, i32* %test_data_7_addr, align 4, !dbg !101 ; [debug line = 27:3]
  %input_read_7 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 28:3]
  %test_data_8_addr = getelementptr [29 x i32]* %test_data_8, i32 0, i32 %i_cast, !dbg !102 ; [#uses=1 type=i32*] [debug line = 28:3]
  store i32 %input_read_7, i32* %test_data_8_addr, align 4, !dbg !102 ; [debug line = 28:3]
  %input_read_8 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !103 ; [#uses=1 type=i32] [debug line = 29:3]
  %test_data_9_addr = getelementptr [29 x i32]* %test_data_9, i32 0, i32 %i_cast, !dbg !103 ; [#uses=1 type=i32*] [debug line = 29:3]
  store i32 %input_read_8, i32* %test_data_9_addr, align 4, !dbg !103 ; [debug line = 29:3]
  %input_read_9 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !104 ; [#uses=1 type=i32] [debug line = 30:3]
  %test_data_10_addr = getelementptr [29 x i32]* %test_data_10, i32 0, i32 %i_cast, !dbg !104 ; [#uses=1 type=i32*] [debug line = 30:3]
  store i32 %input_read_9, i32* %test_data_10_addr, align 4, !dbg !104 ; [debug line = 30:3]
  %input_read_10 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !105 ; [#uses=1 type=i32] [debug line = 31:3]
  %test_data_11_addr = getelementptr [29 x i32]* %test_data_11, i32 0, i32 %i_cast, !dbg !105 ; [#uses=1 type=i32*] [debug line = 31:3]
  store i32 %input_read_10, i32* %test_data_11_addr, align 4, !dbg !105 ; [debug line = 31:3]
  %input_read_11 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !106 ; [#uses=1 type=i32] [debug line = 32:3]
  %test_data_12_addr = getelementptr [29 x i32]* %test_data_12, i32 0, i32 %i_cast, !dbg !106 ; [#uses=1 type=i32*] [debug line = 32:3]
  store i32 %input_read_11, i32* %test_data_12_addr, align 4, !dbg !106 ; [debug line = 32:3]
  %input_read_12 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !107 ; [#uses=1 type=i32] [debug line = 33:3]
  %test_data_13_addr = getelementptr [29 x i32]* %test_data_13, i32 0, i32 %i_cast, !dbg !107 ; [#uses=1 type=i32*] [debug line = 33:3]
  store i32 %input_read_12, i32* %test_data_13_addr, align 4, !dbg !107 ; [debug line = 33:3]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_1) nounwind, !dbg !108 ; [#uses=0 type=i32] [debug line = 35:2]
  %i_1 = add i5 %i, 1, !dbg !109                  ; [#uses=1 type=i5] [debug line = 20:35]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !110), !dbg !109 ; [debug line = 20:35] [debug variable = i]
  br label %1, !dbg !109                          ; [debug line = 20:35]

.preheader12:                                     ; preds = %3, %.preheader12.preheader
  %j = phi i4 [ %j_2, %3 ], [ 1, %.preheader12.preheader ] ; [#uses=3 type=i4]
  %exitcond8 = icmp eq i4 %j, -5, !dbg !90        ; [#uses=1 type=i1] [debug line = 38:19]
  br i1 %exitcond8, label %.preheader11.preheader, label %3, !dbg !90 ; [debug line = 38:19]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !111               ; [debug line = 43:19]

; <label>:3                                       ; preds = %.preheader12
  %j_cast = zext i4 %j to i32, !dbg !90           ; [#uses=1 type=i32] [debug line = 38:19]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str5) nounwind, !dbg !113 ; [debug line = 38:41]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind, !dbg !113 ; [#uses=1 type=i32] [debug line = 38:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !115 ; [debug line = 39:1]
  %input_read_13 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !116 ; [#uses=1 type=i32] [debug line = 39:3]
  %tmp = shl i32 %input_read_13, 8, !dbg !116     ; [#uses=1 type=i32] [debug line = 39:3]
  %weightIH_0_addr = getelementptr [11 x i32]* %weightIH_0, i32 0, i32 %j_cast, !dbg !116 ; [#uses=1 type=i32*] [debug line = 39:3]
  store i32 %tmp, i32* %weightIH_0_addr, align 4, !dbg !116 ; [debug line = 39:3]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_s) nounwind, !dbg !117 ; [#uses=0 type=i32] [debug line = 41:2]
  %j_2 = add i4 1, %j, !dbg !118                  ; [#uses=1 type=i4] [debug line = 38:35]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !119), !dbg !118 ; [debug line = 38:35] [debug variable = j]
  br label %.preheader12, !dbg !118               ; [debug line = 38:35]

.preheader11:                                     ; preds = %4, %.preheader11.preheader
  %j_1 = phi i4 [ %j_4, %4 ], [ 1, %.preheader11.preheader ] ; [#uses=3 type=i4]
  %exitcond7 = icmp eq i4 %j_1, -5, !dbg !111     ; [#uses=1 type=i1] [debug line = 43:19]
  br i1 %exitcond7, label %5, label %4, !dbg !111 ; [debug line = 43:19]

; <label>:4                                       ; preds = %.preheader11
  %j_1_cast = zext i4 %j_1 to i32, !dbg !111      ; [#uses=13 type=i32] [debug line = 43:19]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str6) nounwind, !dbg !120 ; [debug line = 43:41]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6) nounwind, !dbg !120 ; [#uses=1 type=i32] [debug line = 43:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !122 ; [debug line = 44:1]
  %input_read_15 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_1_addr = getelementptr [11 x i32]* %weightIH_1, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_15, i32* %weightIH_1_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_16 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_2_addr = getelementptr [11 x i32]* %weightIH_2, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_16, i32* %weightIH_2_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_17 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_3_addr = getelementptr [11 x i32]* %weightIH_3, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_17, i32* %weightIH_3_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_18 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_4_addr = getelementptr [11 x i32]* %weightIH_4, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_18, i32* %weightIH_4_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_19 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_5_addr = getelementptr [11 x i32]* %weightIH_5, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_19, i32* %weightIH_5_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_20 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_6_addr = getelementptr [11 x i32]* %weightIH_6, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_20, i32* %weightIH_6_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_21 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_7_addr = getelementptr [11 x i32]* %weightIH_7, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_21, i32* %weightIH_7_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_22 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_8_addr = getelementptr [11 x i32]* %weightIH_8, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_22, i32* %weightIH_8_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_23 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_9_addr = getelementptr [11 x i32]* %weightIH_9, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_23, i32* %weightIH_9_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_24 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_10_addr = getelementptr [11 x i32]* %weightIH_10, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_24, i32* %weightIH_10_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_25 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_11_addr = getelementptr [11 x i32]* %weightIH_11, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_25, i32* %weightIH_11_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_26 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_12_addr = getelementptr [11 x i32]* %weightIH_12, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_26, i32* %weightIH_12_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %input_read_27 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:4]
  %weightIH_13_addr = getelementptr [11 x i32]* %weightIH_13, i32 0, i32 %j_1_cast, !dbg !123 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input_read_27, i32* %weightIH_13_addr, align 4, !dbg !123 ; [debug line = 45:4]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_3) nounwind, !dbg !126 ; [#uses=0 type=i32] [debug line = 48:2]
  %j_4 = add i4 %j_1, 1, !dbg !127                ; [#uses=1 type=i4] [debug line = 43:35]
  call void @llvm.dbg.value(metadata !{i4 %j_4}, i64 0, metadata !119), !dbg !127 ; [debug line = 43:35] [debug variable = j]
  br label %.preheader11, !dbg !127               ; [debug line = 43:35]

; <label>:5                                       ; preds = %.preheader11
  %input_read_14 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !128 ; [#uses=1 type=i32] [debug line = 50:2]
  %tmp_2 = shl i32 %input_read_14, 8, !dbg !128   ; [#uses=1 type=i32] [debug line = 50:2]
  %weightHO_addr = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 0, !dbg !128 ; [#uses=2 type=i32*] [debug line = 50:2]
  store i32 %tmp_2, i32* %weightHO_addr, align 4, !dbg !128 ; [debug line = 50:2]
  br label %6, !dbg !129                          ; [debug line = 52:19]

; <label>:6                                       ; preds = %7, %5
  %i_2 = phi i4 [ 1, %5 ], [ %i_5, %7 ]           ; [#uses=3 type=i4]
  %exitcond5 = icmp eq i4 %i_2, -5, !dbg !129     ; [#uses=1 type=i1] [debug line = 52:19]
  br i1 %exitcond5, label %.preheader10.preheader, label %7, !dbg !129 ; [debug line = 52:19]

.preheader10.preheader:                           ; preds = %6
  %weightHO_load = load i32* %weightHO_addr, align 4, !dbg !131 ; [#uses=1 type=i32] [debug line = 67:4]
  br label %.preheader10, !dbg !134               ; [debug line = 58:19]

; <label>:7                                       ; preds = %6
  %i_2_cast = zext i4 %i_2 to i32, !dbg !135      ; [#uses=1 type=i32] [debug line = 51:2]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str8) nounwind, !dbg !136 ; [debug line = 52:41]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind, !dbg !136 ; [#uses=1 type=i32] [debug line = 52:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !138 ; [debug line = 53:1]
  %input_read_28 = call i32 @_ssdm_op_Read.axis.i32P(i32* %input) nounwind, !dbg !139 ; [#uses=1 type=i32] [debug line = 53:3]
  %weightHO_addr_1 = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 %i_2_cast, !dbg !139 ; [#uses=1 type=i32*] [debug line = 53:3]
  store i32 %input_read_28, i32* %weightHO_addr_1, align 4, !dbg !139 ; [debug line = 53:3]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_4) nounwind, !dbg !140 ; [#uses=0 type=i32] [debug line = 55:2]
  %i_5 = add i4 %i_2, 1, !dbg !141                ; [#uses=1 type=i4] [debug line = 52:35]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !110), !dbg !141 ; [debug line = 52:35] [debug variable = i]
  br label %6, !dbg !141                          ; [debug line = 52:35]

.preheader10:                                     ; preds = %14, %.preheader10.preheader
  %k_5 = phi i5 [ %k, %14 ], [ 1, %.preheader10.preheader ] ; [#uses=3 type=i5]
  %exitcond4 = icmp eq i5 %k_5, -3, !dbg !134     ; [#uses=1 type=i1] [debug line = 58:19]
  br i1 %exitcond4, label %.preheader.preheader, label %8, !dbg !134 ; [debug line = 58:19]

.preheader.preheader:                             ; preds = %.preheader10
  br label %.preheader, !dbg !142                 ; [debug line = 76:19]

; <label>:8                                       ; preds = %.preheader10
  %k_5_cast = zext i5 %k_5 to i32, !dbg !134      ; [#uses=14 type=i32] [debug line = 58:19]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str9) nounwind, !dbg !144 ; [debug line = 58:41]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 58:41]
  %test_data_1_addr_1 = getelementptr [29 x i32]* %test_data_1, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_1_load = load i32* %test_data_1_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_2_addr_1 = getelementptr [29 x i32]* %test_data_2, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_2_load = load i32* %test_data_2_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_3_addr_1 = getelementptr [29 x i32]* %test_data_3, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_3_load = load i32* %test_data_3_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_4_addr_1 = getelementptr [29 x i32]* %test_data_4, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_4_load = load i32* %test_data_4_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_5_addr_1 = getelementptr [29 x i32]* %test_data_5, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_5_load = load i32* %test_data_5_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_6_addr_1 = getelementptr [29 x i32]* %test_data_6, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_6_load = load i32* %test_data_6_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_7_addr_1 = getelementptr [29 x i32]* %test_data_7, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_7_load = load i32* %test_data_7_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_8_addr_1 = getelementptr [29 x i32]* %test_data_8, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_8_load = load i32* %test_data_8_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_9_addr_1 = getelementptr [29 x i32]* %test_data_9, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_9_load = load i32* %test_data_9_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_10_addr_1 = getelementptr [29 x i32]* %test_data_10, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_10_load = load i32* %test_data_10_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_11_addr_1 = getelementptr [29 x i32]* %test_data_11, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_11_load = load i32* %test_data_11_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_12_addr_1 = getelementptr [29 x i32]* %test_data_12, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_12_load = load i32* %test_data_12_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %test_data_13_addr_1 = getelementptr [29 x i32]* %test_data_13, i32 0, i32 %k_5_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data_13_load = load i32* %test_data_13_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  br label %9, !dbg !150                          ; [debug line = 59:20]

; <label>:9                                       ; preds = %10, %8
  %i_3 = phi i4 [ 1, %8 ], [ %i_7, %10 ]          ; [#uses=3 type=i4]
  %exitcond3 = icmp eq i4 %i_3, -5, !dbg !150     ; [#uses=1 type=i1] [debug line = 59:20]
  br i1 %exitcond3, label %11, label %10, !dbg !150 ; [debug line = 59:20]

; <label>:10                                      ; preds = %9
  %i_3_cast = zext i4 %i_3 to i32, !dbg !150      ; [#uses=15 type=i32] [debug line = 59:20]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !151 ; [debug line = 59:42]
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind, !dbg !151 ; [#uses=1 type=i32] [debug line = 59:42]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !152 ; [debug line = 60:1]
  %weightIH_0_addr_1 = getelementptr [11 x i32]* %weightIH_0, i32 0, i32 %i_3_cast, !dbg !153 ; [#uses=1 type=i32*] [debug line = 60:4]
  %weightIH_0_load = load i32* %weightIH_0_addr_1, align 4, !dbg !153 ; [#uses=1 type=i32] [debug line = 60:4]
  %SumH_addr = getelementptr inbounds [11 x i32]* %SumH, i32 0, i32 %i_3_cast, !dbg !153 ; [#uses=1 type=i32*] [debug line = 60:4]
  %weightIH_1_addr_1 = getelementptr [11 x i32]* %weightIH_1, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_1_load = load i32* %weightIH_1_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_8 = mul nsw i32 %weightIH_1_load, %test_data_1_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_2_addr_1 = getelementptr [11 x i32]* %weightIH_2, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_2_load = load i32* %weightIH_2_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_1 = mul nsw i32 %weightIH_2_load, %test_data_2_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_3_addr_1 = getelementptr [11 x i32]* %weightIH_3, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_3_load = load i32* %weightIH_3_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_2 = mul nsw i32 %weightIH_3_load, %test_data_3_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_4_addr_1 = getelementptr [11 x i32]* %weightIH_4, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_4_load = load i32* %weightIH_4_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_3 = mul nsw i32 %weightIH_4_load, %test_data_4_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_5_addr_1 = getelementptr [11 x i32]* %weightIH_5, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_5_load = load i32* %weightIH_5_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_4 = mul nsw i32 %weightIH_5_load, %test_data_5_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_6_addr_1 = getelementptr [11 x i32]* %weightIH_6, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_6_load = load i32* %weightIH_6_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_5 = mul nsw i32 %weightIH_6_load, %test_data_6_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_7_addr_1 = getelementptr [11 x i32]* %weightIH_7, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_7_load = load i32* %weightIH_7_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_6 = mul nsw i32 %weightIH_7_load, %test_data_7_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_8_addr_1 = getelementptr [11 x i32]* %weightIH_8, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_8_load = load i32* %weightIH_8_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_7 = mul nsw i32 %weightIH_8_load, %test_data_8_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_9_addr_1 = getelementptr [11 x i32]* %weightIH_9, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_9_load = load i32* %weightIH_9_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_8 = mul nsw i32 %weightIH_9_load, %test_data_9_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_10_addr_1 = getelementptr [11 x i32]* %weightIH_10, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_10_load = load i32* %weightIH_10_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_9 = mul nsw i32 %weightIH_10_load, %test_data_10_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_11_addr_1 = getelementptr [11 x i32]* %weightIH_11, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_11_load = load i32* %weightIH_11_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_s = mul nsw i32 %weightIH_11_load, %test_data_11_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_12_addr_1 = getelementptr [11 x i32]* %weightIH_12, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_12_load = load i32* %weightIH_12_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_10 = mul nsw i32 %weightIH_12_load, %test_data_12_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %weightIH_13_addr_1 = getelementptr [11 x i32]* %weightIH_13, i32 0, i32 %i_3_cast, !dbg !145 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH_13_load = load i32* %weightIH_13_addr_1, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_36_11 = mul nsw i32 %weightIH_13_load, %test_data_13_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp1 = add i32 %tmp_8, %tmp_36_1, !dbg !145    ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp2 = add i32 %tmp1, %weightIH_0_load, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp3 = add i32 %tmp_36_2, %tmp_36_3, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp4 = add i32 %tmp_36_4, %tmp_36_5, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp5 = add i32 %tmp4, %tmp3, !dbg !145         ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp6 = add i32 %tmp5, %tmp2, !dbg !145         ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp7 = add i32 %tmp_36_7, %tmp_36_8, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp8 = add i32 %tmp7, %tmp_36_6, !dbg !145     ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp9 = add i32 %tmp_36_9, %tmp_36_s, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp10 = add i32 %tmp_36_10, %tmp_36_11, !dbg !145 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp11 = add i32 %tmp10, %tmp9, !dbg !145       ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp12 = add i32 %tmp11, %tmp8, !dbg !145       ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_37_s = add nsw i32 %tmp12, %tmp6, !dbg !145 ; [#uses=5 type=i32] [debug line = 62:5]
  %tmp_9 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %tmp_37_s, i32 8, i32 31), !dbg !154 ; [#uses=7 type=i24] [debug line = 64:14]
  %tmp_34_cast = sext i24 %tmp_9 to i25           ; [#uses=1 type=i25]
  %tmp_i = icmp sgt i24 %tmp_9, 1280, !dbg !155   ; [#uses=3 type=i1] [debug line = 83:2@64:14]
  %tmp_1_i = icmp sgt i24 %tmp_9, 608, !dbg !160  ; [#uses=2 type=i1] [debug line = 86:7@64:14]
  %tmp_10 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %tmp_37_s, i32 13, i32 31), !dbg !161 ; [#uses=1 type=i19] [debug line = 87:3@64:14]
  %tmp_11 = sext i19 %tmp_10 to i27, !dbg !161    ; [#uses=1 type=i27] [debug line = 87:3@64:14]
  %tmp_2_i_cast = zext i27 %tmp_11 to i28, !dbg !161 ; [#uses=1 type=i28] [debug line = 87:3@64:14]
  %tmp_3_i = add i28 %tmp_2_i_cast, 216, !dbg !161 ; [#uses=1 type=i28] [debug line = 87:3@64:14]
  %tmp_3_i_cast = zext i28 %tmp_3_i to i30, !dbg !161 ; [#uses=1 type=i30] [debug line = 87:3@64:14]
  %tmp_4_i = icmp sgt i24 %tmp_9, 256, !dbg !163  ; [#uses=2 type=i1] [debug line = 89:7@64:14]
  %tmp_12 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %tmp_37_s, i32 11, i32 31), !dbg !164 ; [#uses=1 type=i21] [debug line = 90:3@64:14]
  %tmp_13 = sext i21 %tmp_12 to i29, !dbg !164    ; [#uses=1 type=i29] [debug line = 90:3@64:14]
  %tmp_5_i_cast = zext i29 %tmp_13 to i30, !dbg !164 ; [#uses=1 type=i30] [debug line = 90:3@64:14]
  %tmp_6_i = add i30 %tmp_5_i_cast, 160, !dbg !164 ; [#uses=1 type=i30] [debug line = 90:3@64:14]
  %tmp_7_i = icmp sgt i24 %tmp_9, -256, !dbg !166 ; [#uses=2 type=i1] [debug line = 92:7@64:14]
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_37_s, i32 31), !dbg !167 ; [#uses=1 type=i1] [debug line = 93:3@64:14]
  %p_neg_i = sub i25 0, %tmp_34_cast, !dbg !167   ; [#uses=3 type=i25] [debug line = 93:3@64:14]
  %tmp_15 = call i23 @_ssdm_op_PartSelect.i23.i25.i32.i32(i25 %p_neg_i, i32 2, i32 24), !dbg !167 ; [#uses=1 type=i23] [debug line = 93:3@64:14]
  %tmp_16 = sext i23 %tmp_15 to i30, !dbg !167    ; [#uses=1 type=i30] [debug line = 93:3@64:14]
  %p_lshr_i_cast = zext i30 %tmp_16 to i31, !dbg !167 ; [#uses=1 type=i31] [debug line = 93:3@64:14]
  %p_neg_t_i = sub i31 0, %p_lshr_i_cast, !dbg !167 ; [#uses=1 type=i31] [debug line = 93:3@64:14]
  %tmp_17 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %tmp_37_s, i32 10, i32 31), !dbg !167 ; [#uses=1 type=i22] [debug line = 93:3@64:14]
  %tmp_18 = sext i22 %tmp_17 to i30, !dbg !167    ; [#uses=1 type=i30] [debug line = 93:3@64:14]
  %p_lshr_f_i_cast = zext i30 %tmp_18 to i31, !dbg !167 ; [#uses=1 type=i31] [debug line = 93:3@64:14]
  %tmp_8_i = select i1 %tmp_14, i31 %p_neg_t_i, i31 %p_lshr_f_i_cast, !dbg !167 ; [#uses=1 type=i31] [debug line = 93:3@64:14]
  %tmp_8_i_cast = sext i31 %tmp_8_i to i32, !dbg !167 ; [#uses=1 type=i32] [debug line = 93:3@64:14]
  %tmp_9_i = add nsw i32 %tmp_8_i_cast, 128, !dbg !167 ; [#uses=1 type=i32] [debug line = 93:3@64:14]
  %tmp_i_16 = icmp sgt i24 %tmp_9, -608, !dbg !169 ; [#uses=2 type=i1] [debug line = 95:7@64:14]
  %tmp_19 = call i22 @_ssdm_op_PartSelect.i22.i25.i32.i32(i25 %p_neg_i, i32 3, i32 24), !dbg !170 ; [#uses=1 type=i22] [debug line = 96:3@64:14]
  %tmp_20 = sext i22 %tmp_19 to i29, !dbg !170    ; [#uses=1 type=i29] [debug line = 96:3@64:14]
  %tmp_13_i_cast = zext i29 %tmp_20 to i30, !dbg !170 ; [#uses=1 type=i30] [debug line = 96:3@64:14]
  %tmp_11_i = sub i30 96, %tmp_13_i_cast, !dbg !170 ; [#uses=1 type=i30] [debug line = 96:3@64:14]
  %tmp_11_i_cast = sext i30 %tmp_11_i to i32, !dbg !170 ; [#uses=1 type=i32] [debug line = 96:3@64:14]
  %tmp_12_i = icmp sgt i24 %tmp_9, -1280, !dbg !172 ; [#uses=1 type=i1] [debug line = 98:7@64:14]
  %tmp_21 = call i20 @_ssdm_op_PartSelect.i20.i25.i32.i32(i25 %p_neg_i, i32 5, i32 24), !dbg !173 ; [#uses=1 type=i20] [debug line = 99:3@64:14]
  %tmp_22 = sext i20 %tmp_21 to i27, !dbg !173    ; [#uses=1 type=i27] [debug line = 99:3@64:14]
  %tmp_16_i_cast = zext i27 %tmp_22 to i28, !dbg !173 ; [#uses=1 type=i28] [debug line = 99:3@64:14]
  %tmp_14_i = sub i28 40, %tmp_16_i_cast, !dbg !173 ; [#uses=1 type=i28] [debug line = 99:3@64:14]
  %sel_tmp_i = xor i1 %tmp_i, true, !dbg !155     ; [#uses=1 type=i1] [debug line = 83:2@64:14]
  %sel_tmp1_i = and i1 %tmp_1_i, %sel_tmp_i       ; [#uses=1 type=i1]
  %sel_tmp5_i = xor i1 %tmp_1_i, true             ; [#uses=1 type=i1]
  %sel_tmp6_i = and i1 %tmp_4_i, %sel_tmp5_i      ; [#uses=2 type=i1]
  %sel_tmp12_i = xor i1 %tmp_4_i, true            ; [#uses=1 type=i1]
  %sel_tmp13_i = and i1 %tmp_7_i, %sel_tmp12_i    ; [#uses=1 type=i1]
  %sel_tmp21_i = xor i1 %tmp_7_i, true            ; [#uses=1 type=i1]
  %sel_tmp22_i = and i1 %tmp_i_16, %sel_tmp21_i   ; [#uses=2 type=i1]
  %sel_tmp32_i = xor i1 %tmp_i_16, true           ; [#uses=1 type=i1]
  %sel_tmp33_i = and i1 %tmp_12_i, %sel_tmp32_i   ; [#uses=1 type=i1]
  %newSel = select i1 %tmp_i, i28 256, i28 %tmp_14_i ; [#uses=1 type=i28]
  %newSel_cast = sext i28 %newSel to i32          ; [#uses=1 type=i32]
  %or_cond = or i1 %tmp_i, %sel_tmp33_i           ; [#uses=2 type=i1]
  %newSel1 = select i1 %sel_tmp22_i, i32 %tmp_11_i_cast, i32 %tmp_9_i ; [#uses=1 type=i32]
  %or_cond1 = or i1 %sel_tmp22_i, %sel_tmp13_i    ; [#uses=1 type=i1]
  %newSel2 = select i1 %sel_tmp6_i, i30 %tmp_6_i, i30 %tmp_3_i_cast ; [#uses=1 type=i30]
  %or_cond2 = or i1 %sel_tmp6_i, %sel_tmp1_i      ; [#uses=1 type=i1]
  %newSel3 = select i1 %or_cond, i32 %newSel_cast, i32 %newSel1 ; [#uses=1 type=i32]
  %or_cond3 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %newSel4 = select i1 %or_cond2, i30 %newSel2, i30 0 ; [#uses=1 type=i30]
  %newSel57_cast = zext i30 %newSel4 to i32       ; [#uses=1 type=i32]
  %newSel5 = select i1 %or_cond3, i32 %newSel3, i32 %newSel57_cast ; [#uses=1 type=i32]
  store i32 %newSel5, i32* %SumH_addr, align 4, !dbg !154 ; [debug line = 64:14]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_7) nounwind, !dbg !175 ; [#uses=0 type=i32] [debug line = 65:3]
  %i_7 = add i4 %i_3, 1, !dbg !176                ; [#uses=1 type=i4] [debug line = 59:36]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !110), !dbg !176 ; [debug line = 59:36] [debug variable = i]
  br label %9, !dbg !176                          ; [debug line = 59:36]

; <label>:11                                      ; preds = %9
  %result_addr_1 = getelementptr inbounds [28 x i32]* %result, i32 0, i32 %k_5_cast, !dbg !131 ; [#uses=5 type=i32*] [debug line = 67:4]
  store i32 %weightHO_load, i32* %result_addr_1, align 4, !dbg !131 ; [debug line = 67:4]
  br label %12, !dbg !177                         ; [debug line = 68:21]

; <label>:12                                      ; preds = %13, %11
  %j_3 = phi i4 [ 1, %11 ], [ %j_5, %13 ]         ; [#uses=3 type=i4]
  %exitcond1 = icmp eq i4 %j_3, -5, !dbg !177     ; [#uses=1 type=i1] [debug line = 68:21]
  br i1 %exitcond1, label %14, label %13, !dbg !177 ; [debug line = 68:21]

; <label>:13                                      ; preds = %12
  %j_3_cast = zext i4 %j_3 to i32, !dbg !177      ; [#uses=2 type=i32] [debug line = 68:21]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind, !dbg !179 ; [debug line = 68:43]
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind, !dbg !179 ; [#uses=1 type=i32] [debug line = 68:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !181 ; [debug line = 69:1]
  %SumH_addr_1 = getelementptr inbounds [11 x i32]* %SumH, i32 0, i32 %j_3_cast, !dbg !182 ; [#uses=1 type=i32*] [debug line = 69:5]
  %SumH_load = load i32* %SumH_addr_1, align 4, !dbg !182 ; [#uses=1 type=i32] [debug line = 69:5]
  %weightHO_addr_2 = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 %j_3_cast, !dbg !182 ; [#uses=1 type=i32*] [debug line = 69:5]
  %weightHO_load_1 = load i32* %weightHO_addr_2, align 4, !dbg !182 ; [#uses=1 type=i32] [debug line = 69:5]
  %tmp_32 = mul nsw i32 %weightHO_load_1, %SumH_load, !dbg !182 ; [#uses=1 type=i32] [debug line = 69:5]
  %result_load_2 = load i32* %result_addr_1, align 4, !dbg !182 ; [#uses=1 type=i32] [debug line = 69:5]
  %tmp_33 = add nsw i32 %result_load_2, %tmp_32, !dbg !182 ; [#uses=1 type=i32] [debug line = 69:5]
  store i32 %tmp_33, i32* %result_addr_1, align 4, !dbg !182 ; [debug line = 69:5]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_39) nounwind, !dbg !183 ; [#uses=0 type=i32] [debug line = 70:4]
  %j_5 = add i4 %j_3, 1, !dbg !184                ; [#uses=1 type=i4] [debug line = 68:37]
  call void @llvm.dbg.value(metadata !{i4 %j_5}, i64 0, metadata !119), !dbg !184 ; [debug line = 68:37] [debug variable = j]
  br label %12, !dbg !184                         ; [debug line = 68:37]

; <label>:14                                      ; preds = %12
  %result_load_1 = load i32* %result_addr_1, align 4, !dbg !185 ; [#uses=5 type=i32] [debug line = 71:16]
  %tmp_23 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %result_load_1, i32 8, i32 31), !dbg !185 ; [#uses=7 type=i24] [debug line = 71:16]
  %tmp_30_cast = sext i24 %tmp_23 to i25          ; [#uses=1 type=i25]
  %tmp_i1 = icmp sgt i24 %tmp_23, 1280, !dbg !186 ; [#uses=3 type=i1] [debug line = 83:2@71:16]
  %tmp_1_i2 = icmp sgt i24 %tmp_23, 608, !dbg !187 ; [#uses=2 type=i1] [debug line = 86:7@71:16]
  %tmp_24 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %result_load_1, i32 13, i32 31), !dbg !188 ; [#uses=1 type=i19] [debug line = 87:3@71:16]
  %tmp_25 = sext i19 %tmp_24 to i27, !dbg !188    ; [#uses=1 type=i27] [debug line = 87:3@71:16]
  %tmp_2_i3_cast = zext i27 %tmp_25 to i28, !dbg !188 ; [#uses=1 type=i28] [debug line = 87:3@71:16]
  %tmp_3_i4 = add i28 %tmp_2_i3_cast, 216, !dbg !188 ; [#uses=1 type=i28] [debug line = 87:3@71:16]
  %tmp_3_i4_cast = zext i28 %tmp_3_i4 to i30, !dbg !188 ; [#uses=1 type=i30] [debug line = 87:3@71:16]
  %tmp_4_i5 = icmp sgt i24 %tmp_23, 256, !dbg !189 ; [#uses=2 type=i1] [debug line = 89:7@71:16]
  %tmp_26 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %result_load_1, i32 11, i32 31), !dbg !190 ; [#uses=1 type=i21] [debug line = 90:3@71:16]
  %tmp_27 = sext i21 %tmp_26 to i29, !dbg !190    ; [#uses=1 type=i29] [debug line = 90:3@71:16]
  %tmp_5_i6_cast = zext i29 %tmp_27 to i30, !dbg !190 ; [#uses=1 type=i30] [debug line = 90:3@71:16]
  %tmp_6_i7 = add i30 %tmp_5_i6_cast, 160, !dbg !190 ; [#uses=1 type=i30] [debug line = 90:3@71:16]
  %tmp_7_i8 = icmp sgt i24 %tmp_23, -256, !dbg !191 ; [#uses=2 type=i1] [debug line = 92:7@71:16]
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %result_load_1, i32 31), !dbg !192 ; [#uses=1 type=i1] [debug line = 93:3@71:16]
  %p_neg_i1 = sub i25 0, %tmp_30_cast, !dbg !192  ; [#uses=3 type=i25] [debug line = 93:3@71:16]
  %tmp_29 = call i23 @_ssdm_op_PartSelect.i23.i25.i32.i32(i25 %p_neg_i1, i32 2, i32 24), !dbg !192 ; [#uses=1 type=i23] [debug line = 93:3@71:16]
  %tmp_30 = sext i23 %tmp_29 to i30, !dbg !192    ; [#uses=1 type=i30] [debug line = 93:3@71:16]
  %p_lshr_i12_cast = zext i30 %tmp_30 to i31, !dbg !192 ; [#uses=1 type=i31] [debug line = 93:3@71:16]
  %p_neg_t_i1 = sub i31 0, %p_lshr_i12_cast, !dbg !192 ; [#uses=1 type=i31] [debug line = 93:3@71:16]
  %tmp_31 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %result_load_1, i32 10, i32 31), !dbg !192 ; [#uses=1 type=i22] [debug line = 93:3@71:16]
  %tmp_34 = sext i22 %tmp_31 to i30, !dbg !192    ; [#uses=1 type=i30] [debug line = 93:3@71:16]
  %p_lshr_f_i14_cast = zext i30 %tmp_34 to i31, !dbg !192 ; [#uses=1 type=i31] [debug line = 93:3@71:16]
  %tmp_8_i1 = select i1 %tmp_28, i31 %p_neg_t_i1, i31 %p_lshr_f_i14_cast, !dbg !192 ; [#uses=1 type=i31] [debug line = 93:3@71:16]
  %tmp_8_i15_cast = sext i31 %tmp_8_i1 to i32, !dbg !192 ; [#uses=1 type=i32] [debug line = 93:3@71:16]
  %tmp_9_i1 = add nsw i32 %tmp_8_i15_cast, 128, !dbg !192 ; [#uses=1 type=i32] [debug line = 93:3@71:16]
  %tmp_i1_20 = icmp sgt i24 %tmp_23, -608, !dbg !193 ; [#uses=2 type=i1] [debug line = 95:7@71:16]
  %tmp_35 = call i22 @_ssdm_op_PartSelect.i22.i25.i32.i32(i25 %p_neg_i1, i32 3, i32 24), !dbg !194 ; [#uses=1 type=i22] [debug line = 96:3@71:16]
  %tmp_36 = sext i22 %tmp_35 to i29, !dbg !194    ; [#uses=1 type=i29] [debug line = 96:3@71:16]
  %tmp_13_i18_cast = zext i29 %tmp_36 to i30, !dbg !194 ; [#uses=1 type=i30] [debug line = 96:3@71:16]
  %tmp_11_i1 = sub i30 96, %tmp_13_i18_cast, !dbg !194 ; [#uses=1 type=i30] [debug line = 96:3@71:16]
  %tmp_11_i19_cast = sext i30 %tmp_11_i1 to i32, !dbg !194 ; [#uses=1 type=i32] [debug line = 96:3@71:16]
  %tmp_12_i1 = icmp sgt i24 %tmp_23, -1280, !dbg !195 ; [#uses=1 type=i1] [debug line = 98:7@71:16]
  %tmp_37 = call i20 @_ssdm_op_PartSelect.i20.i25.i32.i32(i25 %p_neg_i1, i32 5, i32 24), !dbg !196 ; [#uses=1 type=i20] [debug line = 99:3@71:16]
  %tmp_38 = sext i20 %tmp_37 to i27, !dbg !196    ; [#uses=1 type=i27] [debug line = 99:3@71:16]
  %tmp_16_i21_cast = zext i27 %tmp_38 to i28, !dbg !196 ; [#uses=1 type=i28] [debug line = 99:3@71:16]
  %tmp_14_i1 = sub i28 40, %tmp_16_i21_cast, !dbg !196 ; [#uses=1 type=i28] [debug line = 99:3@71:16]
  %sel_tmp_i1 = xor i1 %tmp_i1, true, !dbg !186   ; [#uses=1 type=i1] [debug line = 83:2@71:16]
  %sel_tmp1_i1 = and i1 %tmp_1_i2, %sel_tmp_i1    ; [#uses=1 type=i1]
  %sel_tmp5_i1 = xor i1 %tmp_1_i2, true           ; [#uses=1 type=i1]
  %sel_tmp6_i1 = and i1 %tmp_4_i5, %sel_tmp5_i1   ; [#uses=2 type=i1]
  %sel_tmp12_i1 = xor i1 %tmp_4_i5, true          ; [#uses=1 type=i1]
  %sel_tmp13_i1 = and i1 %tmp_7_i8, %sel_tmp12_i1 ; [#uses=1 type=i1]
  %sel_tmp21_i1 = xor i1 %tmp_7_i8, true          ; [#uses=1 type=i1]
  %sel_tmp22_i1 = and i1 %tmp_i1_20, %sel_tmp21_i1 ; [#uses=2 type=i1]
  %sel_tmp32_i1 = xor i1 %tmp_i1_20, true         ; [#uses=1 type=i1]
  %sel_tmp33_i1 = and i1 %tmp_12_i1, %sel_tmp32_i1 ; [#uses=1 type=i1]
  %newSel6 = select i1 %tmp_i1, i28 256, i28 %tmp_14_i1 ; [#uses=1 type=i28]
  %newSel61_cast = sext i28 %newSel6 to i32       ; [#uses=1 type=i32]
  %or_cond4 = or i1 %tmp_i1, %sel_tmp33_i1        ; [#uses=2 type=i1]
  %newSel7 = select i1 %sel_tmp22_i1, i32 %tmp_11_i19_cast, i32 %tmp_9_i1 ; [#uses=1 type=i32]
  %or_cond5 = or i1 %sel_tmp22_i1, %sel_tmp13_i1  ; [#uses=1 type=i1]
  %newSel8 = select i1 %sel_tmp6_i1, i30 %tmp_6_i7, i30 %tmp_3_i4_cast ; [#uses=1 type=i30]
  %or_cond6 = or i1 %sel_tmp6_i1, %sel_tmp1_i1    ; [#uses=1 type=i1]
  %newSel9 = select i1 %or_cond4, i32 %newSel61_cast, i32 %newSel7 ; [#uses=1 type=i32]
  %or_cond7 = or i1 %or_cond4, %or_cond5          ; [#uses=1 type=i1]
  %newSel10 = select i1 %or_cond6, i30 %newSel8, i30 0 ; [#uses=1 type=i30]
  %newSel69_cast = zext i30 %newSel10 to i32      ; [#uses=1 type=i32]
  %newSel11 = select i1 %or_cond7, i32 %newSel9, i32 %newSel69_cast ; [#uses=1 type=i32]
  store i32 %newSel11, i32* %result_addr_1, align 4, !dbg !185 ; [debug line = 71:16]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_5) nounwind, !dbg !197 ; [#uses=0 type=i32] [debug line = 72:2]
  %k = add i5 %k_5, 1, !dbg !198                  ; [#uses=1 type=i5] [debug line = 58:35]
  call void @llvm.dbg.value(metadata !{i5 %k}, i64 0, metadata !199), !dbg !198 ; [debug line = 58:35] [debug variable = k]
  br label %.preheader10, !dbg !198               ; [debug line = 58:35]

.preheader:                                       ; preds = %15, %.preheader.preheader
  %i_4 = phi i5 [ %i_6, %15 ], [ 1, %.preheader.preheader ] ; [#uses=3 type=i5]
  %exitcond = icmp eq i5 %i_4, -3, !dbg !142      ; [#uses=1 type=i1] [debug line = 76:19]
  br i1 %exitcond, label %16, label %15, !dbg !142 ; [debug line = 76:19]

; <label>:15                                      ; preds = %.preheader
  %i_4_cast = zext i5 %i_4 to i32, !dbg !142      ; [#uses=1 type=i32] [debug line = 76:19]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind, !dbg !200 ; [debug line = 76:41]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13) nounwind, !dbg !200 ; [#uses=1 type=i32] [debug line = 76:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !202 ; [debug line = 77:1]
  %result_addr = getelementptr inbounds [28 x i32]* %result, i32 0, i32 %i_4_cast, !dbg !203 ; [#uses=1 type=i32*] [debug line = 77:3]
  %result_load = load i32* %result_addr, align 4, !dbg !203 ; [#uses=1 type=i32] [debug line = 77:3]
  call void @_ssdm_op_Write.axis.i32P(i32* %output, i32 %result_load) nounwind, !dbg !203 ; [debug line = 77:3]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp_6) nounwind, !dbg !204 ; [#uses=0 type=i32] [debug line = 78:2]
  %i_6 = add i5 %i_4, 1, !dbg !205                ; [#uses=1 type=i5] [debug line = 76:35]
  call void @llvm.dbg.value(metadata !{i5 %i_6}, i64 0, metadata !110), !dbg !205 ; [debug line = 76:35] [debug variable = i]
  br label %.preheader, !dbg !205                 ; [debug line = 76:35]

; <label>:16                                      ; preds = %.preheader
  ret void, !dbg !206                             ; [debug line = 80:1]
}

; [#uses=4]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=3]
declare i25 @llvm.part.select.i25(i25, i32, i32) nounwind readnone

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=30]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.axis.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=7]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=8]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=29]
define weak i32 @_ssdm_op_Read.axis.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=2]
define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_24 = trunc i32 %empty to i24             ; [#uses=1 type=i24]
  ret i24 %empty_24
}

; [#uses=2]
define weak i23 @_ssdm_op_PartSelect.i23.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2) ; [#uses=1 type=i25]
  %empty_25 = trunc i25 %empty to i23             ; [#uses=1 type=i23]
  ret i23 %empty_25
}

; [#uses=2]
define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_26 = trunc i32 %empty to i22             ; [#uses=1 type=i22]
  ret i22 %empty_26
}

; [#uses=2]
define weak i22 @_ssdm_op_PartSelect.i22.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2) ; [#uses=1 type=i25]
  %empty_27 = trunc i25 %empty to i22             ; [#uses=1 type=i22]
  ret i22 %empty_27
}

; [#uses=2]
define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_28 = trunc i32 %empty to i21             ; [#uses=1 type=i21]
  ret i21 %empty_28
}

; [#uses=2]
define weak i20 @_ssdm_op_PartSelect.i20.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2) ; [#uses=1 type=i25]
  %empty_29 = trunc i25 %empty to i20             ; [#uses=1 type=i20]
  ret i20 %empty_29
}

; [#uses=2]
define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_30 = trunc i32 %empty to i19             ; [#uses=1 type=i19]
  ret i19 %empty_30
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_31 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_32 = icmp ne i32 %empty_31, 0            ; [#uses=1 type=i1]
  ret i1 %empty_32
}

; [#uses=0]
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
!23 = metadata !{i32 786689, metadata !24, metadata !"input", metadata !25, i32 16777219, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 786478, i32 0, metadata !25, metadata !"mlp", metadata !"mlp", metadata !"_Z3mlpPiS_", metadata !25, i32 3, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @mlp, null, null, metadata !30, i32 3} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786473, metadata !"./mlp.cpp", metadata !"C:\5CUsers\5CG552\5CDesktop\5C4218_proj\5Chls_to_be_submitted", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !28}
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 3, i32 14, metadata !24, null}
!33 = metadata !{i32 786689, metadata !24, metadata !"output", metadata !25, i32 33554435, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 3, i32 27, metadata !24, null}
!35 = metadata !{i32 4, i32 1, metadata !36, null}
!36 = metadata !{i32 786443, metadata !24, i32 3, i32 37, metadata !25, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 5, i32 1, metadata !36, null}
!38 = metadata !{i32 6, i32 1, metadata !36, null}
!39 = metadata !{i32 786688, metadata !36, metadata !"test_data[1]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 928, i64 32, i32 0, i32 0, metadata !29, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42, metadata !43}
!42 = metadata !{i32 786465, i64 0, i64 28}       ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!44 = metadata !{i32 8, i32 6, metadata !36, null}
!45 = metadata !{i32 786688, metadata !36, metadata !"test_data[2]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 786688, metadata !36, metadata !"test_data[3]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 786688, metadata !36, metadata !"test_data[4]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 786688, metadata !36, metadata !"test_data[5]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786688, metadata !36, metadata !"test_data[6]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 786688, metadata !36, metadata !"test_data[7]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786688, metadata !36, metadata !"test_data[8]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 786688, metadata !36, metadata !"test_data[9]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 786688, metadata !36, metadata !"test_data[10]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786688, metadata !36, metadata !"test_data[11]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786688, metadata !36, metadata !"test_data[12]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 786688, metadata !36, metadata !"test_data[13]", null, i32 8, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786688, metadata !36, metadata !"weightIH[0]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !29, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!59 = metadata !{metadata !43, metadata !60}
!60 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!61 = metadata !{i32 10, i32 6, metadata !36, null}
!62 = metadata !{i32 786688, metadata !36, metadata !"weightIH[1]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 786688, metadata !36, metadata !"weightIH[2]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786688, metadata !36, metadata !"weightIH[3]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 786688, metadata !36, metadata !"weightIH[4]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786688, metadata !36, metadata !"weightIH[5]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 786688, metadata !36, metadata !"weightIH[6]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 786688, metadata !36, metadata !"weightIH[7]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786688, metadata !36, metadata !"weightIH[8]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 786688, metadata !36, metadata !"weightIH[9]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 786688, metadata !36, metadata !"weightIH[10]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786688, metadata !36, metadata !"weightIH[11]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786688, metadata !36, metadata !"weightIH[12]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786688, metadata !36, metadata !"weightIH[13]", null, i32 10, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786688, metadata !36, metadata !"weightHO", metadata !25, i32 11, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 448, i64 32, i32 0, i32 0, metadata !29, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{metadata !43}
!78 = metadata !{i32 11, i32 6, metadata !36, null}
!79 = metadata !{i32 786688, metadata !36, metadata !"SumH", metadata !25, i32 13, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !29, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ]
!81 = metadata !{metadata !60}
!82 = metadata !{i32 13, i32 6, metadata !36, null}
!83 = metadata !{i32 786688, metadata !36, metadata !"result", metadata !25, i32 15, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !29, metadata !85, i32 0, i32 0} ; [ DW_TAG_array_type ]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786465, i64 0, i64 27}       ; [ DW_TAG_subrange_type ]
!87 = metadata !{i32 15, i32 6, metadata !36, null}
!88 = metadata !{i32 20, i32 19, metadata !89, null}
!89 = metadata !{i32 786443, metadata !36, i32 20, i32 14, metadata !25, i32 1} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 38, i32 19, metadata !91, null}
!91 = metadata !{i32 786443, metadata !36, i32 38, i32 14, metadata !25, i32 3} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 20, i32 41, metadata !93, null}
!93 = metadata !{i32 786443, metadata !89, i32 20, i32 40, metadata !25, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 21, i32 1, metadata !93, null}
!95 = metadata !{i32 21, i32 3, metadata !93, null}
!96 = metadata !{i32 22, i32 3, metadata !93, null}
!97 = metadata !{i32 23, i32 3, metadata !93, null}
!98 = metadata !{i32 24, i32 3, metadata !93, null}
!99 = metadata !{i32 25, i32 3, metadata !93, null}
!100 = metadata !{i32 26, i32 3, metadata !93, null}
!101 = metadata !{i32 27, i32 3, metadata !93, null}
!102 = metadata !{i32 28, i32 3, metadata !93, null}
!103 = metadata !{i32 29, i32 3, metadata !93, null}
!104 = metadata !{i32 30, i32 3, metadata !93, null}
!105 = metadata !{i32 31, i32 3, metadata !93, null}
!106 = metadata !{i32 32, i32 3, metadata !93, null}
!107 = metadata !{i32 33, i32 3, metadata !93, null}
!108 = metadata !{i32 35, i32 2, metadata !93, null}
!109 = metadata !{i32 20, i32 35, metadata !89, null}
!110 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !25, i32 17, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 43, i32 19, metadata !112, null}
!112 = metadata !{i32 786443, metadata !36, i32 43, i32 14, metadata !25, i32 5} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 38, i32 41, metadata !114, null}
!114 = metadata !{i32 786443, metadata !91, i32 38, i32 40, metadata !25, i32 4} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 39, i32 1, metadata !114, null}
!116 = metadata !{i32 39, i32 3, metadata !114, null}
!117 = metadata !{i32 41, i32 2, metadata !114, null}
!118 = metadata !{i32 38, i32 35, metadata !91, null}
!119 = metadata !{i32 786688, metadata !36, metadata !"j", metadata !25, i32 17, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 43, i32 41, metadata !121, null}
!121 = metadata !{i32 786443, metadata !112, i32 43, i32 40, metadata !25, i32 6} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 44, i32 1, metadata !121, null}
!123 = metadata !{i32 45, i32 4, metadata !124, null}
!124 = metadata !{i32 786443, metadata !125, i32 44, i32 41, metadata !25, i32 8} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !121, i32 44, i32 15, metadata !25, i32 7} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 48, i32 2, metadata !121, null}
!127 = metadata !{i32 43, i32 35, metadata !112, null}
!128 = metadata !{i32 50, i32 2, metadata !36, null}
!129 = metadata !{i32 52, i32 19, metadata !130, null}
!130 = metadata !{i32 786443, metadata !36, i32 52, i32 14, metadata !25, i32 9} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 67, i32 4, metadata !132, null}
!132 = metadata !{i32 786443, metadata !133, i32 58, i32 40, metadata !25, i32 12} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786443, metadata !36, i32 58, i32 14, metadata !25, i32 11} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 58, i32 19, metadata !133, null}
!135 = metadata !{i32 51, i32 2, metadata !36, null}
!136 = metadata !{i32 52, i32 41, metadata !137, null}
!137 = metadata !{i32 786443, metadata !130, i32 52, i32 40, metadata !25, i32 10} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 53, i32 1, metadata !137, null}
!139 = metadata !{i32 53, i32 3, metadata !137, null}
!140 = metadata !{i32 55, i32 2, metadata !137, null}
!141 = metadata !{i32 52, i32 35, metadata !130, null}
!142 = metadata !{i32 76, i32 19, metadata !143, null}
!143 = metadata !{i32 786443, metadata !36, i32 76, i32 14, metadata !25, i32 19} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 58, i32 41, metadata !132, null}
!145 = metadata !{i32 62, i32 5, metadata !146, null}
!146 = metadata !{i32 786443, metadata !147, i32 61, i32 42, metadata !25, i32 16} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786443, metadata !148, i32 61, i32 16, metadata !25, i32 15} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !149, i32 59, i32 41, metadata !25, i32 14} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !132, i32 59, i32 15, metadata !25, i32 13} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 59, i32 20, metadata !149, null}
!151 = metadata !{i32 59, i32 42, metadata !148, null}
!152 = metadata !{i32 60, i32 1, metadata !148, null}
!153 = metadata !{i32 60, i32 4, metadata !148, null}
!154 = metadata !{i32 64, i32 14, metadata !148, null}
!155 = metadata !{i32 83, i32 2, metadata !156, metadata !154}
!156 = metadata !{i32 786443, metadata !157, i32 82, i32 23, metadata !25, i32 21} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 786478, i32 0, metadata !25, metadata !"sigmoid", metadata !"sigmoid", metadata !"_Z7sigmoidi", metadata !25, i32 82, metadata !158, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 82} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{metadata !29, metadata !29}
!160 = metadata !{i32 86, i32 7, metadata !156, metadata !154}
!161 = metadata !{i32 87, i32 3, metadata !162, metadata !154}
!162 = metadata !{i32 786443, metadata !156, i32 86, i32 23, metadata !25, i32 23} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 89, i32 7, metadata !156, metadata !154}
!164 = metadata !{i32 90, i32 3, metadata !165, metadata !154}
!165 = metadata !{i32 786443, metadata !156, i32 89, i32 23, metadata !25, i32 24} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 92, i32 7, metadata !156, metadata !154}
!167 = metadata !{i32 93, i32 3, metadata !168, metadata !154}
!168 = metadata !{i32 786443, metadata !156, i32 92, i32 24, metadata !25, i32 25} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 95, i32 7, metadata !156, metadata !154}
!170 = metadata !{i32 96, i32 3, metadata !171, metadata !154}
!171 = metadata !{i32 786443, metadata !156, i32 95, i32 24, metadata !25, i32 26} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 98, i32 7, metadata !156, metadata !154}
!173 = metadata !{i32 99, i32 3, metadata !174, metadata !154}
!174 = metadata !{i32 786443, metadata !156, i32 98, i32 25, metadata !25, i32 27} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 65, i32 3, metadata !148, null}
!176 = metadata !{i32 59, i32 36, metadata !149, null}
!177 = metadata !{i32 68, i32 21, metadata !178, null}
!178 = metadata !{i32 786443, metadata !132, i32 68, i32 16, metadata !25, i32 17} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 68, i32 43, metadata !180, null}
!180 = metadata !{i32 786443, metadata !178, i32 68, i32 42, metadata !25, i32 18} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 69, i32 1, metadata !180, null}
!182 = metadata !{i32 69, i32 5, metadata !180, null}
!183 = metadata !{i32 70, i32 4, metadata !180, null}
!184 = metadata !{i32 68, i32 37, metadata !178, null}
!185 = metadata !{i32 71, i32 16, metadata !132, null}
!186 = metadata !{i32 83, i32 2, metadata !156, metadata !185}
!187 = metadata !{i32 86, i32 7, metadata !156, metadata !185}
!188 = metadata !{i32 87, i32 3, metadata !162, metadata !185}
!189 = metadata !{i32 89, i32 7, metadata !156, metadata !185}
!190 = metadata !{i32 90, i32 3, metadata !165, metadata !185}
!191 = metadata !{i32 92, i32 7, metadata !156, metadata !185}
!192 = metadata !{i32 93, i32 3, metadata !168, metadata !185}
!193 = metadata !{i32 95, i32 7, metadata !156, metadata !185}
!194 = metadata !{i32 96, i32 3, metadata !171, metadata !185}
!195 = metadata !{i32 98, i32 7, metadata !156, metadata !185}
!196 = metadata !{i32 99, i32 3, metadata !174, metadata !185}
!197 = metadata !{i32 72, i32 2, metadata !132, null}
!198 = metadata !{i32 58, i32 35, metadata !133, null}
!199 = metadata !{i32 786688, metadata !36, metadata !"k", metadata !25, i32 17, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 76, i32 41, metadata !201, null}
!201 = metadata !{i32 786443, metadata !143, i32 76, i32 40, metadata !25, i32 20} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 77, i32 1, metadata !201, null}
!203 = metadata !{i32 77, i32 3, metadata !201, null}
!204 = metadata !{i32 78, i32 2, metadata !201, null}
!205 = metadata !{i32 76, i32 35, metadata !143, null}
!206 = metadata !{i32 80, i32 1, metadata !36, null}
