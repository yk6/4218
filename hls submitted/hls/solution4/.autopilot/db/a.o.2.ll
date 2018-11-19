; ModuleID = 'C:/Users/G552/Desktop/4218_proj/hls_to_be_submitted/hls/solution4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@mlp.str = internal unnamed_addr constant [4 x i8] c"mlp\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"mlp_label18\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"mlp_label16\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"mlp_label14\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"mlp_label13\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"mlp_label12\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=24 type=[1 x i8]*]
@.str13 = private unnamed_addr constant [12 x i8] c"mlp_label22\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"mlp_label21\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"mlp_label19\00", align 1 ; [#uses=3 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=0]
define void @mlp(i32* %input, i32* %output) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @mlp.str) nounwind
  %"test_data[1]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[2]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[3]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[4]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[5]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[6]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[7]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[8]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[9]" = alloca [29 x i32], align 4    ; [#uses=2 type=[29 x i32]*]
  %"test_data[10]" = alloca [29 x i32], align 4   ; [#uses=2 type=[29 x i32]*]
  %"test_data[11]" = alloca [29 x i32], align 4   ; [#uses=2 type=[29 x i32]*]
  %"test_data[12]" = alloca [29 x i32], align 4   ; [#uses=2 type=[29 x i32]*]
  %"test_data[13]" = alloca [29 x i32], align 4   ; [#uses=2 type=[29 x i32]*]
  %"weightIH[0]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[1]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[2]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[3]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[4]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[5]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[6]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[7]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[8]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[9]" = alloca [11 x i32], align 4     ; [#uses=2 type=[11 x i32]*]
  %"weightIH[10]" = alloca [11 x i32], align 4    ; [#uses=2 type=[11 x i32]*]
  %"weightIH[11]" = alloca [11 x i32], align 4    ; [#uses=2 type=[11 x i32]*]
  %"weightIH[12]" = alloca [11 x i32], align 4    ; [#uses=2 type=[11 x i32]*]
  %"weightIH[13]" = alloca [11 x i32], align 4    ; [#uses=2 type=[11 x i32]*]
  %weightHO = alloca [14 x i32], align 4          ; [#uses=3 type=[14 x i32]*]
  %SumH = alloca [11 x i32], align 4              ; [#uses=2 type=[11 x i32]*]
  %result = alloca [28 x i32], align 4            ; [#uses=2 type=[28 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %input}, i64 0, metadata !39), !dbg !40 ; [debug line = 3:14] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i32* %output}, i64 0, metadata !41), !dbg !42 ; [debug line = 3:27] [debug variable = output]
  call void (...)* @_ssdm_op_SpecInterface(i32* %input, [5 x i8]* @.str, i32 1, i32 1, [5 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !43 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %output, [5 x i8]* @.str, i32 1, i32 1, [5 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !45 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2, [1 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !46 ; [debug line = 6:1]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[1]"}, metadata !47), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[1]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[2]"}, metadata !53), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[2]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[3]"}, metadata !54), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[3]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[4]"}, metadata !55), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[4]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[5]"}, metadata !56), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[5]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[6]"}, metadata !57), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[6]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[7]"}, metadata !58), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[7]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[8]"}, metadata !59), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[8]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[9]"}, metadata !60), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[9]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[10]"}, metadata !61), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[10]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[11]"}, metadata !62), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[11]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[12]"}, metadata !63), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[12]]
  call void @llvm.dbg.declare(metadata !{[29 x i32]* %"test_data[13]"}, metadata !64), !dbg !52 ; [debug line = 8:6] [debug variable = test_data[13]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[0]"}, metadata !65), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[0]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[1]"}, metadata !70), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[1]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[2]"}, metadata !71), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[2]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[3]"}, metadata !72), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[3]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[4]"}, metadata !73), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[4]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[5]"}, metadata !74), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[5]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[6]"}, metadata !75), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[6]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[7]"}, metadata !76), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[7]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[8]"}, metadata !77), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[8]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[9]"}, metadata !78), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[9]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[10]"}, metadata !79), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[10]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[11]"}, metadata !80), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[11]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[12]"}, metadata !81), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[12]]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %"weightIH[13]"}, metadata !82), !dbg !69 ; [debug line = 10:6] [debug variable = weightIH[13]]
  call void @llvm.dbg.declare(metadata !{[14 x i32]* %weightHO}, metadata !83), !dbg !86 ; [debug line = 11:6] [debug variable = weightHO]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %SumH}, metadata !87), !dbg !90 ; [debug line = 13:6] [debug variable = SumH]
  call void @llvm.dbg.declare(metadata !{[28 x i32]* %result}, metadata !91), !dbg !95 ; [debug line = 15:6] [debug variable = result]
  br label %1, !dbg !96                           ; [debug line = 20:19]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 1, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i5]
  %k = phi i9 [ 0, %0 ], [ %tmp.12, %3 ]          ; [#uses=14 type=i9]
  %i.cast = zext i5 %i to i32, !dbg !96           ; [#uses=13 type=i32] [debug line = 20:19]
  %k.cast = zext i9 %k to i32, !dbg !96           ; [#uses=1 type=i32] [debug line = 20:19]
  %exitcond9 = icmp eq i5 %i, -3, !dbg !96        ; [#uses=1 type=i1] [debug line = 20:19]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond9, label %.preheader12.preheader, label %3, !dbg !96 ; [debug line = 20:19]

.preheader12.preheader:                           ; preds = %1
  br label %.preheader12, !dbg !98                ; [debug line = 38:19]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str4) nounwind, !dbg !100 ; [debug line = 20:41]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str4) nounwind, !dbg !100 ; [#uses=1 type=i32] [debug line = 20:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !102 ; [debug line = 21:1]
  %input.addr = getelementptr inbounds i32* %input, i32 %k.cast, !dbg !103 ; [#uses=1 type=i32*] [debug line = 21:3]
  %input.load = load i32* %input.addr, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 21:3]
  %"test_data[1].addr" = getelementptr [29 x i32]* %"test_data[1]", i32 0, i32 %i.cast, !dbg !103 ; [#uses=1 type=i32*] [debug line = 21:3]
  store i32 %input.load, i32* %"test_data[1].addr", align 4, !dbg !103 ; [debug line = 21:3]
  %tmp = add i9 %k, 1, !dbg !104                  ; [#uses=1 type=i9] [debug line = 22:3]
  %tmp.cast = zext i9 %tmp to i32, !dbg !104      ; [#uses=1 type=i32] [debug line = 22:3]
  %input.addr.1 = getelementptr inbounds i32* %input, i32 %tmp.cast, !dbg !104 ; [#uses=1 type=i32*] [debug line = 22:3]
  %input.load.1 = load i32* %input.addr.1, align 4, !dbg !104 ; [#uses=1 type=i32] [debug line = 22:3]
  %"test_data[2].addr" = getelementptr [29 x i32]* %"test_data[2]", i32 0, i32 %i.cast, !dbg !104 ; [#uses=1 type=i32*] [debug line = 22:3]
  store i32 %input.load.1, i32* %"test_data[2].addr", align 4, !dbg !104 ; [debug line = 22:3]
  %tmp. = add i9 %k, 2, !dbg !105                 ; [#uses=1 type=i9] [debug line = 23:3]
  %tmp..cast = zext i9 %tmp. to i32, !dbg !105    ; [#uses=1 type=i32] [debug line = 23:3]
  %input.addr.2 = getelementptr inbounds i32* %input, i32 %tmp..cast, !dbg !105 ; [#uses=1 type=i32*] [debug line = 23:3]
  %input.load.2 = load i32* %input.addr.2, align 4, !dbg !105 ; [#uses=1 type=i32] [debug line = 23:3]
  %"test_data[3].addr" = getelementptr [29 x i32]* %"test_data[3]", i32 0, i32 %i.cast, !dbg !105 ; [#uses=1 type=i32*] [debug line = 23:3]
  store i32 %input.load.2, i32* %"test_data[3].addr", align 4, !dbg !105 ; [debug line = 23:3]
  %tmp.2 = add i9 %k, 3, !dbg !106                ; [#uses=1 type=i9] [debug line = 24:3]
  %tmp.15.cast = zext i9 %tmp.2 to i32, !dbg !106 ; [#uses=1 type=i32] [debug line = 24:3]
  %input.addr.3 = getelementptr inbounds i32* %input, i32 %tmp.15.cast, !dbg !106 ; [#uses=1 type=i32*] [debug line = 24:3]
  %input.load.3 = load i32* %input.addr.3, align 4, !dbg !106 ; [#uses=1 type=i32] [debug line = 24:3]
  %"test_data[4].addr" = getelementptr [29 x i32]* %"test_data[4]", i32 0, i32 %i.cast, !dbg !106 ; [#uses=1 type=i32*] [debug line = 24:3]
  store i32 %input.load.3, i32* %"test_data[4].addr", align 4, !dbg !106 ; [debug line = 24:3]
  %tmp.3 = add i9 %k, 4, !dbg !107                ; [#uses=1 type=i9] [debug line = 25:3]
  %tmp.16.cast = zext i9 %tmp.3 to i32, !dbg !107 ; [#uses=1 type=i32] [debug line = 25:3]
  %input.addr.4 = getelementptr inbounds i32* %input, i32 %tmp.16.cast, !dbg !107 ; [#uses=1 type=i32*] [debug line = 25:3]
  %input.load.4 = load i32* %input.addr.4, align 4, !dbg !107 ; [#uses=1 type=i32] [debug line = 25:3]
  %"test_data[5].addr" = getelementptr [29 x i32]* %"test_data[5]", i32 0, i32 %i.cast, !dbg !107 ; [#uses=1 type=i32*] [debug line = 25:3]
  store i32 %input.load.4, i32* %"test_data[5].addr", align 4, !dbg !107 ; [debug line = 25:3]
  %tmp.4 = add i9 %k, 5, !dbg !108                ; [#uses=1 type=i9] [debug line = 26:3]
  %tmp.17.cast = zext i9 %tmp.4 to i32, !dbg !108 ; [#uses=1 type=i32] [debug line = 26:3]
  %input.addr.5 = getelementptr inbounds i32* %input, i32 %tmp.17.cast, !dbg !108 ; [#uses=1 type=i32*] [debug line = 26:3]
  %input.load.5 = load i32* %input.addr.5, align 4, !dbg !108 ; [#uses=1 type=i32] [debug line = 26:3]
  %"test_data[6].addr" = getelementptr [29 x i32]* %"test_data[6]", i32 0, i32 %i.cast, !dbg !108 ; [#uses=1 type=i32*] [debug line = 26:3]
  store i32 %input.load.5, i32* %"test_data[6].addr", align 4, !dbg !108 ; [debug line = 26:3]
  %tmp.5 = add i9 %k, 6, !dbg !109                ; [#uses=1 type=i9] [debug line = 27:3]
  %tmp.18.cast = zext i9 %tmp.5 to i32, !dbg !109 ; [#uses=1 type=i32] [debug line = 27:3]
  %input.addr.6 = getelementptr inbounds i32* %input, i32 %tmp.18.cast, !dbg !109 ; [#uses=1 type=i32*] [debug line = 27:3]
  %input.load.6 = load i32* %input.addr.6, align 4, !dbg !109 ; [#uses=1 type=i32] [debug line = 27:3]
  %"test_data[7].addr" = getelementptr [29 x i32]* %"test_data[7]", i32 0, i32 %i.cast, !dbg !109 ; [#uses=1 type=i32*] [debug line = 27:3]
  store i32 %input.load.6, i32* %"test_data[7].addr", align 4, !dbg !109 ; [debug line = 27:3]
  %tmp.6 = add i9 %k, 7, !dbg !110                ; [#uses=1 type=i9] [debug line = 28:3]
  %tmp.19.cast = zext i9 %tmp.6 to i32, !dbg !110 ; [#uses=1 type=i32] [debug line = 28:3]
  %input.addr.7 = getelementptr inbounds i32* %input, i32 %tmp.19.cast, !dbg !110 ; [#uses=1 type=i32*] [debug line = 28:3]
  %input.load.7 = load i32* %input.addr.7, align 4, !dbg !110 ; [#uses=1 type=i32] [debug line = 28:3]
  %"test_data[8].addr" = getelementptr [29 x i32]* %"test_data[8]", i32 0, i32 %i.cast, !dbg !110 ; [#uses=1 type=i32*] [debug line = 28:3]
  store i32 %input.load.7, i32* %"test_data[8].addr", align 4, !dbg !110 ; [debug line = 28:3]
  %tmp.7 = add i9 %k, 8, !dbg !111                ; [#uses=1 type=i9] [debug line = 29:3]
  %tmp.20.cast = zext i9 %tmp.7 to i32, !dbg !111 ; [#uses=1 type=i32] [debug line = 29:3]
  %input.addr.8 = getelementptr inbounds i32* %input, i32 %tmp.20.cast, !dbg !111 ; [#uses=1 type=i32*] [debug line = 29:3]
  %input.load.8 = load i32* %input.addr.8, align 4, !dbg !111 ; [#uses=1 type=i32] [debug line = 29:3]
  %"test_data[9].addr" = getelementptr [29 x i32]* %"test_data[9]", i32 0, i32 %i.cast, !dbg !111 ; [#uses=1 type=i32*] [debug line = 29:3]
  store i32 %input.load.8, i32* %"test_data[9].addr", align 4, !dbg !111 ; [debug line = 29:3]
  %tmp.8 = add i9 %k, 9, !dbg !112                ; [#uses=1 type=i9] [debug line = 30:3]
  %tmp.21.cast = zext i9 %tmp.8 to i32, !dbg !112 ; [#uses=1 type=i32] [debug line = 30:3]
  %input.addr.9 = getelementptr inbounds i32* %input, i32 %tmp.21.cast, !dbg !112 ; [#uses=1 type=i32*] [debug line = 30:3]
  %input.load.9 = load i32* %input.addr.9, align 4, !dbg !112 ; [#uses=1 type=i32] [debug line = 30:3]
  %"test_data[10].addr" = getelementptr [29 x i32]* %"test_data[10]", i32 0, i32 %i.cast, !dbg !112 ; [#uses=1 type=i32*] [debug line = 30:3]
  store i32 %input.load.9, i32* %"test_data[10].addr", align 4, !dbg !112 ; [debug line = 30:3]
  %tmp.9 = add i9 %k, 10, !dbg !113               ; [#uses=1 type=i9] [debug line = 31:3]
  %tmp.22.cast = zext i9 %tmp.9 to i32, !dbg !113 ; [#uses=1 type=i32] [debug line = 31:3]
  %input.addr.10 = getelementptr inbounds i32* %input, i32 %tmp.22.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 31:3]
  %input.load.10 = load i32* %input.addr.10, align 4, !dbg !113 ; [#uses=1 type=i32] [debug line = 31:3]
  %"test_data[11].addr" = getelementptr [29 x i32]* %"test_data[11]", i32 0, i32 %i.cast, !dbg !113 ; [#uses=1 type=i32*] [debug line = 31:3]
  store i32 %input.load.10, i32* %"test_data[11].addr", align 4, !dbg !113 ; [debug line = 31:3]
  %tmp.10 = add i9 %k, 11, !dbg !114              ; [#uses=1 type=i9] [debug line = 32:3]
  %tmp.23.cast = zext i9 %tmp.10 to i32, !dbg !114 ; [#uses=1 type=i32] [debug line = 32:3]
  %input.addr.11 = getelementptr inbounds i32* %input, i32 %tmp.23.cast, !dbg !114 ; [#uses=1 type=i32*] [debug line = 32:3]
  %input.load.11 = load i32* %input.addr.11, align 4, !dbg !114 ; [#uses=1 type=i32] [debug line = 32:3]
  %"test_data[12].addr" = getelementptr [29 x i32]* %"test_data[12]", i32 0, i32 %i.cast, !dbg !114 ; [#uses=1 type=i32*] [debug line = 32:3]
  store i32 %input.load.11, i32* %"test_data[12].addr", align 4, !dbg !114 ; [debug line = 32:3]
  %tmp.11 = add i9 %k, 12, !dbg !115              ; [#uses=1 type=i9] [debug line = 33:3]
  %tmp.24.cast = zext i9 %tmp.11 to i32, !dbg !115 ; [#uses=1 type=i32] [debug line = 33:3]
  %input.addr.12 = getelementptr inbounds i32* %input, i32 %tmp.24.cast, !dbg !115 ; [#uses=1 type=i32*] [debug line = 33:3]
  %input.load.12 = load i32* %input.addr.12, align 4, !dbg !115 ; [#uses=1 type=i32] [debug line = 33:3]
  %"test_data[13].addr" = getelementptr [29 x i32]* %"test_data[13]", i32 0, i32 %i.cast, !dbg !115 ; [#uses=1 type=i32*] [debug line = 33:3]
  store i32 %input.load.12, i32* %"test_data[13].addr", align 4, !dbg !115 ; [debug line = 33:3]
  %tmp.12 = add i9 %k, 13, !dbg !116              ; [#uses=1 type=i9] [debug line = 34:3]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str4, i32 %tmp.1) nounwind, !dbg !117 ; [#uses=0 type=i32] [debug line = 35:2]
  %i.1 = add i5 %i, 1, !dbg !118                  ; [#uses=1 type=i5] [debug line = 20:35]
  call void @llvm.dbg.value(metadata !{i5 %i.1}, i64 0, metadata !119), !dbg !118 ; [debug line = 20:35] [debug variable = i]
  br label %1, !dbg !118                          ; [debug line = 20:35]

.preheader12:                                     ; preds = %6, %.preheader12.preheader
  %j = phi i4 [ %j.2, %6 ], [ 1, %.preheader12.preheader ] ; [#uses=3 type=i4]
  %k.1 = phi i9 [ %tmp.15, %6 ], [ -148, %.preheader12.preheader ] ; [#uses=2 type=i9]
  %j.cast = zext i4 %j to i32, !dbg !98           ; [#uses=1 type=i32] [debug line = 38:19]
  %k.1.cast = zext i9 %k.1 to i32, !dbg !98       ; [#uses=1 type=i32] [debug line = 38:19]
  %exitcond8 = icmp eq i4 %j, -5, !dbg !98        ; [#uses=1 type=i1] [debug line = 38:19]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond8, label %.preheader11.preheader, label %6, !dbg !98 ; [debug line = 38:19]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !120               ; [debug line = 43:19]

; <label>:6                                       ; preds = %.preheader12
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str5) nounwind, !dbg !122 ; [debug line = 38:41]
  %tmp.13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str5) nounwind, !dbg !122 ; [#uses=1 type=i32] [debug line = 38:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !124 ; [debug line = 39:1]
  %input.addr.13 = getelementptr inbounds i32* %input, i32 %k.1.cast, !dbg !125 ; [#uses=1 type=i32*] [debug line = 39:3]
  %input.load.13 = load i32* %input.addr.13, align 4, !dbg !125 ; [#uses=1 type=i32] [debug line = 39:3]
  %tmp.14 = shl i32 %input.load.13, 8, !dbg !125  ; [#uses=1 type=i32] [debug line = 39:3]
  %"weightIH[0].addr" = getelementptr [11 x i32]* %"weightIH[0]", i32 0, i32 %j.cast, !dbg !125 ; [#uses=1 type=i32*] [debug line = 39:3]
  store i32 %tmp.14, i32* %"weightIH[0].addr", align 4, !dbg !125 ; [debug line = 39:3]
  %tmp.15 = add i9 %k.1, 1, !dbg !126             ; [#uses=1 type=i9] [debug line = 40:3]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str5, i32 %tmp.13) nounwind, !dbg !127 ; [#uses=0 type=i32] [debug line = 41:2]
  %j.2 = add i4 %j, 1, !dbg !128                  ; [#uses=1 type=i4] [debug line = 38:35]
  call void @llvm.dbg.value(metadata !{i4 %j.2}, i64 0, metadata !129), !dbg !128 ; [debug line = 38:35] [debug variable = j]
  br label %.preheader12, !dbg !128               ; [debug line = 38:35]

.preheader11:                                     ; preds = %9, %.preheader11.preheader
  %j.1 = phi i4 [ %j.4, %9 ], [ 1, %.preheader11.preheader ] ; [#uses=3 type=i4]
  %k.2 = phi i9 [ %k.3, %9 ], [ -138, %.preheader11.preheader ] ; [#uses=14 type=i9]
  %j.1.cast = zext i4 %j.1 to i32, !dbg !120      ; [#uses=13 type=i32] [debug line = 43:19]
  %k.2.cast = zext i9 %k.2 to i32, !dbg !120      ; [#uses=1 type=i32] [debug line = 43:19]
  %exitcond7 = icmp eq i4 %j.1, -5, !dbg !120     ; [#uses=1 type=i1] [debug line = 43:19]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond7, label %11, label %9, !dbg !120 ; [debug line = 43:19]

; <label>:9                                       ; preds = %.preheader11
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str6) nounwind, !dbg !130 ; [debug line = 43:41]
  %tmp.17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str6) nounwind, !dbg !130 ; [#uses=1 type=i32] [debug line = 43:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !132 ; [debug line = 44:1]
  %k.3 = add i9 %k.2, 13, !dbg !116               ; [#uses=1 type=i9] [debug line = 34:3]
  call void @llvm.dbg.value(metadata !{i9 %k.3}, i64 0, metadata !133), !dbg !116 ; [debug line = 34:3] [debug variable = k]
  %input.addr.16 = getelementptr inbounds i32* %input, i32 %k.2.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.16 = load i32* %input.addr.16, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[1].addr" = getelementptr [11 x i32]* %"weightIH[1]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.16, i32* %"weightIH[1].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7 = add i9 %k.2, 1, !dbg !137                ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.cast = zext i9 %k.7 to i32, !dbg !137      ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.17 = getelementptr inbounds i32* %input, i32 %k.7.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.17 = load i32* %input.addr.17, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[2].addr" = getelementptr [11 x i32]* %"weightIH[2]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.17, i32* %"weightIH[2].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.1 = add i9 %k.2, 2, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.1.cast = zext i9 %k.7.1 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.18 = getelementptr inbounds i32* %input, i32 %k.7.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.18 = load i32* %input.addr.18, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[3].addr" = getelementptr [11 x i32]* %"weightIH[3]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.18, i32* %"weightIH[3].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.2 = add i9 %k.2, 3, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.2.cast = zext i9 %k.7.2 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.19 = getelementptr inbounds i32* %input, i32 %k.7.2.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.19 = load i32* %input.addr.19, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[4].addr" = getelementptr [11 x i32]* %"weightIH[4]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.19, i32* %"weightIH[4].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.3 = add i9 %k.2, 4, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.3.cast = zext i9 %k.7.3 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.20 = getelementptr inbounds i32* %input, i32 %k.7.3.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.20 = load i32* %input.addr.20, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[5].addr" = getelementptr [11 x i32]* %"weightIH[5]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.20, i32* %"weightIH[5].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.4 = add i9 %k.2, 5, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.4.cast = zext i9 %k.7.4 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.21 = getelementptr inbounds i32* %input, i32 %k.7.4.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.21 = load i32* %input.addr.21, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[6].addr" = getelementptr [11 x i32]* %"weightIH[6]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.21, i32* %"weightIH[6].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.5 = add i9 %k.2, 6, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.5.cast = zext i9 %k.7.5 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.22 = getelementptr inbounds i32* %input, i32 %k.7.5.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.22 = load i32* %input.addr.22, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[7].addr" = getelementptr [11 x i32]* %"weightIH[7]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.22, i32* %"weightIH[7].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.6 = add i9 %k.2, 7, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.6.cast = zext i9 %k.7.6 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.23 = getelementptr inbounds i32* %input, i32 %k.7.6.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.23 = load i32* %input.addr.23, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[8].addr" = getelementptr [11 x i32]* %"weightIH[8]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.23, i32* %"weightIH[8].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.7 = add i9 %k.2, 8, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.7.cast = zext i9 %k.7.7 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.24 = getelementptr inbounds i32* %input, i32 %k.7.7.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.24 = load i32* %input.addr.24, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[9].addr" = getelementptr [11 x i32]* %"weightIH[9]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.24, i32* %"weightIH[9].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.8 = add i9 %k.2, 9, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.8.cast = zext i9 %k.7.8 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.25 = getelementptr inbounds i32* %input, i32 %k.7.8.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.25 = load i32* %input.addr.25, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[10].addr" = getelementptr [11 x i32]* %"weightIH[10]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.25, i32* %"weightIH[10].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.9 = add i9 %k.2, 10, !dbg !137             ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.9.cast = zext i9 %k.7.9 to i32, !dbg !137  ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.26 = getelementptr inbounds i32* %input, i32 %k.7.9.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.26 = load i32* %input.addr.26, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[11].addr" = getelementptr [11 x i32]* %"weightIH[11]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.26, i32* %"weightIH[11].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7. = add i9 %k.2, 11, !dbg !137              ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7..cast = zext i9 %k.7. to i32, !dbg !137    ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.27 = getelementptr inbounds i32* %input, i32 %k.7..cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.27 = load i32* %input.addr.27, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[12].addr" = getelementptr [11 x i32]* %"weightIH[12]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.27, i32* %"weightIH[12].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %k.7.10 = add i9 %k.2, 12, !dbg !137            ; [#uses=1 type=i9] [debug line = 46:4]
  %k.7.10.cast = zext i9 %k.7.10 to i32, !dbg !137 ; [#uses=1 type=i32] [debug line = 46:4]
  %input.addr.28 = getelementptr inbounds i32* %input, i32 %k.7.10.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.28 = load i32* %input.addr.28, align 4, !dbg !134 ; [#uses=1 type=i32] [debug line = 45:4]
  %"weightIH[13].addr" = getelementptr [11 x i32]* %"weightIH[13]", i32 0, i32 %j.1.cast, !dbg !134 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.28, i32* %"weightIH[13].addr", align 4, !dbg !134 ; [debug line = 45:4]
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str6, i32 %tmp.17) nounwind, !dbg !138 ; [#uses=0 type=i32] [debug line = 48:2]
  %j.4 = add i4 %j.1, 1, !dbg !139                ; [#uses=1 type=i4] [debug line = 43:35]
  call void @llvm.dbg.value(metadata !{i4 %j.4}, i64 0, metadata !129), !dbg !139 ; [debug line = 43:35] [debug variable = j]
  br label %.preheader11, !dbg !139               ; [debug line = 43:35]

; <label>:11                                      ; preds = %.preheader11
  %input.addr.14 = getelementptr inbounds i32* %input, i32 504, !dbg !140 ; [#uses=1 type=i32*] [debug line = 50:2]
  %input.load.14 = load i32* %input.addr.14, align 4, !dbg !140 ; [#uses=1 type=i32] [debug line = 50:2]
  %tmp.16 = shl i32 %input.load.14, 8, !dbg !140  ; [#uses=1 type=i32] [debug line = 50:2]
  %weightHO.addr = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 0, !dbg !140 ; [#uses=2 type=i32*] [debug line = 50:2]
  store i32 %tmp.16, i32* %weightHO.addr, align 4, !dbg !140 ; [debug line = 50:2]
  br label %12, !dbg !141                         ; [debug line = 52:19]

; <label>:12                                      ; preds = %14, %11
  %i.2 = phi i4 [ 1, %11 ], [ %i.5, %14 ]         ; [#uses=3 type=i4]
  %k.4 = phi i10 [ 505, %11 ], [ %phitmp, %14 ]   ; [#uses=2 type=i10]
  %i.2.cast = zext i4 %i.2 to i32, !dbg !143      ; [#uses=1 type=i32] [debug line = 51:2]
  %k.4.cast = zext i10 %k.4 to i32, !dbg !143     ; [#uses=1 type=i32] [debug line = 51:2]
  call void @llvm.dbg.value(metadata !{i10 %k.4}, i64 0, metadata !133), !dbg !143 ; [debug line = 51:2] [debug variable = k]
  %exitcond5 = icmp eq i4 %i.2, -5, !dbg !141     ; [#uses=1 type=i1] [debug line = 52:19]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond5, label %.preheader10.preheader, label %14, !dbg !141 ; [debug line = 52:19]

.preheader10.preheader:                           ; preds = %12
  %weightHO.load = load i32* %weightHO.addr, align 4, !dbg !144 ; [#uses=1 type=i32] [debug line = 67:4]
  br label %.preheader10, !dbg !147               ; [debug line = 58:19]

; <label>:14                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str8) nounwind, !dbg !148 ; [debug line = 52:41]
  %tmp.18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str8) nounwind, !dbg !148 ; [#uses=1 type=i32] [debug line = 52:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !150 ; [debug line = 53:1]
  %input.addr.15 = getelementptr inbounds i32* %input, i32 %k.4.cast, !dbg !151 ; [#uses=1 type=i32*] [debug line = 53:3]
  %input.load.15 = load i32* %input.addr.15, align 4, !dbg !151 ; [#uses=1 type=i32] [debug line = 53:3]
  %weightHO.addr.1 = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 %i.2.cast, !dbg !151 ; [#uses=1 type=i32*] [debug line = 53:3]
  store i32 %input.load.15, i32* %weightHO.addr.1, align 4, !dbg !151 ; [debug line = 53:3]
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str8, i32 %tmp.18) nounwind, !dbg !152 ; [#uses=0 type=i32] [debug line = 55:2]
  %i.5 = add i4 %i.2, 1, !dbg !153                ; [#uses=1 type=i4] [debug line = 52:35]
  call void @llvm.dbg.value(metadata !{i4 %i.5}, i64 0, metadata !119), !dbg !153 ; [debug line = 52:35] [debug variable = i]
  %phitmp = add i10 %k.4, 1, !dbg !153            ; [#uses=1 type=i10] [debug line = 52:35]
  br label %12, !dbg !153                         ; [debug line = 52:35]

.preheader10:                                     ; preds = %27, %.preheader10.preheader
  %k.5 = phi i5 [ %k.6, %27 ], [ 1, %.preheader10.preheader ] ; [#uses=3 type=i5]
  %k.5.cast = zext i5 %k.5 to i32, !dbg !147      ; [#uses=14 type=i32] [debug line = 58:19]
  %exitcond4 = icmp eq i5 %k.5, -3, !dbg !147     ; [#uses=1 type=i1] [debug line = 58:19]
  %16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader.preheader, label %17, !dbg !147 ; [debug line = 58:19]

.preheader.preheader:                             ; preds = %.preheader10
  br label %.preheader, !dbg !154                 ; [debug line = 76:19]

; <label>:17                                      ; preds = %.preheader10
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str9) nounwind, !dbg !156 ; [debug line = 58:41]
  %tmp.19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str9) nounwind, !dbg !156 ; [#uses=1 type=i32] [debug line = 58:41]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 0, [1 x i8]* @.str2) nounwind, !dbg !157 ; [debug line = 59:1]
  %"test_data[1].addr.1" = getelementptr [29 x i32]* %"test_data[1]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[1].load" = load i32* %"test_data[1].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[2].addr.1" = getelementptr [29 x i32]* %"test_data[2]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[2].load" = load i32* %"test_data[2].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[3].addr.1" = getelementptr [29 x i32]* %"test_data[3]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[3].load" = load i32* %"test_data[3].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[4].addr.1" = getelementptr [29 x i32]* %"test_data[4]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[4].load" = load i32* %"test_data[4].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[5].addr.1" = getelementptr [29 x i32]* %"test_data[5]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[5].load" = load i32* %"test_data[5].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[6].addr.1" = getelementptr [29 x i32]* %"test_data[6]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[6].load" = load i32* %"test_data[6].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[7].addr.1" = getelementptr [29 x i32]* %"test_data[7]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[7].load" = load i32* %"test_data[7].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[8].addr.1" = getelementptr [29 x i32]* %"test_data[8]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[8].load" = load i32* %"test_data[8].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[9].addr.1" = getelementptr [29 x i32]* %"test_data[9]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[9].load" = load i32* %"test_data[9].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[10].addr.1" = getelementptr [29 x i32]* %"test_data[10]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[10].load" = load i32* %"test_data[10].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[11].addr.1" = getelementptr [29 x i32]* %"test_data[11]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[11].load" = load i32* %"test_data[11].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[12].addr.1" = getelementptr [29 x i32]* %"test_data[12]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[12].load" = load i32* %"test_data[12].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"test_data[13].addr.1" = getelementptr [29 x i32]* %"test_data[13]", i32 0, i32 %k.5.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"test_data[13].load" = load i32* %"test_data[13].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  br label %18, !dbg !163                         ; [debug line = 59:20]

; <label>:18                                      ; preds = %20, %17
  %i.3 = phi i4 [ 1, %17 ], [ %i.7, %20 ]         ; [#uses=3 type=i4]
  %i.3.cast = zext i4 %i.3 to i32, !dbg !163      ; [#uses=15 type=i32] [debug line = 59:20]
  %exitcond3 = icmp eq i4 %i.3, -5, !dbg !163     ; [#uses=1 type=i1] [debug line = 59:20]
  %19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %22, label %20, !dbg !163 ; [debug line = 59:20]

; <label>:20                                      ; preds = %18
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str10) nounwind, !dbg !164 ; [debug line = 59:42]
  %tmp.22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str10) nounwind, !dbg !164 ; [#uses=1 type=i32] [debug line = 59:42]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !165 ; [debug line = 60:1]
  %"weightIH[0].addr.1" = getelementptr [11 x i32]* %"weightIH[0]", i32 0, i32 %i.3.cast, !dbg !166 ; [#uses=1 type=i32*] [debug line = 60:4]
  %"weightIH[0].load" = load i32* %"weightIH[0].addr.1", align 4, !dbg !166 ; [#uses=1 type=i32] [debug line = 60:4]
  %SumH.addr = getelementptr inbounds [11 x i32]* %SumH, i32 0, i32 %i.3.cast, !dbg !166 ; [#uses=1 type=i32*] [debug line = 60:4]
  %"weightIH[1].addr.1" = getelementptr [11 x i32]* %"weightIH[1]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[1].load" = load i32* %"weightIH[1].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.23 = mul nsw i32 %"test_data[1].load", %"weightIH[1].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[2].addr.1" = getelementptr [11 x i32]* %"weightIH[2]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[2].load" = load i32* %"weightIH[2].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.1 = mul nsw i32 %"test_data[2].load", %"weightIH[2].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[3].addr.1" = getelementptr [11 x i32]* %"weightIH[3]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[3].load" = load i32* %"weightIH[3].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.2 = mul nsw i32 %"test_data[3].load", %"weightIH[3].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[4].addr.1" = getelementptr [11 x i32]* %"weightIH[4]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[4].load" = load i32* %"weightIH[4].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.3 = mul nsw i32 %"test_data[4].load", %"weightIH[4].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[5].addr.1" = getelementptr [11 x i32]* %"weightIH[5]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[5].load" = load i32* %"weightIH[5].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.4 = mul nsw i32 %"test_data[5].load", %"weightIH[5].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[6].addr.1" = getelementptr [11 x i32]* %"weightIH[6]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[6].load" = load i32* %"weightIH[6].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.5 = mul nsw i32 %"test_data[6].load", %"weightIH[6].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[7].addr.1" = getelementptr [11 x i32]* %"weightIH[7]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[7].load" = load i32* %"weightIH[7].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.6 = mul nsw i32 %"test_data[7].load", %"weightIH[7].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[8].addr.1" = getelementptr [11 x i32]* %"weightIH[8]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[8].load" = load i32* %"weightIH[8].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.7 = mul nsw i32 %"test_data[8].load", %"weightIH[8].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[9].addr.1" = getelementptr [11 x i32]* %"weightIH[9]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[9].load" = load i32* %"weightIH[9].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.8 = mul nsw i32 %"test_data[9].load", %"weightIH[9].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[10].addr.1" = getelementptr [11 x i32]* %"weightIH[10]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[10].load" = load i32* %"weightIH[10].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.9 = mul nsw i32 %"test_data[10].load", %"weightIH[10].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[11].addr.1" = getelementptr [11 x i32]* %"weightIH[11]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[11].load" = load i32* %"weightIH[11].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36. = mul nsw i32 %"test_data[11].load", %"weightIH[11].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[12].addr.1" = getelementptr [11 x i32]* %"weightIH[12]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[12].load" = load i32* %"weightIH[12].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.10 = mul nsw i32 %"test_data[12].load", %"weightIH[12].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %"weightIH[13].addr.1" = getelementptr [11 x i32]* %"weightIH[13]", i32 0, i32 %i.3.cast, !dbg !158 ; [#uses=1 type=i32*] [debug line = 62:5]
  %"weightIH[13].load" = load i32* %"weightIH[13].addr.1", align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.36.11 = mul nsw i32 %"test_data[13].load", %"weightIH[13].load", !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp1 = add i32 %tmp.36.1, %tmp.23, !dbg !158   ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp2 = add i32 %"weightIH[0].load", %tmp1, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp3 = add i32 %tmp.36.3, %tmp.36.2, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp4 = add i32 %tmp.36.5, %tmp.36.4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp5 = add i32 %tmp3, %tmp4, !dbg !158         ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp6 = add i32 %tmp2, %tmp5, !dbg !158         ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp7 = add i32 %tmp.36.8, %tmp.36.7, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp8 = add i32 %tmp.36.6, %tmp7, !dbg !158     ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp9 = add i32 %tmp.36., %tmp.36.9, !dbg !158  ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp10 = add i32 %tmp.36.11, %tmp.36.10, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp11 = add i32 %tmp9, %tmp10, !dbg !158       ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp12 = add i32 %tmp8, %tmp11, !dbg !158       ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp.37. = add nsw i32 %tmp6, %tmp12, !dbg !158 ; [#uses=5 type=i32] [debug line = 62:5]
  %tmp.24 = lshr i32 %tmp.37., 8, !dbg !167       ; [#uses=1 type=i32] [debug line = 64:14]
  %tmp.25 = trunc i32 %tmp.24 to i24, !dbg !167   ; [#uses=7 type=i24] [debug line = 64:14]
  %tmp.34.cast = sext i24 %tmp.25 to i25          ; [#uses=1 type=i25]
  %tmp.i = icmp sgt i24 %tmp.25, 1280, !dbg !168  ; [#uses=3 type=i1] [debug line = 83:2@64:14]
  %tmp.1.i = icmp sgt i24 %tmp.25, 608, !dbg !170 ; [#uses=2 type=i1] [debug line = 86:7@64:14]
  %tmp.26 = lshr i32 %tmp.37., 13, !dbg !171      ; [#uses=1 type=i32] [debug line = 87:3@64:14]
  %tmp.27 = trunc i32 %tmp.26 to i19, !dbg !171   ; [#uses=1 type=i19] [debug line = 87:3@64:14]
  %tmp.28 = sext i19 %tmp.27 to i27, !dbg !171    ; [#uses=1 type=i27] [debug line = 87:3@64:14]
  %tmp.2.i.cast = zext i27 %tmp.28 to i28, !dbg !171 ; [#uses=1 type=i28] [debug line = 87:3@64:14]
  %tmp.3.i = add i28 %tmp.2.i.cast, 216, !dbg !171 ; [#uses=1 type=i28] [debug line = 87:3@64:14]
  %tmp.3.i.cast = zext i28 %tmp.3.i to i30, !dbg !171 ; [#uses=1 type=i30] [debug line = 87:3@64:14]
  %tmp.4.i = icmp sgt i24 %tmp.25, 256, !dbg !173 ; [#uses=2 type=i1] [debug line = 89:7@64:14]
  %tmp.29 = lshr i32 %tmp.37., 11, !dbg !174      ; [#uses=1 type=i32] [debug line = 90:3@64:14]
  %tmp.30 = trunc i32 %tmp.29 to i21, !dbg !174   ; [#uses=1 type=i21] [debug line = 90:3@64:14]
  %tmp.31 = sext i21 %tmp.30 to i29, !dbg !174    ; [#uses=1 type=i29] [debug line = 90:3@64:14]
  %tmp.5.i.cast = zext i29 %tmp.31 to i30, !dbg !174 ; [#uses=1 type=i30] [debug line = 90:3@64:14]
  %tmp.6.i = add i30 %tmp.5.i.cast, 160, !dbg !174 ; [#uses=1 type=i30] [debug line = 90:3@64:14]
  %tmp.7.i = icmp sgt i24 %tmp.25, -256, !dbg !176 ; [#uses=2 type=i1] [debug line = 92:7@64:14]
  %tmp.34 = lshr i32 %tmp.37., 31, !dbg !177      ; [#uses=1 type=i32] [debug line = 93:3@64:14]
  %tmp.35 = trunc i32 %tmp.34 to i1, !dbg !177    ; [#uses=1 type=i1] [debug line = 93:3@64:14]
  %_neg.i = sub i25 0, %tmp.34.cast, !dbg !177    ; [#uses=3 type=i25] [debug line = 93:3@64:14]
  %tmp.36 = lshr i25 %_neg.i, 2, !dbg !177        ; [#uses=1 type=i25] [debug line = 93:3@64:14]
  %tmp.37 = trunc i25 %tmp.36 to i23, !dbg !177   ; [#uses=1 type=i23] [debug line = 93:3@64:14]
  %tmp.38 = sext i23 %tmp.37 to i30, !dbg !177    ; [#uses=1 type=i30] [debug line = 93:3@64:14]
  %_lshr.i.cast = zext i30 %tmp.38 to i31, !dbg !177 ; [#uses=1 type=i31] [debug line = 93:3@64:14]
  %_neg.t.i = sub i31 0, %_lshr.i.cast, !dbg !177 ; [#uses=1 type=i31] [debug line = 93:3@64:14]
  %tmp.39 = lshr i32 %tmp.37., 10, !dbg !177      ; [#uses=1 type=i32] [debug line = 93:3@64:14]
  %tmp.40 = trunc i32 %tmp.39 to i22, !dbg !177   ; [#uses=1 type=i22] [debug line = 93:3@64:14]
  %tmp.41 = sext i22 %tmp.40 to i30, !dbg !177    ; [#uses=1 type=i30] [debug line = 93:3@64:14]
  %_lshr.f.i.cast = zext i30 %tmp.41 to i31, !dbg !177 ; [#uses=1 type=i31] [debug line = 93:3@64:14]
  %tmp.8.i = select i1 %tmp.35, i31 %_neg.t.i, i31 %_lshr.f.i.cast, !dbg !177 ; [#uses=1 type=i31] [debug line = 93:3@64:14]
  %tmp.8.i.cast = sext i31 %tmp.8.i to i32, !dbg !177 ; [#uses=1 type=i32] [debug line = 93:3@64:14]
  %tmp.9.i = add nsw i32 %tmp.8.i.cast, 128, !dbg !177 ; [#uses=1 type=i32] [debug line = 93:3@64:14]
  %tmp..i = icmp sgt i24 %tmp.25, -608, !dbg !179 ; [#uses=2 type=i1] [debug line = 95:7@64:14]
  %tmp.42 = lshr i25 %_neg.i, 3, !dbg !180        ; [#uses=1 type=i25] [debug line = 96:3@64:14]
  %tmp.43 = trunc i25 %tmp.42 to i22, !dbg !180   ; [#uses=1 type=i22] [debug line = 96:3@64:14]
  %tmp.44 = sext i22 %tmp.43 to i29, !dbg !180    ; [#uses=1 type=i29] [debug line = 96:3@64:14]
  %tmp.13.i.cast = zext i29 %tmp.44 to i30, !dbg !180 ; [#uses=1 type=i30] [debug line = 96:3@64:14]
  %tmp.11.i = sub i30 96, %tmp.13.i.cast, !dbg !180 ; [#uses=1 type=i30] [debug line = 96:3@64:14]
  %tmp.11.i.cast = sext i30 %tmp.11.i to i32, !dbg !180 ; [#uses=1 type=i32] [debug line = 96:3@64:14]
  %tmp.12.i = icmp sgt i24 %tmp.25, -1280, !dbg !182 ; [#uses=1 type=i1] [debug line = 98:7@64:14]
  %tmp.48 = lshr i25 %_neg.i, 5, !dbg !183        ; [#uses=1 type=i25] [debug line = 99:3@64:14]
  %tmp.49 = trunc i25 %tmp.48 to i20, !dbg !183   ; [#uses=1 type=i20] [debug line = 99:3@64:14]
  %tmp.50 = sext i20 %tmp.49 to i27, !dbg !183    ; [#uses=1 type=i27] [debug line = 99:3@64:14]
  %tmp.16.i.cast = zext i27 %tmp.50 to i28, !dbg !183 ; [#uses=1 type=i28] [debug line = 99:3@64:14]
  %tmp.14.i = sub i28 40, %tmp.16.i.cast, !dbg !183 ; [#uses=1 type=i28] [debug line = 99:3@64:14]
  %sel_tmp.i = xor i1 %tmp.i, true, !dbg !168     ; [#uses=1 type=i1] [debug line = 83:2@64:14]
  %sel_tmp1.i = and i1 %tmp.1.i, %sel_tmp.i       ; [#uses=1 type=i1]
  %sel_tmp5.i = xor i1 %tmp.1.i, true             ; [#uses=1 type=i1]
  %sel_tmp6.i = and i1 %tmp.4.i, %sel_tmp5.i      ; [#uses=2 type=i1]
  %sel_tmp12.i = xor i1 %tmp.4.i, true            ; [#uses=1 type=i1]
  %sel_tmp13.i = and i1 %tmp.7.i, %sel_tmp12.i    ; [#uses=1 type=i1]
  %sel_tmp21.i = xor i1 %tmp.7.i, true            ; [#uses=1 type=i1]
  %sel_tmp22.i = and i1 %tmp..i, %sel_tmp21.i     ; [#uses=2 type=i1]
  %sel_tmp32.i = xor i1 %tmp..i, true             ; [#uses=1 type=i1]
  %sel_tmp33.i = and i1 %tmp.12.i, %sel_tmp32.i   ; [#uses=1 type=i1]
  %newSel = select i1 %tmp.i, i28 256, i28 %tmp.14.i ; [#uses=1 type=i28]
  %newSel.cast = sext i28 %newSel to i32          ; [#uses=1 type=i32]
  %or_cond = or i1 %tmp.i, %sel_tmp33.i           ; [#uses=2 type=i1]
  %newSel1 = select i1 %sel_tmp22.i, i32 %tmp.11.i.cast, i32 %tmp.9.i ; [#uses=1 type=i32]
  %or_cond1 = or i1 %sel_tmp22.i, %sel_tmp13.i    ; [#uses=1 type=i1]
  %newSel2 = select i1 %sel_tmp6.i, i30 %tmp.6.i, i30 %tmp.3.i.cast ; [#uses=1 type=i30]
  %or_cond2 = or i1 %sel_tmp6.i, %sel_tmp1.i      ; [#uses=1 type=i1]
  %newSel3 = select i1 %or_cond, i32 %newSel.cast, i32 %newSel1 ; [#uses=1 type=i32]
  %or_cond3 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %newSel4 = select i1 %or_cond2, i30 %newSel2, i30 0 ; [#uses=1 type=i30]
  %newSel57.cast = zext i30 %newSel4 to i32       ; [#uses=1 type=i32]
  %newSel5 = select i1 %or_cond3, i32 %newSel3, i32 %newSel57.cast ; [#uses=1 type=i32]
  store i32 %newSel5, i32* %SumH.addr, align 4, !dbg !167 ; [debug line = 64:14]
  %21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str10, i32 %tmp.22) nounwind, !dbg !185 ; [#uses=0 type=i32] [debug line = 65:3]
  %i.7 = add i4 %i.3, 1, !dbg !186                ; [#uses=1 type=i4] [debug line = 59:36]
  call void @llvm.dbg.value(metadata !{i4 %i.7}, i64 0, metadata !119), !dbg !186 ; [debug line = 59:36] [debug variable = i]
  br label %18, !dbg !186                         ; [debug line = 59:36]

; <label>:22                                      ; preds = %18
  %result.addr.1 = getelementptr inbounds [28 x i32]* %result, i32 0, i32 %k.5.cast, !dbg !144 ; [#uses=5 type=i32*] [debug line = 67:4]
  store i32 %weightHO.load, i32* %result.addr.1, align 4, !dbg !144 ; [debug line = 67:4]
  br label %23, !dbg !187                         ; [debug line = 68:21]

; <label>:23                                      ; preds = %25, %22
  %j.3 = phi i4 [ 1, %22 ], [ %j.5, %25 ]         ; [#uses=3 type=i4]
  %j.3.cast = zext i4 %j.3 to i32, !dbg !187      ; [#uses=2 type=i32] [debug line = 68:21]
  %exitcond1 = icmp eq i4 %j.3, -5, !dbg !187     ; [#uses=1 type=i1] [debug line = 68:21]
  %24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %27, label %25, !dbg !187 ; [debug line = 68:21]

; <label>:25                                      ; preds = %23
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str12) nounwind, !dbg !189 ; [debug line = 68:43]
  %tmp.47 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str12) nounwind, !dbg !189 ; [#uses=1 type=i32] [debug line = 68:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !191 ; [debug line = 69:1]
  %SumH.addr.1 = getelementptr inbounds [11 x i32]* %SumH, i32 0, i32 %j.3.cast, !dbg !192 ; [#uses=1 type=i32*] [debug line = 69:5]
  %SumH.load = load i32* %SumH.addr.1, align 4, !dbg !192 ; [#uses=1 type=i32] [debug line = 69:5]
  %weightHO.addr.2 = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 %j.3.cast, !dbg !192 ; [#uses=1 type=i32*] [debug line = 69:5]
  %weightHO.load.1 = load i32* %weightHO.addr.2, align 4, !dbg !192 ; [#uses=1 type=i32] [debug line = 69:5]
  %tmp.32 = mul nsw i32 %SumH.load, %weightHO.load.1, !dbg !192 ; [#uses=1 type=i32] [debug line = 69:5]
  %result.load.2 = load i32* %result.addr.1, align 4, !dbg !192 ; [#uses=1 type=i32] [debug line = 69:5]
  %tmp.33 = add nsw i32 %tmp.32, %result.load.2, !dbg !192 ; [#uses=1 type=i32] [debug line = 69:5]
  store i32 %tmp.33, i32* %result.addr.1, align 4, !dbg !192 ; [debug line = 69:5]
  %26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str12, i32 %tmp.47) nounwind, !dbg !193 ; [#uses=0 type=i32] [debug line = 70:4]
  %j.5 = add i4 %j.3, 1, !dbg !194                ; [#uses=1 type=i4] [debug line = 68:37]
  call void @llvm.dbg.value(metadata !{i4 %j.5}, i64 0, metadata !129), !dbg !194 ; [debug line = 68:37] [debug variable = j]
  br label %23, !dbg !194                         ; [debug line = 68:37]

; <label>:27                                      ; preds = %23
  %result.load.1 = load i32* %result.addr.1, align 4, !dbg !195 ; [#uses=5 type=i32] [debug line = 71:16]
  %tmp.45 = lshr i32 %result.load.1, 8, !dbg !195 ; [#uses=1 type=i32] [debug line = 71:16]
  %tmp.46 = trunc i32 %tmp.45 to i24, !dbg !195   ; [#uses=7 type=i24] [debug line = 71:16]
  %tmp.30.cast = sext i24 %tmp.46 to i25          ; [#uses=1 type=i25]
  %tmp.i1 = icmp sgt i24 %tmp.46, 1280, !dbg !196 ; [#uses=3 type=i1] [debug line = 83:2@71:16]
  %tmp.1.i2 = icmp sgt i24 %tmp.46, 608, !dbg !197 ; [#uses=2 type=i1] [debug line = 86:7@71:16]
  %tmp.51 = lshr i32 %result.load.1, 13, !dbg !198 ; [#uses=1 type=i32] [debug line = 87:3@71:16]
  %tmp.52 = trunc i32 %tmp.51 to i19, !dbg !198   ; [#uses=1 type=i19] [debug line = 87:3@71:16]
  %tmp.53 = sext i19 %tmp.52 to i27, !dbg !198    ; [#uses=1 type=i27] [debug line = 87:3@71:16]
  %tmp.2.i3.cast = zext i27 %tmp.53 to i28, !dbg !198 ; [#uses=1 type=i28] [debug line = 87:3@71:16]
  %tmp.3.i4 = add i28 %tmp.2.i3.cast, 216, !dbg !198 ; [#uses=1 type=i28] [debug line = 87:3@71:16]
  %tmp.3.i4.cast = zext i28 %tmp.3.i4 to i30, !dbg !198 ; [#uses=1 type=i30] [debug line = 87:3@71:16]
  %tmp.4.i5 = icmp sgt i24 %tmp.46, 256, !dbg !199 ; [#uses=2 type=i1] [debug line = 89:7@71:16]
  %tmp.54 = lshr i32 %result.load.1, 11, !dbg !200 ; [#uses=1 type=i32] [debug line = 90:3@71:16]
  %tmp.55 = trunc i32 %tmp.54 to i21, !dbg !200   ; [#uses=1 type=i21] [debug line = 90:3@71:16]
  %tmp.56 = sext i21 %tmp.55 to i29, !dbg !200    ; [#uses=1 type=i29] [debug line = 90:3@71:16]
  %tmp.5.i6.cast = zext i29 %tmp.56 to i30, !dbg !200 ; [#uses=1 type=i30] [debug line = 90:3@71:16]
  %tmp.6.i7 = add i30 %tmp.5.i6.cast, 160, !dbg !200 ; [#uses=1 type=i30] [debug line = 90:3@71:16]
  %tmp.7.i8 = icmp sgt i24 %tmp.46, -256, !dbg !201 ; [#uses=2 type=i1] [debug line = 92:7@71:16]
  %tmp.57 = lshr i32 %result.load.1, 31, !dbg !202 ; [#uses=1 type=i32] [debug line = 93:3@71:16]
  %tmp.58 = trunc i32 %tmp.57 to i1, !dbg !202    ; [#uses=1 type=i1] [debug line = 93:3@71:16]
  %_neg.i1 = sub i25 0, %tmp.30.cast, !dbg !202   ; [#uses=3 type=i25] [debug line = 93:3@71:16]
  %tmp.59 = lshr i25 %_neg.i1, 2, !dbg !202       ; [#uses=1 type=i25] [debug line = 93:3@71:16]
  %tmp.60 = trunc i25 %tmp.59 to i23, !dbg !202   ; [#uses=1 type=i23] [debug line = 93:3@71:16]
  %tmp.61 = sext i23 %tmp.60 to i30, !dbg !202    ; [#uses=1 type=i30] [debug line = 93:3@71:16]
  %_lshr.i12.cast = zext i30 %tmp.61 to i31, !dbg !202 ; [#uses=1 type=i31] [debug line = 93:3@71:16]
  %_neg.t.i1 = sub i31 0, %_lshr.i12.cast, !dbg !202 ; [#uses=1 type=i31] [debug line = 93:3@71:16]
  %tmp.62 = lshr i32 %result.load.1, 10, !dbg !202 ; [#uses=1 type=i32] [debug line = 93:3@71:16]
  %tmp.63 = trunc i32 %tmp.62 to i22, !dbg !202   ; [#uses=1 type=i22] [debug line = 93:3@71:16]
  %tmp.64 = sext i22 %tmp.63 to i30, !dbg !202    ; [#uses=1 type=i30] [debug line = 93:3@71:16]
  %_lshr.f.i14.cast = zext i30 %tmp.64 to i31, !dbg !202 ; [#uses=1 type=i31] [debug line = 93:3@71:16]
  %tmp.8.i1 = select i1 %tmp.58, i31 %_neg.t.i1, i31 %_lshr.f.i14.cast, !dbg !202 ; [#uses=1 type=i31] [debug line = 93:3@71:16]
  %tmp.8.i15.cast = sext i31 %tmp.8.i1 to i32, !dbg !202 ; [#uses=1 type=i32] [debug line = 93:3@71:16]
  %tmp.9.i1 = add nsw i32 %tmp.8.i15.cast, 128, !dbg !202 ; [#uses=1 type=i32] [debug line = 93:3@71:16]
  %tmp..i1 = icmp sgt i24 %tmp.46, -608, !dbg !203 ; [#uses=2 type=i1] [debug line = 95:7@71:16]
  %tmp.65 = lshr i25 %_neg.i1, 3, !dbg !204       ; [#uses=1 type=i25] [debug line = 96:3@71:16]
  %tmp.66 = trunc i25 %tmp.65 to i22, !dbg !204   ; [#uses=1 type=i22] [debug line = 96:3@71:16]
  %tmp.67 = sext i22 %tmp.66 to i29, !dbg !204    ; [#uses=1 type=i29] [debug line = 96:3@71:16]
  %tmp.13.i18.cast = zext i29 %tmp.67 to i30, !dbg !204 ; [#uses=1 type=i30] [debug line = 96:3@71:16]
  %tmp.11.i1 = sub i30 96, %tmp.13.i18.cast, !dbg !204 ; [#uses=1 type=i30] [debug line = 96:3@71:16]
  %tmp.11.i19.cast = sext i30 %tmp.11.i1 to i32, !dbg !204 ; [#uses=1 type=i32] [debug line = 96:3@71:16]
  %tmp.12.i1 = icmp sgt i24 %tmp.46, -1280, !dbg !205 ; [#uses=1 type=i1] [debug line = 98:7@71:16]
  %tmp.68 = lshr i25 %_neg.i1, 5, !dbg !206       ; [#uses=1 type=i25] [debug line = 99:3@71:16]
  %tmp.69 = trunc i25 %tmp.68 to i20, !dbg !206   ; [#uses=1 type=i20] [debug line = 99:3@71:16]
  %tmp.70 = sext i20 %tmp.69 to i27, !dbg !206    ; [#uses=1 type=i27] [debug line = 99:3@71:16]
  %tmp.16.i21.cast = zext i27 %tmp.70 to i28, !dbg !206 ; [#uses=1 type=i28] [debug line = 99:3@71:16]
  %tmp.14.i1 = sub i28 40, %tmp.16.i21.cast, !dbg !206 ; [#uses=1 type=i28] [debug line = 99:3@71:16]
  %sel_tmp.i1 = xor i1 %tmp.i1, true, !dbg !196   ; [#uses=1 type=i1] [debug line = 83:2@71:16]
  %sel_tmp1.i1 = and i1 %tmp.1.i2, %sel_tmp.i1    ; [#uses=1 type=i1]
  %sel_tmp5.i1 = xor i1 %tmp.1.i2, true           ; [#uses=1 type=i1]
  %sel_tmp6.i1 = and i1 %tmp.4.i5, %sel_tmp5.i1   ; [#uses=2 type=i1]
  %sel_tmp12.i1 = xor i1 %tmp.4.i5, true          ; [#uses=1 type=i1]
  %sel_tmp13.i1 = and i1 %tmp.7.i8, %sel_tmp12.i1 ; [#uses=1 type=i1]
  %sel_tmp21.i1 = xor i1 %tmp.7.i8, true          ; [#uses=1 type=i1]
  %sel_tmp22.i1 = and i1 %tmp..i1, %sel_tmp21.i1  ; [#uses=2 type=i1]
  %sel_tmp32.i1 = xor i1 %tmp..i1, true           ; [#uses=1 type=i1]
  %sel_tmp33.i1 = and i1 %tmp.12.i1, %sel_tmp32.i1 ; [#uses=1 type=i1]
  %newSel6 = select i1 %tmp.i1, i28 256, i28 %tmp.14.i1 ; [#uses=1 type=i28]
  %newSel61.cast = sext i28 %newSel6 to i32       ; [#uses=1 type=i32]
  %or_cond4 = or i1 %tmp.i1, %sel_tmp33.i1        ; [#uses=2 type=i1]
  %newSel7 = select i1 %sel_tmp22.i1, i32 %tmp.11.i19.cast, i32 %tmp.9.i1 ; [#uses=1 type=i32]
  %or_cond5 = or i1 %sel_tmp22.i1, %sel_tmp13.i1  ; [#uses=1 type=i1]
  %newSel8 = select i1 %sel_tmp6.i1, i30 %tmp.6.i7, i30 %tmp.3.i4.cast ; [#uses=1 type=i30]
  %or_cond6 = or i1 %sel_tmp6.i1, %sel_tmp1.i1    ; [#uses=1 type=i1]
  %newSel9 = select i1 %or_cond4, i32 %newSel61.cast, i32 %newSel7 ; [#uses=1 type=i32]
  %or_cond7 = or i1 %or_cond4, %or_cond5          ; [#uses=1 type=i1]
  %newSel10 = select i1 %or_cond6, i30 %newSel8, i30 0 ; [#uses=1 type=i30]
  %newSel69.cast = zext i30 %newSel10 to i32      ; [#uses=1 type=i32]
  %newSel11 = select i1 %or_cond7, i32 %newSel9, i32 %newSel69.cast ; [#uses=1 type=i32]
  store i32 %newSel11, i32* %result.addr.1, align 4, !dbg !195 ; [debug line = 71:16]
  %28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str9, i32 %tmp.19) nounwind, !dbg !207 ; [#uses=0 type=i32] [debug line = 72:2]
  %k.6 = add i5 %k.5, 1, !dbg !208                ; [#uses=1 type=i5] [debug line = 58:35]
  call void @llvm.dbg.value(metadata !{i5 %k.6}, i64 0, metadata !133), !dbg !208 ; [debug line = 58:35] [debug variable = k]
  br label %.preheader10, !dbg !208               ; [debug line = 58:35]

.preheader:                                       ; preds = %30, %.preheader.preheader
  %i.4 = phi i5 [ %i.6, %30 ], [ 1, %.preheader.preheader ] ; [#uses=4 type=i5]
  %i.4.cast = zext i5 %i.4 to i32, !dbg !154      ; [#uses=1 type=i32] [debug line = 76:19]
  %exitcond = icmp eq i5 %i.4, -3, !dbg !154      ; [#uses=1 type=i1] [debug line = 76:19]
  %29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %32, label %30, !dbg !154 ; [debug line = 76:19]

; <label>:30                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str13) nounwind, !dbg !209 ; [debug line = 76:41]
  %tmp.20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str13) nounwind, !dbg !209 ; [#uses=1 type=i32] [debug line = 76:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str2) nounwind, !dbg !211 ; [debug line = 77:1]
  %result.addr = getelementptr inbounds [28 x i32]* %result, i32 0, i32 %i.4.cast, !dbg !212 ; [#uses=1 type=i32*] [debug line = 77:3]
  %result.load = load i32* %result.addr, align 4, !dbg !212 ; [#uses=1 type=i32] [debug line = 77:3]
  %tmp.21 = add i5 %i.4, -1, !dbg !212            ; [#uses=1 type=i5] [debug line = 77:3]
  %tmp.29.cast = zext i5 %tmp.21 to i32, !dbg !212 ; [#uses=1 type=i32] [debug line = 77:3]
  %output.addr = getelementptr inbounds i32* %output, i32 %tmp.29.cast, !dbg !212 ; [#uses=1 type=i32*] [debug line = 77:3]
  store i32 %result.load, i32* %output.addr, align 4, !dbg !212 ; [debug line = 77:3]
  %31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str13, i32 %tmp.20) nounwind, !dbg !213 ; [#uses=0 type=i32] [debug line = 78:2]
  %i.6 = add i5 %i.4, 1, !dbg !214                ; [#uses=1 type=i5] [debug line = 76:35]
  call void @llvm.dbg.value(metadata !{i5 %i.6}, i64 0, metadata !119), !dbg !214 ; [debug line = 76:35] [debug variable = i]
  br label %.preheader, !dbg !214                 ; [debug line = 76:35]

; <label>:32                                      ; preds = %.preheader
  ret void, !dbg !215                             ; [debug line = 80:1]
}

; [#uses=12]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=30]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=7]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=8]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=8]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!16, !23}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/G552/Desktop/4218_proj/hls_to_be_submitted/hls/solution4/.autopilot/db/mlp.pragma.2.cpp", metadata !"C:\5CUsers\5CG552\5CDesktop\5C4218_proj\5Chls_to_be_submitted", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mlp", metadata !"mlp", metadata !"_Z3mlpPiS_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @mlp, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"./mlp.cpp", metadata !"C:\5CUsers\5CG552\5CDesktop\5C4218_proj\5Chls_to_be_submitted", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sigmoid", metadata !"sigmoid", metadata !"_Z7sigmoidi", metadata !6, i32 82, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 82} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !10, metadata !10}
!16 = metadata !{void (i32*, i32*)* @mlp, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!22 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !22}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"input", metadata !33, metadata !"int", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, i32 1}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"output", metadata !33, metadata !"int", i32 0, i32 31}
!39 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 3, i32 14, metadata !5, null}
!41 = metadata !{i32 786689, metadata !5, metadata !"output", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 3, i32 27, metadata !5, null}
!43 = metadata !{i32 4, i32 1, metadata !44, null}
!44 = metadata !{i32 786443, metadata !5, i32 3, i32 37, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 5, i32 1, metadata !44, null}
!46 = metadata !{i32 6, i32 1, metadata !44, null}
!47 = metadata !{i32 786688, metadata !44, metadata !"test_data[1]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 928, i64 32, i32 0, i32 0, metadata !10, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786465, i64 0, i64 28}       ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!52 = metadata !{i32 8, i32 6, metadata !44, null}
!53 = metadata !{i32 786688, metadata !44, metadata !"test_data[2]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786688, metadata !44, metadata !"test_data[3]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786688, metadata !44, metadata !"test_data[4]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 786688, metadata !44, metadata !"test_data[5]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786688, metadata !44, metadata !"test_data[6]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786688, metadata !44, metadata !"test_data[7]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 786688, metadata !44, metadata !"test_data[8]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 786688, metadata !44, metadata !"test_data[9]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 786688, metadata !44, metadata !"test_data[10]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786688, metadata !44, metadata !"test_data[11]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 786688, metadata !44, metadata !"test_data[12]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786688, metadata !44, metadata !"test_data[13]", null, i32 8, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 786688, metadata !44, metadata !"weightIH[0]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !10, metadata !67, i32 0, i32 0} ; [ DW_TAG_array_type ]
!67 = metadata !{metadata !51, metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!69 = metadata !{i32 10, i32 6, metadata !44, null}
!70 = metadata !{i32 786688, metadata !44, metadata !"weightIH[1]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 786688, metadata !44, metadata !"weightIH[2]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786688, metadata !44, metadata !"weightIH[3]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786688, metadata !44, metadata !"weightIH[4]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786688, metadata !44, metadata !"weightIH[5]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786688, metadata !44, metadata !"weightIH[6]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 786688, metadata !44, metadata !"weightIH[7]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 786688, metadata !44, metadata !"weightIH[8]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786688, metadata !44, metadata !"weightIH[9]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786688, metadata !44, metadata !"weightIH[10]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 786688, metadata !44, metadata !"weightIH[11]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 786688, metadata !44, metadata !"weightIH[12]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 786688, metadata !44, metadata !"weightIH[13]", null, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 786688, metadata !44, metadata !"weightHO", metadata !6, i32 11, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 448, i64 32, i32 0, i32 0, metadata !10, metadata !85, i32 0, i32 0} ; [ DW_TAG_array_type ]
!85 = metadata !{metadata !51}
!86 = metadata !{i32 11, i32 6, metadata !44, null}
!87 = metadata !{i32 786688, metadata !44, metadata !"SumH", metadata !6, i32 13, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !10, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ]
!89 = metadata !{metadata !68}
!90 = metadata !{i32 13, i32 6, metadata !44, null}
!91 = metadata !{i32 786688, metadata !44, metadata !"result", metadata !6, i32 15, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !10, metadata !93, i32 0, i32 0} ; [ DW_TAG_array_type ]
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786465, i64 0, i64 27}       ; [ DW_TAG_subrange_type ]
!95 = metadata !{i32 15, i32 6, metadata !44, null}
!96 = metadata !{i32 20, i32 19, metadata !97, null}
!97 = metadata !{i32 786443, metadata !44, i32 20, i32 14, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 38, i32 19, metadata !99, null}
!99 = metadata !{i32 786443, metadata !44, i32 38, i32 14, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 20, i32 41, metadata !101, null}
!101 = metadata !{i32 786443, metadata !97, i32 20, i32 40, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 21, i32 1, metadata !101, null}
!103 = metadata !{i32 21, i32 3, metadata !101, null}
!104 = metadata !{i32 22, i32 3, metadata !101, null}
!105 = metadata !{i32 23, i32 3, metadata !101, null}
!106 = metadata !{i32 24, i32 3, metadata !101, null}
!107 = metadata !{i32 25, i32 3, metadata !101, null}
!108 = metadata !{i32 26, i32 3, metadata !101, null}
!109 = metadata !{i32 27, i32 3, metadata !101, null}
!110 = metadata !{i32 28, i32 3, metadata !101, null}
!111 = metadata !{i32 29, i32 3, metadata !101, null}
!112 = metadata !{i32 30, i32 3, metadata !101, null}
!113 = metadata !{i32 31, i32 3, metadata !101, null}
!114 = metadata !{i32 32, i32 3, metadata !101, null}
!115 = metadata !{i32 33, i32 3, metadata !101, null}
!116 = metadata !{i32 34, i32 3, metadata !101, null}
!117 = metadata !{i32 35, i32 2, metadata !101, null}
!118 = metadata !{i32 20, i32 35, metadata !97, null}
!119 = metadata !{i32 786688, metadata !44, metadata !"i", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 43, i32 19, metadata !121, null}
!121 = metadata !{i32 786443, metadata !44, i32 43, i32 14, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 38, i32 41, metadata !123, null}
!123 = metadata !{i32 786443, metadata !99, i32 38, i32 40, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 39, i32 1, metadata !123, null}
!125 = metadata !{i32 39, i32 3, metadata !123, null}
!126 = metadata !{i32 40, i32 3, metadata !123, null}
!127 = metadata !{i32 41, i32 2, metadata !123, null}
!128 = metadata !{i32 38, i32 35, metadata !99, null}
!129 = metadata !{i32 786688, metadata !44, metadata !"j", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 43, i32 41, metadata !131, null}
!131 = metadata !{i32 786443, metadata !121, i32 43, i32 40, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 44, i32 1, metadata !131, null}
!133 = metadata !{i32 786688, metadata !44, metadata !"k", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 45, i32 4, metadata !135, null}
!135 = metadata !{i32 786443, metadata !136, i32 44, i32 41, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786443, metadata !131, i32 44, i32 15, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 46, i32 4, metadata !135, null}
!138 = metadata !{i32 48, i32 2, metadata !131, null}
!139 = metadata !{i32 43, i32 35, metadata !121, null}
!140 = metadata !{i32 50, i32 2, metadata !44, null}
!141 = metadata !{i32 52, i32 19, metadata !142, null}
!142 = metadata !{i32 786443, metadata !44, i32 52, i32 14, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 51, i32 2, metadata !44, null}
!144 = metadata !{i32 67, i32 4, metadata !145, null}
!145 = metadata !{i32 786443, metadata !146, i32 58, i32 40, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786443, metadata !44, i32 58, i32 14, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 58, i32 19, metadata !146, null}
!148 = metadata !{i32 52, i32 41, metadata !149, null}
!149 = metadata !{i32 786443, metadata !142, i32 52, i32 40, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 53, i32 1, metadata !149, null}
!151 = metadata !{i32 53, i32 3, metadata !149, null}
!152 = metadata !{i32 55, i32 2, metadata !149, null}
!153 = metadata !{i32 52, i32 35, metadata !142, null}
!154 = metadata !{i32 76, i32 19, metadata !155, null}
!155 = metadata !{i32 786443, metadata !44, i32 76, i32 14, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 58, i32 41, metadata !145, null}
!157 = metadata !{i32 59, i32 1, metadata !145, null}
!158 = metadata !{i32 62, i32 5, metadata !159, null}
!159 = metadata !{i32 786443, metadata !160, i32 61, i32 42, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 786443, metadata !161, i32 61, i32 16, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !162, i32 59, i32 41, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786443, metadata !145, i32 59, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 59, i32 20, metadata !162, null}
!164 = metadata !{i32 59, i32 42, metadata !161, null}
!165 = metadata !{i32 60, i32 1, metadata !161, null}
!166 = metadata !{i32 60, i32 4, metadata !161, null}
!167 = metadata !{i32 64, i32 14, metadata !161, null}
!168 = metadata !{i32 83, i32 2, metadata !169, metadata !167}
!169 = metadata !{i32 786443, metadata !13, i32 82, i32 23, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 86, i32 7, metadata !169, metadata !167}
!171 = metadata !{i32 87, i32 3, metadata !172, metadata !167}
!172 = metadata !{i32 786443, metadata !169, i32 86, i32 23, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 89, i32 7, metadata !169, metadata !167}
!174 = metadata !{i32 90, i32 3, metadata !175, metadata !167}
!175 = metadata !{i32 786443, metadata !169, i32 89, i32 23, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 92, i32 7, metadata !169, metadata !167}
!177 = metadata !{i32 93, i32 3, metadata !178, metadata !167}
!178 = metadata !{i32 786443, metadata !169, i32 92, i32 24, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 95, i32 7, metadata !169, metadata !167}
!180 = metadata !{i32 96, i32 3, metadata !181, metadata !167}
!181 = metadata !{i32 786443, metadata !169, i32 95, i32 24, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 98, i32 7, metadata !169, metadata !167}
!183 = metadata !{i32 99, i32 3, metadata !184, metadata !167}
!184 = metadata !{i32 786443, metadata !169, i32 98, i32 25, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 65, i32 3, metadata !161, null}
!186 = metadata !{i32 59, i32 36, metadata !162, null}
!187 = metadata !{i32 68, i32 21, metadata !188, null}
!188 = metadata !{i32 786443, metadata !145, i32 68, i32 16, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 68, i32 43, metadata !190, null}
!190 = metadata !{i32 786443, metadata !188, i32 68, i32 42, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 69, i32 1, metadata !190, null}
!192 = metadata !{i32 69, i32 5, metadata !190, null}
!193 = metadata !{i32 70, i32 4, metadata !190, null}
!194 = metadata !{i32 68, i32 37, metadata !188, null}
!195 = metadata !{i32 71, i32 16, metadata !145, null}
!196 = metadata !{i32 83, i32 2, metadata !169, metadata !195}
!197 = metadata !{i32 86, i32 7, metadata !169, metadata !195}
!198 = metadata !{i32 87, i32 3, metadata !172, metadata !195}
!199 = metadata !{i32 89, i32 7, metadata !169, metadata !195}
!200 = metadata !{i32 90, i32 3, metadata !175, metadata !195}
!201 = metadata !{i32 92, i32 7, metadata !169, metadata !195}
!202 = metadata !{i32 93, i32 3, metadata !178, metadata !195}
!203 = metadata !{i32 95, i32 7, metadata !169, metadata !195}
!204 = metadata !{i32 96, i32 3, metadata !181, metadata !195}
!205 = metadata !{i32 98, i32 7, metadata !169, metadata !195}
!206 = metadata !{i32 99, i32 3, metadata !184, metadata !195}
!207 = metadata !{i32 72, i32 2, metadata !145, null}
!208 = metadata !{i32 58, i32 35, metadata !146, null}
!209 = metadata !{i32 76, i32 41, metadata !210, null}
!210 = metadata !{i32 786443, metadata !155, i32 76, i32 40, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 77, i32 1, metadata !210, null}
!212 = metadata !{i32 77, i32 3, metadata !210, null}
!213 = metadata !{i32 78, i32 2, metadata !210, null}
!214 = metadata !{i32 76, i32 35, metadata !155, null}
!215 = metadata !{i32 80, i32 1, metadata !44, null}
