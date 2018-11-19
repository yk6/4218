; ModuleID = 'C:/Users/G552/Desktop/4218_proj/hls_to_be_submitted/hls/solution4/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@mlp.str = internal unnamed_addr constant [4 x i8] c"mlp\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"mlp_label18\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"mlp_label16\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [12 x i8] c"mlp_label15\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"mlp_label14\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"mlp_label13\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"mlp_label12\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str13 = private unnamed_addr constant [12 x i8] c"mlp_label22\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"mlp_label21\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"mlp_label20\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"mlp_label19\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=2]
define internal fastcc i32 @sigmoid(i32 %data) nounwind {
  call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !29), !dbg !30 ; [debug line = 82:17] [debug variable = data]
  %tmp = icmp sgt i32 %data, 1280, !dbg !31       ; [#uses=1 type=i1] [debug line = 83:2]
  br i1 %tmp, label %._crit_edge, label %1, !dbg !31 ; [debug line = 83:2]

; <label>:1                                       ; preds = %0
  %tmp.1 = icmp sgt i32 %data, 608, !dbg !33      ; [#uses=1 type=i1] [debug line = 86:7]
  br i1 %tmp.1, label %2, label %3, !dbg !33      ; [debug line = 86:7]

; <label>:2                                       ; preds = %1
  %tmp.2 = sdiv i32 %data, 32, !dbg !34           ; [#uses=1 type=i32] [debug line = 87:3]
  %tmp.3 = add nsw i32 %tmp.2, 216, !dbg !34      ; [#uses=1 type=i32] [debug line = 87:3]
  br label %._crit_edge, !dbg !34                 ; [debug line = 87:3]

; <label>:3                                       ; preds = %1
  %tmp.4 = icmp sgt i32 %data, 256, !dbg !36      ; [#uses=1 type=i1] [debug line = 89:7]
  br i1 %tmp.4, label %4, label %5, !dbg !36      ; [debug line = 89:7]

; <label>:4                                       ; preds = %3
  %tmp.5 = sdiv i32 %data, 8, !dbg !37            ; [#uses=1 type=i32] [debug line = 90:3]
  %tmp.6 = add nsw i32 %tmp.5, 160, !dbg !37      ; [#uses=1 type=i32] [debug line = 90:3]
  br label %._crit_edge, !dbg !37                 ; [debug line = 90:3]

; <label>:5                                       ; preds = %3
  %tmp.7 = icmp sgt i32 %data, -256, !dbg !39     ; [#uses=1 type=i1] [debug line = 92:7]
  br i1 %tmp.7, label %6, label %7, !dbg !39      ; [debug line = 92:7]

; <label>:6                                       ; preds = %5
  %tmp.8 = sdiv i32 %data, 4, !dbg !40            ; [#uses=1 type=i32] [debug line = 93:3]
  %tmp.9 = add nsw i32 %tmp.8, 128, !dbg !40      ; [#uses=1 type=i32] [debug line = 93:3]
  br label %._crit_edge, !dbg !40                 ; [debug line = 93:3]

; <label>:7                                       ; preds = %5
  %tmp.10 = icmp sgt i32 %data, -608, !dbg !42    ; [#uses=1 type=i1] [debug line = 95:7]
  br i1 %tmp.10, label %8, label %9, !dbg !42     ; [debug line = 95:7]

; <label>:8                                       ; preds = %7
  %tmp.11 = sdiv i32 %data, 8, !dbg !43           ; [#uses=1 type=i32] [debug line = 96:3]
  %tmp.12 = add nsw i32 %tmp.11, 96, !dbg !43     ; [#uses=1 type=i32] [debug line = 96:3]
  br label %._crit_edge, !dbg !43                 ; [debug line = 96:3]

; <label>:9                                       ; preds = %7
  %tmp.13 = icmp sgt i32 %data, -1280, !dbg !45   ; [#uses=1 type=i1] [debug line = 98:7]
  br i1 %tmp.13, label %10, label %._crit_edge, !dbg !45 ; [debug line = 98:7]

; <label>:10                                      ; preds = %9
  %tmp.14 = sdiv i32 %data, 32, !dbg !46          ; [#uses=1 type=i32] [debug line = 99:3]
  %tmp.15 = add nsw i32 %tmp.14, 40, !dbg !46     ; [#uses=1 type=i32] [debug line = 99:3]
  br label %._crit_edge, !dbg !46                 ; [debug line = 99:3]

._crit_edge:                                      ; preds = %10, %9, %8, %6, %4, %2, %0
  %.0 = phi i32 [ %tmp.3, %2 ], [ %tmp.6, %4 ], [ %tmp.9, %6 ], [ %tmp.12, %8 ], [ %tmp.15, %10 ], [ 256, %0 ], [ 0, %9 ] ; [#uses=1 type=i32]
  ret i32 %.0, !dbg !48                           ; [debug line = 104:1]
}

; [#uses=0]
define void @mlp(i32* %input, i32* %output) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @mlp.str) nounwind
  %test_data = alloca [29 x [14 x i32]], align 4  ; [#uses=14 type=[29 x [14 x i32]]*]
  %weightIH = alloca [14 x [11 x i32]], align 4   ; [#uses=4 type=[14 x [11 x i32]]*]
  %weightHO = alloca [14 x i32], align 4          ; [#uses=3 type=[14 x i32]*]
  %SumH = alloca [11 x i32], align 4              ; [#uses=2 type=[11 x i32]*]
  %result = alloca [28 x i32], align 4            ; [#uses=2 type=[28 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %input}, i64 0, metadata !49), !dbg !50 ; [debug line = 3:14] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i32* %output}, i64 0, metadata !51), !dbg !52 ; [debug line = 3:27] [debug variable = output]
  call void (...)* @_ssdm_op_SpecInterface(i32* %input, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !53 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %output, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !55 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !56 ; [debug line = 6:1]
  call void @llvm.dbg.declare(metadata !{[29 x [14 x i32]]* %test_data}, metadata !57), !dbg !62 ; [debug line = 8:6] [debug variable = test_data]
  call void @llvm.dbg.declare(metadata !{[14 x [11 x i32]]* %weightIH}, metadata !63), !dbg !67 ; [debug line = 10:6] [debug variable = weightIH]
  call void @llvm.dbg.declare(metadata !{[14 x i32]* %weightHO}, metadata !68), !dbg !71 ; [debug line = 11:6] [debug variable = weightHO]
  call void @llvm.dbg.declare(metadata !{[11 x i32]* %SumH}, metadata !72), !dbg !75 ; [debug line = 13:6] [debug variable = SumH]
  call void @llvm.dbg.declare(metadata !{[28 x i32]* %result}, metadata !76), !dbg !80 ; [debug line = 15:6] [debug variable = result]
  br label %1, !dbg !81                           ; [debug line = 20:19]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 1, %0 ], [ %i.5, %2 ]            ; [#uses=15 type=i32]
  %k = phi i32 [ 0, %0 ], [ %tmp.27, %2 ]         ; [#uses=14 type=i32]
  %exitcond9 = icmp eq i32 %i, 29, !dbg !81       ; [#uses=1 type=i1] [debug line = 20:19]
  br i1 %exitcond9, label %.preheader12.preheader, label %2, !dbg !81 ; [debug line = 20:19]

.preheader12.preheader:                           ; preds = %1
  br label %.preheader12, !dbg !83                ; [debug line = 38:19]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !85 ; [debug line = 20:41]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !85 ; [#uses=1 type=i32] [debug line = 20:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !87 ; [debug line = 21:1]
  %input.addr = getelementptr inbounds i32* %input, i32 %k, !dbg !88 ; [#uses=1 type=i32*] [debug line = 21:3]
  %input.load = load i32* %input.addr, align 4, !dbg !88 ; [#uses=2 type=i32] [debug line = 21:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load) nounwind
  %test_data.addr = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 1, !dbg !88 ; [#uses=1 type=i32*] [debug line = 21:3]
  store i32 %input.load, i32* %test_data.addr, align 4, !dbg !88 ; [debug line = 21:3]
  %tmp = add nsw i32 %k, 1, !dbg !89              ; [#uses=1 type=i32] [debug line = 22:3]
  %input.addr.1 = getelementptr inbounds i32* %input, i32 %tmp, !dbg !89 ; [#uses=1 type=i32*] [debug line = 22:3]
  %input.load.1 = load i32* %input.addr.1, align 4, !dbg !89 ; [#uses=2 type=i32] [debug line = 22:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.1) nounwind
  %test_data.addr.1 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 2, !dbg !89 ; [#uses=1 type=i32*] [debug line = 22:3]
  store i32 %input.load.1, i32* %test_data.addr.1, align 4, !dbg !89 ; [debug line = 22:3]
  %tmp.16 = add nsw i32 %k, 2, !dbg !90           ; [#uses=1 type=i32] [debug line = 23:3]
  %input.addr.2 = getelementptr inbounds i32* %input, i32 %tmp.16, !dbg !90 ; [#uses=1 type=i32*] [debug line = 23:3]
  %input.load.2 = load i32* %input.addr.2, align 4, !dbg !90 ; [#uses=2 type=i32] [debug line = 23:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.2) nounwind
  %test_data.addr.2 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 3, !dbg !90 ; [#uses=1 type=i32*] [debug line = 23:3]
  store i32 %input.load.2, i32* %test_data.addr.2, align 4, !dbg !90 ; [debug line = 23:3]
  %tmp.17 = add nsw i32 %k, 3, !dbg !91           ; [#uses=1 type=i32] [debug line = 24:3]
  %input.addr.3 = getelementptr inbounds i32* %input, i32 %tmp.17, !dbg !91 ; [#uses=1 type=i32*] [debug line = 24:3]
  %input.load.3 = load i32* %input.addr.3, align 4, !dbg !91 ; [#uses=2 type=i32] [debug line = 24:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.3) nounwind
  %test_data.addr.3 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 4, !dbg !91 ; [#uses=1 type=i32*] [debug line = 24:3]
  store i32 %input.load.3, i32* %test_data.addr.3, align 4, !dbg !91 ; [debug line = 24:3]
  %tmp.18 = add nsw i32 %k, 4, !dbg !92           ; [#uses=1 type=i32] [debug line = 25:3]
  %input.addr.4 = getelementptr inbounds i32* %input, i32 %tmp.18, !dbg !92 ; [#uses=1 type=i32*] [debug line = 25:3]
  %input.load.4 = load i32* %input.addr.4, align 4, !dbg !92 ; [#uses=2 type=i32] [debug line = 25:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.4) nounwind
  %test_data.addr.4 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 5, !dbg !92 ; [#uses=1 type=i32*] [debug line = 25:3]
  store i32 %input.load.4, i32* %test_data.addr.4, align 4, !dbg !92 ; [debug line = 25:3]
  %tmp.19 = add nsw i32 %k, 5, !dbg !93           ; [#uses=1 type=i32] [debug line = 26:3]
  %input.addr.5 = getelementptr inbounds i32* %input, i32 %tmp.19, !dbg !93 ; [#uses=1 type=i32*] [debug line = 26:3]
  %input.load.5 = load i32* %input.addr.5, align 4, !dbg !93 ; [#uses=2 type=i32] [debug line = 26:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.5) nounwind
  %test_data.addr.5 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 6, !dbg !93 ; [#uses=1 type=i32*] [debug line = 26:3]
  store i32 %input.load.5, i32* %test_data.addr.5, align 4, !dbg !93 ; [debug line = 26:3]
  %tmp.20 = add nsw i32 %k, 6, !dbg !94           ; [#uses=1 type=i32] [debug line = 27:3]
  %input.addr.6 = getelementptr inbounds i32* %input, i32 %tmp.20, !dbg !94 ; [#uses=1 type=i32*] [debug line = 27:3]
  %input.load.6 = load i32* %input.addr.6, align 4, !dbg !94 ; [#uses=2 type=i32] [debug line = 27:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.6) nounwind
  %test_data.addr.6 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 7, !dbg !94 ; [#uses=1 type=i32*] [debug line = 27:3]
  store i32 %input.load.6, i32* %test_data.addr.6, align 4, !dbg !94 ; [debug line = 27:3]
  %tmp.21 = add nsw i32 %k, 7, !dbg !95           ; [#uses=1 type=i32] [debug line = 28:3]
  %input.addr.7 = getelementptr inbounds i32* %input, i32 %tmp.21, !dbg !95 ; [#uses=1 type=i32*] [debug line = 28:3]
  %input.load.7 = load i32* %input.addr.7, align 4, !dbg !95 ; [#uses=2 type=i32] [debug line = 28:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.7) nounwind
  %test_data.addr.7 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 8, !dbg !95 ; [#uses=1 type=i32*] [debug line = 28:3]
  store i32 %input.load.7, i32* %test_data.addr.7, align 4, !dbg !95 ; [debug line = 28:3]
  %tmp.22 = add nsw i32 %k, 8, !dbg !96           ; [#uses=1 type=i32] [debug line = 29:3]
  %input.addr.8 = getelementptr inbounds i32* %input, i32 %tmp.22, !dbg !96 ; [#uses=1 type=i32*] [debug line = 29:3]
  %input.load.8 = load i32* %input.addr.8, align 4, !dbg !96 ; [#uses=2 type=i32] [debug line = 29:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.8) nounwind
  %test_data.addr.8 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 9, !dbg !96 ; [#uses=1 type=i32*] [debug line = 29:3]
  store i32 %input.load.8, i32* %test_data.addr.8, align 4, !dbg !96 ; [debug line = 29:3]
  %tmp.23 = add nsw i32 %k, 9, !dbg !97           ; [#uses=1 type=i32] [debug line = 30:3]
  %input.addr.9 = getelementptr inbounds i32* %input, i32 %tmp.23, !dbg !97 ; [#uses=1 type=i32*] [debug line = 30:3]
  %input.load.9 = load i32* %input.addr.9, align 4, !dbg !97 ; [#uses=2 type=i32] [debug line = 30:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.9) nounwind
  %test_data.addr.9 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 10, !dbg !97 ; [#uses=1 type=i32*] [debug line = 30:3]
  store i32 %input.load.9, i32* %test_data.addr.9, align 4, !dbg !97 ; [debug line = 30:3]
  %tmp.24 = add nsw i32 %k, 10, !dbg !98          ; [#uses=1 type=i32] [debug line = 31:3]
  %input.addr.10 = getelementptr inbounds i32* %input, i32 %tmp.24, !dbg !98 ; [#uses=1 type=i32*] [debug line = 31:3]
  %input.load.10 = load i32* %input.addr.10, align 4, !dbg !98 ; [#uses=2 type=i32] [debug line = 31:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.10) nounwind
  %test_data.addr.10 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 11, !dbg !98 ; [#uses=1 type=i32*] [debug line = 31:3]
  store i32 %input.load.10, i32* %test_data.addr.10, align 4, !dbg !98 ; [debug line = 31:3]
  %tmp.25 = add nsw i32 %k, 11, !dbg !99          ; [#uses=1 type=i32] [debug line = 32:3]
  %input.addr.11 = getelementptr inbounds i32* %input, i32 %tmp.25, !dbg !99 ; [#uses=1 type=i32*] [debug line = 32:3]
  %input.load.11 = load i32* %input.addr.11, align 4, !dbg !99 ; [#uses=2 type=i32] [debug line = 32:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.11) nounwind
  %test_data.addr.11 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 12, !dbg !99 ; [#uses=1 type=i32*] [debug line = 32:3]
  store i32 %input.load.11, i32* %test_data.addr.11, align 4, !dbg !99 ; [debug line = 32:3]
  %tmp.26 = add nsw i32 %k, 12, !dbg !100         ; [#uses=1 type=i32] [debug line = 33:3]
  %input.addr.12 = getelementptr inbounds i32* %input, i32 %tmp.26, !dbg !100 ; [#uses=1 type=i32*] [debug line = 33:3]
  %input.load.12 = load i32* %input.addr.12, align 4, !dbg !100 ; [#uses=2 type=i32] [debug line = 33:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.12) nounwind
  %test_data.addr.12 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %i, i32 13, !dbg !100 ; [#uses=1 type=i32*] [debug line = 33:3]
  store i32 %input.load.12, i32* %test_data.addr.12, align 4, !dbg !100 ; [debug line = 33:3]
  %tmp.27 = add nsw i32 %k, 13, !dbg !101         ; [#uses=1 type=i32] [debug line = 34:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !102 ; [#uses=0 type=i32] [debug line = 35:2]
  %i.5 = add nsw i32 %i, 1, !dbg !103             ; [#uses=1 type=i32] [debug line = 20:35]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !104), !dbg !103 ; [debug line = 20:35] [debug variable = i]
  br label %1, !dbg !103                          ; [debug line = 20:35]

.preheader12:                                     ; preds = %3, %.preheader12.preheader
  %j = phi i32 [ %j.4, %3 ], [ 1, %.preheader12.preheader ] ; [#uses=3 type=i32]
  %k.1 = phi i32 [ %tmp.30, %3 ], [ 364, %.preheader12.preheader ] ; [#uses=2 type=i32]
  %exitcond8 = icmp eq i32 %j, 11, !dbg !83       ; [#uses=1 type=i1] [debug line = 38:19]
  br i1 %exitcond8, label %.preheader11.preheader, label %3, !dbg !83 ; [debug line = 38:19]

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11, !dbg !105               ; [debug line = 43:19]

; <label>:3                                       ; preds = %.preheader12
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !107 ; [debug line = 38:41]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !107 ; [#uses=1 type=i32] [debug line = 38:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !109 ; [debug line = 39:1]
  %input.addr.13 = getelementptr inbounds i32* %input, i32 %k.1, !dbg !110 ; [#uses=1 type=i32*] [debug line = 39:3]
  %input.load.13 = load i32* %input.addr.13, align 4, !dbg !110 ; [#uses=2 type=i32] [debug line = 39:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.13) nounwind
  %tmp.29 = shl i32 %input.load.13, 8, !dbg !110  ; [#uses=1 type=i32] [debug line = 39:3]
  %weightIH.addr = getelementptr inbounds [14 x [11 x i32]]* %weightIH, i32 0, i32 0, i32 %j, !dbg !110 ; [#uses=1 type=i32*] [debug line = 39:3]
  store i32 %tmp.29, i32* %weightIH.addr, align 4, !dbg !110 ; [debug line = 39:3]
  %tmp.30 = add nsw i32 %k.1, 1, !dbg !111        ; [#uses=1 type=i32] [debug line = 40:3]
  %rend14 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i32 %rbegin1) nounwind, !dbg !112 ; [#uses=0 type=i32] [debug line = 41:2]
  %j.4 = add nsw i32 %j, 1, !dbg !113             ; [#uses=1 type=i32] [debug line = 38:35]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !114), !dbg !113 ; [debug line = 38:35] [debug variable = j]
  br label %.preheader12, !dbg !113               ; [debug line = 38:35]

.preheader11:                                     ; preds = %7, %.preheader11.preheader
  %j.1 = phi i32 [ %j.5, %7 ], [ 1, %.preheader11.preheader ] ; [#uses=3 type=i32]
  %k.2 = phi i32 [ %k.4, %7 ], [ 374, %.preheader11.preheader ] ; [#uses=2 type=i32]
  %exitcond7 = icmp eq i32 %j.1, 11, !dbg !105    ; [#uses=1 type=i1] [debug line = 43:19]
  br i1 %exitcond7, label %8, label %4, !dbg !105 ; [debug line = 43:19]

; <label>:4                                       ; preds = %.preheader11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !115 ; [debug line = 43:41]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !115 ; [#uses=1 type=i32] [debug line = 43:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !117 ; [debug line = 44:1]
  %k.4 = add i32 %k.2, 13, !dbg !101              ; [#uses=1 type=i32] [debug line = 34:3]
  call void @llvm.dbg.value(metadata !{i32 %k.4}, i64 0, metadata !118), !dbg !101 ; [debug line = 34:3] [debug variable = k]
  br label %5, !dbg !119                          ; [debug line = 44:20]

; <label>:5                                       ; preds = %6, %4
  %i.1 = phi i32 [ 1, %4 ], [ %i.7, %6 ]          ; [#uses=3 type=i32]
  %k.3 = phi i32 [ %k.2, %4 ], [ %k.7, %6 ]       ; [#uses=2 type=i32]
  %exitcond6 = icmp eq i32 %i.1, 14, !dbg !119    ; [#uses=1 type=i1] [debug line = 44:20]
  br i1 %exitcond6, label %7, label %6, !dbg !119 ; [debug line = 44:20]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !121 ; [debug line = 44:42]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !121 ; [#uses=1 type=i32] [debug line = 44:42]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !123 ; [debug line = 45:1]
  %input.addr.16 = getelementptr inbounds i32* %input, i32 %k.3, !dbg !124 ; [#uses=1 type=i32*] [debug line = 45:4]
  %input.load.16 = load i32* %input.addr.16, align 4, !dbg !124 ; [#uses=2 type=i32] [debug line = 45:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.16) nounwind
  %weightIH.addr.1 = getelementptr inbounds [14 x [11 x i32]]* %weightIH, i32 0, i32 %i.1, i32 %j.1, !dbg !124 ; [#uses=1 type=i32*] [debug line = 45:4]
  store i32 %input.load.16, i32* %weightIH.addr.1, align 4, !dbg !124 ; [debug line = 45:4]
  %k.7 = add nsw i32 %k.3, 1, !dbg !125           ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %k.7}, i64 0, metadata !118), !dbg !125 ; [debug line = 46:4] [debug variable = k]
  %rend18 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str7, i32 0, i32 0), i32 %rbegin4) nounwind, !dbg !126 ; [#uses=0 type=i32] [debug line = 47:3]
  %i.7 = add nsw i32 %i.1, 1, !dbg !127           ; [#uses=1 type=i32] [debug line = 44:36]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !104), !dbg !127 ; [debug line = 44:36] [debug variable = i]
  br label %5, !dbg !127                          ; [debug line = 44:36]

; <label>:7                                       ; preds = %5
  %rend16 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), i32 %rbegin2) nounwind, !dbg !128 ; [#uses=0 type=i32] [debug line = 48:2]
  %j.5 = add nsw i32 %j.1, 1, !dbg !129           ; [#uses=1 type=i32] [debug line = 43:35]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !114), !dbg !129 ; [debug line = 43:35] [debug variable = j]
  br label %.preheader11, !dbg !129               ; [debug line = 43:35]

; <label>:8                                       ; preds = %.preheader11
  %input.addr.14 = getelementptr inbounds i32* %input, i32 504, !dbg !130 ; [#uses=1 type=i32*] [debug line = 50:2]
  %input.load.14 = load i32* %input.addr.14, align 4, !dbg !130 ; [#uses=2 type=i32] [debug line = 50:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.14) nounwind
  %tmp.32 = shl i32 %input.load.14, 8, !dbg !130  ; [#uses=1 type=i32] [debug line = 50:2]
  %weightHO.addr = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 0, !dbg !130 ; [#uses=2 type=i32*] [debug line = 50:2]
  store i32 %tmp.32, i32* %weightHO.addr, align 4, !dbg !130 ; [debug line = 50:2]
  br label %9, !dbg !131                          ; [debug line = 52:19]

; <label>:9                                       ; preds = %10, %8
  %i.2 = phi i32 [ 1, %8 ], [ %i.6, %10 ]         ; [#uses=3 type=i32]
  %k.6 = phi i32 [ 505, %8 ], [ %phitmp, %10 ], !dbg !133 ; [#uses=2 type=i32] [debug line = 51:2]
  call void @llvm.dbg.value(metadata !{i32 %k.6}, i64 0, metadata !118), !dbg !133 ; [debug line = 51:2] [debug variable = k]
  %exitcond5 = icmp eq i32 %i.2, 11, !dbg !131    ; [#uses=1 type=i1] [debug line = 52:19]
  br i1 %exitcond5, label %.preheader10.preheader, label %10, !dbg !131 ; [debug line = 52:19]

.preheader10.preheader:                           ; preds = %9
  %weightHO.load = load i32* %weightHO.addr, align 4, !dbg !134 ; [#uses=2 type=i32] [debug line = 67:4]
  br label %.preheader10, !dbg !137               ; [debug line = 58:19]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 52:41]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !138 ; [#uses=1 type=i32] [debug line = 52:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 53:1]
  %input.addr.15 = getelementptr inbounds i32* %input, i32 %k.6, !dbg !141 ; [#uses=1 type=i32*] [debug line = 53:3]
  %input.load.15 = load i32* %input.addr.15, align 4, !dbg !141 ; [#uses=2 type=i32] [debug line = 53:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load.15) nounwind
  %weightHO.addr.1 = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 %i.2, !dbg !141 ; [#uses=1 type=i32*] [debug line = 53:3]
  store i32 %input.load.15, i32* %weightHO.addr.1, align 4, !dbg !141 ; [debug line = 53:3]
  %rend20 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0), i32 %rbegin3) nounwind, !dbg !142 ; [#uses=0 type=i32] [debug line = 55:2]
  %i.6 = add nsw i32 %i.2, 1, !dbg !143           ; [#uses=1 type=i32] [debug line = 52:35]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !104), !dbg !143 ; [debug line = 52:35] [debug variable = i]
  %phitmp = add i32 %k.6, 1, !dbg !143            ; [#uses=1 type=i32] [debug line = 52:35]
  br label %9, !dbg !143                          ; [debug line = 52:35]

.preheader10:                                     ; preds = %20, %.preheader10.preheader
  %k.5 = phi i32 [ %k.8, %20 ], [ 1, %.preheader10.preheader ] ; [#uses=4 type=i32]
  %exitcond4 = icmp eq i32 %k.5, 29, !dbg !137    ; [#uses=1 type=i1] [debug line = 58:19]
  br i1 %exitcond4, label %.preheader.preheader, label %11, !dbg !137 ; [debug line = 58:19]

.preheader.preheader:                             ; preds = %.preheader10
  br label %.preheader, !dbg !144                 ; [debug line = 76:19]

; <label>:11                                      ; preds = %.preheader10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !146 ; [debug line = 58:41]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !146 ; [#uses=1 type=i32] [debug line = 58:41]
  call void (...)* @_ssdm_SpecLoopFlatten(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !147 ; [debug line = 59:1]
  br label %12, !dbg !148                         ; [debug line = 59:20]

; <label>:12                                      ; preds = %16, %11
  %i.3 = phi i32 [ 1, %11 ], [ %i.9, %16 ]        ; [#uses=5 type=i32]
  %exitcond3 = icmp eq i32 %i.3, 11, !dbg !148    ; [#uses=1 type=i1] [debug line = 59:20]
  br i1 %exitcond3, label %17, label %13, !dbg !148 ; [debug line = 59:20]

; <label>:13                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !150 ; [debug line = 59:42]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !150 ; [#uses=1 type=i32] [debug line = 59:42]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !152 ; [debug line = 60:1]
  %weightIH.addr.2 = getelementptr inbounds [14 x [11 x i32]]* %weightIH, i32 0, i32 0, i32 %i.3, !dbg !153 ; [#uses=1 type=i32*] [debug line = 60:4]
  %weightIH.load = load i32* %weightIH.addr.2, align 4, !dbg !153 ; [#uses=2 type=i32] [debug line = 60:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %weightIH.load) nounwind
  %SumH.addr = getelementptr inbounds [11 x i32]* %SumH, i32 0, i32 %i.3, !dbg !153 ; [#uses=5 type=i32*] [debug line = 60:4]
  store i32 %weightIH.load, i32* %SumH.addr, align 4, !dbg !153 ; [debug line = 60:4]
  br label %14, !dbg !154                         ; [debug line = 61:21]

; <label>:14                                      ; preds = %15, %13
  %j.2 = phi i32 [ 1, %13 ], [ %j.7, %15 ]        ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %j.2, 14, !dbg !154    ; [#uses=1 type=i1] [debug line = 61:21]
  br i1 %exitcond2, label %16, label %15, !dbg !154 ; [debug line = 61:21]

; <label>:15                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !156 ; [debug line = 61:43]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !156 ; [#uses=1 type=i32] [debug line = 61:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !158 ; [debug line = 62:1]
  %test_data.addr.13 = getelementptr inbounds [29 x [14 x i32]]* %test_data, i32 0, i32 %k.5, i32 %j.2, !dbg !159 ; [#uses=1 type=i32*] [debug line = 62:5]
  %test_data.load = load i32* %test_data.addr.13, align 4, !dbg !159 ; [#uses=2 type=i32] [debug line = 62:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %test_data.load) nounwind
  %weightIH.addr.3 = getelementptr inbounds [14 x [11 x i32]]* %weightIH, i32 0, i32 %j.2, i32 %i.3, !dbg !159 ; [#uses=1 type=i32*] [debug line = 62:5]
  %weightIH.load.1 = load i32* %weightIH.addr.3, align 4, !dbg !159 ; [#uses=2 type=i32] [debug line = 62:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %weightIH.load.1) nounwind
  %tmp.49 = mul nsw i32 %weightIH.load.1, %test_data.load, !dbg !159 ; [#uses=1 type=i32] [debug line = 62:5]
  %SumH.load.2 = load i32* %SumH.addr, align 4, !dbg !159 ; [#uses=2 type=i32] [debug line = 62:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %SumH.load.2) nounwind
  %tmp.50 = add nsw i32 %SumH.load.2, %tmp.49, !dbg !159 ; [#uses=1 type=i32] [debug line = 62:5]
  store i32 %tmp.50, i32* %SumH.addr, align 4, !dbg !159 ; [debug line = 62:5]
  %rend26 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i32 %rbegin9) nounwind, !dbg !160 ; [#uses=0 type=i32] [debug line = 63:4]
  %j.7 = add nsw i32 %j.2, 1, !dbg !161           ; [#uses=1 type=i32] [debug line = 61:37]
  call void @llvm.dbg.value(metadata !{i32 %j.7}, i64 0, metadata !114), !dbg !161 ; [debug line = 61:37] [debug variable = j]
  br label %14, !dbg !161                         ; [debug line = 61:37]

; <label>:16                                      ; preds = %14
  %SumH.load.1 = load i32* %SumH.addr, align 4, !dbg !162 ; [#uses=2 type=i32] [debug line = 64:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %SumH.load.1) nounwind
  %tmp.46 = ashr i32 %SumH.load.1, 8, !dbg !162   ; [#uses=1 type=i32] [debug line = 64:14]
  %tmp.47 = call fastcc i32 @sigmoid(i32 %tmp.46), !dbg !162 ; [#uses=1 type=i32] [debug line = 64:14]
  store i32 %tmp.47, i32* %SumH.addr, align 4, !dbg !162 ; [debug line = 64:14]
  %rend24 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0), i32 %rbegin7) nounwind, !dbg !163 ; [#uses=0 type=i32] [debug line = 65:3]
  %i.9 = add nsw i32 %i.3, 1, !dbg !164           ; [#uses=1 type=i32] [debug line = 59:36]
  call void @llvm.dbg.value(metadata !{i32 %i.9}, i64 0, metadata !104), !dbg !164 ; [debug line = 59:36] [debug variable = i]
  br label %12, !dbg !164                         ; [debug line = 59:36]

; <label>:17                                      ; preds = %12
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %weightHO.load) nounwind
  %result.addr.1 = getelementptr inbounds [28 x i32]* %result, i32 0, i32 %k.5, !dbg !134 ; [#uses=5 type=i32*] [debug line = 67:4]
  store i32 %weightHO.load, i32* %result.addr.1, align 4, !dbg !134 ; [debug line = 67:4]
  br label %18, !dbg !165                         ; [debug line = 68:21]

; <label>:18                                      ; preds = %19, %17
  %j.3 = phi i32 [ 1, %17 ], [ %j.6, %19 ]        ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j.3, 11, !dbg !165    ; [#uses=1 type=i1] [debug line = 68:21]
  br i1 %exitcond1, label %20, label %19, !dbg !165 ; [debug line = 68:21]

; <label>:19                                      ; preds = %18
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !167 ; [debug line = 68:43]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !167 ; [#uses=1 type=i32] [debug line = 68:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !169 ; [debug line = 69:1]
  %SumH.addr.1 = getelementptr inbounds [11 x i32]* %SumH, i32 0, i32 %j.3, !dbg !170 ; [#uses=1 type=i32*] [debug line = 69:5]
  %SumH.load = load i32* %SumH.addr.1, align 4, !dbg !170 ; [#uses=2 type=i32] [debug line = 69:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %SumH.load) nounwind
  %weightHO.addr.2 = getelementptr inbounds [14 x i32]* %weightHO, i32 0, i32 %j.3, !dbg !170 ; [#uses=1 type=i32*] [debug line = 69:5]
  %weightHO.load.1 = load i32* %weightHO.addr.2, align 4, !dbg !170 ; [#uses=2 type=i32] [debug line = 69:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %weightHO.load.1) nounwind
  %tmp.43 = mul nsw i32 %weightHO.load.1, %SumH.load, !dbg !170 ; [#uses=1 type=i32] [debug line = 69:5]
  %result.load.2 = load i32* %result.addr.1, align 4, !dbg !170 ; [#uses=2 type=i32] [debug line = 69:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %result.load.2) nounwind
  %tmp.44 = add nsw i32 %result.load.2, %tmp.43, !dbg !170 ; [#uses=1 type=i32] [debug line = 69:5]
  store i32 %tmp.44, i32* %result.addr.1, align 4, !dbg !170 ; [debug line = 69:5]
  %rend28 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0), i32 %rbegin8) nounwind, !dbg !171 ; [#uses=0 type=i32] [debug line = 70:4]
  %j.6 = add nsw i32 %j.3, 1, !dbg !172           ; [#uses=1 type=i32] [debug line = 68:37]
  call void @llvm.dbg.value(metadata !{i32 %j.6}, i64 0, metadata !114), !dbg !172 ; [debug line = 68:37] [debug variable = j]
  br label %18, !dbg !172                         ; [debug line = 68:37]

; <label>:20                                      ; preds = %18
  %result.load.1 = load i32* %result.addr.1, align 4, !dbg !173 ; [#uses=2 type=i32] [debug line = 71:16]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %result.load.1) nounwind
  %tmp.40 = ashr i32 %result.load.1, 8, !dbg !173 ; [#uses=1 type=i32] [debug line = 71:16]
  %tmp.41 = call fastcc i32 @sigmoid(i32 %tmp.40), !dbg !173 ; [#uses=1 type=i32] [debug line = 71:16]
  store i32 %tmp.41, i32* %result.addr.1, align 4, !dbg !173 ; [debug line = 71:16]
  %rend22 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0), i32 %rbegin5) nounwind, !dbg !174 ; [#uses=0 type=i32] [debug line = 72:2]
  %k.8 = add nsw i32 %k.5, 1, !dbg !175           ; [#uses=1 type=i32] [debug line = 58:35]
  call void @llvm.dbg.value(metadata !{i32 %k.8}, i64 0, metadata !118), !dbg !175 ; [debug line = 58:35] [debug variable = k]
  br label %.preheader10, !dbg !175               ; [debug line = 58:35]

.preheader:                                       ; preds = %21, %.preheader.preheader
  %i.4 = phi i32 [ %i.8, %21 ], [ 1, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %i.4, 29, !dbg !144     ; [#uses=1 type=i1] [debug line = 76:19]
  br i1 %exitcond, label %22, label %21, !dbg !144 ; [debug line = 76:19]

; <label>:21                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !176 ; [debug line = 76:41]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !176 ; [#uses=1 type=i32] [debug line = 76:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !178 ; [debug line = 77:1]
  %result.addr = getelementptr inbounds [28 x i32]* %result, i32 0, i32 %i.4, !dbg !179 ; [#uses=1 type=i32*] [debug line = 77:3]
  %result.load = load i32* %result.addr, align 4, !dbg !179 ; [#uses=2 type=i32] [debug line = 77:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %result.load) nounwind
  %tmp.38 = add nsw i32 %i.4, -1, !dbg !179       ; [#uses=1 type=i32] [debug line = 77:3]
  %output.addr = getelementptr inbounds i32* %output, i32 %tmp.38, !dbg !179 ; [#uses=1 type=i32*] [debug line = 77:3]
  store i32 %result.load, i32* %output.addr, align 4, !dbg !179 ; [debug line = 77:3]
  %rend30 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), i32 %rbegin6) nounwind, !dbg !180 ; [#uses=0 type=i32] [debug line = 78:2]
  %i.8 = add nsw i32 %i.4, 1, !dbg !181           ; [#uses=1 type=i32] [debug line = 76:35]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !104), !dbg !181 ; [debug line = 76:35] [debug variable = i]
  br label %.preheader, !dbg !181                 ; [debug line = 76:35]

; <label>:22                                      ; preds = %.preheader
  ret void, !dbg !182                             ; [debug line = 80:1]
}

; [#uses=16]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=10]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=9]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=10]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecLoopFlatten(...) nounwind

; [#uses=28]
declare void @_ssdm_SpecKeepArrayLoad(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!16, !23}
!hls.encrypted.func = !{}

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
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sigmoid", metadata !"sigmoid", metadata !"_Z7sigmoidi", metadata !6, i32 82, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @sigmoid, null, null, metadata !11, i32 82} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !10, metadata !10}
!16 = metadata !{void (i32*, i32*)* @mlp, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!22 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!23 = metadata !{i32 (i32)* @sigmoid, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !22}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!25 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!29 = metadata !{i32 786689, metadata !13, metadata !"data", metadata !6, i32 16777298, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 82, i32 17, metadata !13, null}
!31 = metadata !{i32 83, i32 2, metadata !32, null}
!32 = metadata !{i32 786443, metadata !13, i32 82, i32 23, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 86, i32 7, metadata !32, null}
!34 = metadata !{i32 87, i32 3, metadata !35, null}
!35 = metadata !{i32 786443, metadata !32, i32 86, i32 23, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 89, i32 7, metadata !32, null}
!37 = metadata !{i32 90, i32 3, metadata !38, null}
!38 = metadata !{i32 786443, metadata !32, i32 89, i32 23, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 92, i32 7, metadata !32, null}
!40 = metadata !{i32 93, i32 3, metadata !41, null}
!41 = metadata !{i32 786443, metadata !32, i32 92, i32 24, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 95, i32 7, metadata !32, null}
!43 = metadata !{i32 96, i32 3, metadata !44, null}
!44 = metadata !{i32 786443, metadata !32, i32 95, i32 24, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 98, i32 7, metadata !32, null}
!46 = metadata !{i32 99, i32 3, metadata !47, null}
!47 = metadata !{i32 786443, metadata !32, i32 98, i32 25, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 104, i32 1, metadata !32, null}
!49 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 3, i32 14, metadata !5, null}
!51 = metadata !{i32 786689, metadata !5, metadata !"output", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 3, i32 27, metadata !5, null}
!53 = metadata !{i32 4, i32 1, metadata !54, null}
!54 = metadata !{i32 786443, metadata !5, i32 3, i32 37, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 5, i32 1, metadata !54, null}
!56 = metadata !{i32 6, i32 1, metadata !54, null}
!57 = metadata !{i32 786688, metadata !54, metadata !"test_data", metadata !6, i32 8, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 12992, i64 32, i32 0, i32 0, metadata !10, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!59 = metadata !{metadata !60, metadata !61}
!60 = metadata !{i32 786465, i64 0, i64 28}       ; [ DW_TAG_subrange_type ]
!61 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!62 = metadata !{i32 8, i32 6, metadata !54, null}
!63 = metadata !{i32 786688, metadata !54, metadata !"weightIH", metadata !6, i32 10, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4928, i64 32, i32 0, i32 0, metadata !10, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !61, metadata !66}
!66 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!67 = metadata !{i32 10, i32 6, metadata !54, null}
!68 = metadata !{i32 786688, metadata !54, metadata !"weightHO", metadata !6, i32 11, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 448, i64 32, i32 0, i32 0, metadata !10, metadata !70, i32 0, i32 0} ; [ DW_TAG_array_type ]
!70 = metadata !{metadata !61}
!71 = metadata !{i32 11, i32 6, metadata !54, null}
!72 = metadata !{i32 786688, metadata !54, metadata !"SumH", metadata !6, i32 13, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !10, metadata !74, i32 0, i32 0} ; [ DW_TAG_array_type ]
!74 = metadata !{metadata !66}
!75 = metadata !{i32 13, i32 6, metadata !54, null}
!76 = metadata !{i32 786688, metadata !54, metadata !"result", metadata !6, i32 15, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !10, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 27}       ; [ DW_TAG_subrange_type ]
!80 = metadata !{i32 15, i32 6, metadata !54, null}
!81 = metadata !{i32 20, i32 19, metadata !82, null}
!82 = metadata !{i32 786443, metadata !54, i32 20, i32 14, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 38, i32 19, metadata !84, null}
!84 = metadata !{i32 786443, metadata !54, i32 38, i32 14, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 20, i32 41, metadata !86, null}
!86 = metadata !{i32 786443, metadata !82, i32 20, i32 40, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 21, i32 1, metadata !86, null}
!88 = metadata !{i32 21, i32 3, metadata !86, null}
!89 = metadata !{i32 22, i32 3, metadata !86, null}
!90 = metadata !{i32 23, i32 3, metadata !86, null}
!91 = metadata !{i32 24, i32 3, metadata !86, null}
!92 = metadata !{i32 25, i32 3, metadata !86, null}
!93 = metadata !{i32 26, i32 3, metadata !86, null}
!94 = metadata !{i32 27, i32 3, metadata !86, null}
!95 = metadata !{i32 28, i32 3, metadata !86, null}
!96 = metadata !{i32 29, i32 3, metadata !86, null}
!97 = metadata !{i32 30, i32 3, metadata !86, null}
!98 = metadata !{i32 31, i32 3, metadata !86, null}
!99 = metadata !{i32 32, i32 3, metadata !86, null}
!100 = metadata !{i32 33, i32 3, metadata !86, null}
!101 = metadata !{i32 34, i32 3, metadata !86, null}
!102 = metadata !{i32 35, i32 2, metadata !86, null}
!103 = metadata !{i32 20, i32 35, metadata !82, null}
!104 = metadata !{i32 786688, metadata !54, metadata !"i", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 43, i32 19, metadata !106, null}
!106 = metadata !{i32 786443, metadata !54, i32 43, i32 14, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 38, i32 41, metadata !108, null}
!108 = metadata !{i32 786443, metadata !84, i32 38, i32 40, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 39, i32 1, metadata !108, null}
!110 = metadata !{i32 39, i32 3, metadata !108, null}
!111 = metadata !{i32 40, i32 3, metadata !108, null}
!112 = metadata !{i32 41, i32 2, metadata !108, null}
!113 = metadata !{i32 38, i32 35, metadata !84, null}
!114 = metadata !{i32 786688, metadata !54, metadata !"j", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 43, i32 41, metadata !116, null}
!116 = metadata !{i32 786443, metadata !106, i32 43, i32 40, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 44, i32 1, metadata !116, null}
!118 = metadata !{i32 786688, metadata !54, metadata !"k", metadata !6, i32 17, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 44, i32 20, metadata !120, null}
!120 = metadata !{i32 786443, metadata !116, i32 44, i32 15, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 44, i32 42, metadata !122, null}
!122 = metadata !{i32 786443, metadata !120, i32 44, i32 41, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 45, i32 1, metadata !122, null}
!124 = metadata !{i32 45, i32 4, metadata !122, null}
!125 = metadata !{i32 46, i32 4, metadata !122, null}
!126 = metadata !{i32 47, i32 3, metadata !122, null}
!127 = metadata !{i32 44, i32 36, metadata !120, null}
!128 = metadata !{i32 48, i32 2, metadata !116, null}
!129 = metadata !{i32 43, i32 35, metadata !106, null}
!130 = metadata !{i32 50, i32 2, metadata !54, null}
!131 = metadata !{i32 52, i32 19, metadata !132, null}
!132 = metadata !{i32 786443, metadata !54, i32 52, i32 14, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 51, i32 2, metadata !54, null}
!134 = metadata !{i32 67, i32 4, metadata !135, null}
!135 = metadata !{i32 786443, metadata !136, i32 58, i32 40, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786443, metadata !54, i32 58, i32 14, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 58, i32 19, metadata !136, null}
!138 = metadata !{i32 52, i32 41, metadata !139, null}
!139 = metadata !{i32 786443, metadata !132, i32 52, i32 40, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 53, i32 1, metadata !139, null}
!141 = metadata !{i32 53, i32 3, metadata !139, null}
!142 = metadata !{i32 55, i32 2, metadata !139, null}
!143 = metadata !{i32 52, i32 35, metadata !132, null}
!144 = metadata !{i32 76, i32 19, metadata !145, null}
!145 = metadata !{i32 786443, metadata !54, i32 76, i32 14, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 58, i32 41, metadata !135, null}
!147 = metadata !{i32 59, i32 1, metadata !135, null}
!148 = metadata !{i32 59, i32 20, metadata !149, null}
!149 = metadata !{i32 786443, metadata !135, i32 59, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 59, i32 42, metadata !151, null}
!151 = metadata !{i32 786443, metadata !149, i32 59, i32 41, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 60, i32 1, metadata !151, null}
!153 = metadata !{i32 60, i32 4, metadata !151, null}
!154 = metadata !{i32 61, i32 21, metadata !155, null}
!155 = metadata !{i32 786443, metadata !151, i32 61, i32 16, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 61, i32 43, metadata !157, null}
!157 = metadata !{i32 786443, metadata !155, i32 61, i32 42, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 62, i32 1, metadata !157, null}
!159 = metadata !{i32 62, i32 5, metadata !157, null}
!160 = metadata !{i32 63, i32 4, metadata !157, null}
!161 = metadata !{i32 61, i32 37, metadata !155, null}
!162 = metadata !{i32 64, i32 14, metadata !151, null}
!163 = metadata !{i32 65, i32 3, metadata !151, null}
!164 = metadata !{i32 59, i32 36, metadata !149, null}
!165 = metadata !{i32 68, i32 21, metadata !166, null}
!166 = metadata !{i32 786443, metadata !135, i32 68, i32 16, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 68, i32 43, metadata !168, null}
!168 = metadata !{i32 786443, metadata !166, i32 68, i32 42, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 69, i32 1, metadata !168, null}
!170 = metadata !{i32 69, i32 5, metadata !168, null}
!171 = metadata !{i32 70, i32 4, metadata !168, null}
!172 = metadata !{i32 68, i32 37, metadata !166, null}
!173 = metadata !{i32 71, i32 16, metadata !135, null}
!174 = metadata !{i32 72, i32 2, metadata !135, null}
!175 = metadata !{i32 58, i32 35, metadata !136, null}
!176 = metadata !{i32 76, i32 41, metadata !177, null}
!177 = metadata !{i32 786443, metadata !145, i32 76, i32 40, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 77, i32 1, metadata !177, null}
!179 = metadata !{i32 77, i32 3, metadata !177, null}
!180 = metadata !{i32 78, i32 2, metadata !177, null}
!181 = metadata !{i32 76, i32 35, metadata !145, null}
!182 = metadata !{i32 80, i32 1, metadata !54, null}
