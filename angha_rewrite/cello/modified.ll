; ModuleID = '/tmp/fileqziNaR'
source_filename = "/tmp/fileqziNaR"
target datalayout = "e-m:e-n8:16:32:64-S128-p270:32:32:32:32-p271:32:32:32:32-p272:64:64:64:64-i64:64-i128:128-f80:128-p0:64:64:64:64-i1:8-i8:8-i16:16-i32:32-f16:16-f64:64-f128:128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private constant [18 x i8] c"--- Matriz A ---\0A\00", align 1
@.str.1 = private constant [7 x i8] c"%6.1f \00", align 1
@.str.2 = private constant [2 x i8] c"\0A\00", align 1
@.str.3 = private constant [32 x i8] c"\0A--- Matriz B (Identidade) ---\0A\00", align 1
@.str.4 = private constant [23 x i8] c"\0AExecutando mm_mul...\0A\00", align 1
@.str.5 = private constant [27 x i8] c"\0A--- Matriz Resultado ---\0A\00", align 1
@.str.6 = private constant [44 x i8] c"\0A=========================================\0A\00", align 1
@.str.7 = private constant [34 x i8] c"Tempo de Execu\C3\A7\C3\A3o: %f segundos\0A\00", align 1
@.str.8 = private constant [43 x i8] c"=========================================\0A\00", align 1

; Function Attrs: nounwind
declare !dbg !4 ptr @malloc(i64) #0

; Function Attrs: nounwind
declare !dbg !8 ptr @calloc(i64, i64) #0

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @mm_init(i32 %0) #1 !dbg !9 {
  %2 = alloca i32, i64 1, align 4, !dbg !10
  %3 = alloca ptr, i64 1, align 8, !dbg !11
  %4 = alloca ptr, i64 1, align 8, !dbg !12
  %5 = alloca i32, i64 1, align 4, !dbg !13
  store i32 %0, ptr %5, align 4, !dbg !14
  %6 = load i32, ptr %5, align 4, !dbg !15
  %7 = sext i32 %6 to i64, !dbg !15
  %8 = mul i64 %7, 8, !dbg !11
  %9 = call ptr @malloc(i64 %8), !dbg !16
  store ptr %9, ptr %3, align 8, !dbg !11
  store i32 0, ptr %2, align 4, !dbg !10
  br label %10, !dbg !17

10:                                               ; preds = %22, %1
  %11 = load i32, ptr %2, align 4, !dbg !18
  %12 = load i32, ptr %5, align 4, !dbg !19
  %13 = icmp slt i32 %11, %12, !dbg !10
  br i1 %13, label %14, label %25, !dbg !20

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4, !dbg !21
  %16 = sext i32 %15 to i64, !dbg !21
  %17 = call ptr @calloc(i64 %16, i64 8), !dbg !22
  %18 = load ptr, ptr %3, align 8, !dbg !23
  %19 = load i32, ptr %2, align 4, !dbg !24
  %20 = sext i32 %19 to i64, !dbg !24
  %21 = getelementptr ptr, ptr %18, i64 %20, !dbg !25
  store ptr %17, ptr %21, align 8, !dbg !26
  br label %22, !dbg !27

22:                                               ; preds = %14
  %23 = load i32, ptr %2, align 4, !dbg !28
  %24 = add nsw i32 %23, 1, !dbg !29
  store i32 %24, ptr %2, align 4, !dbg !10
  br label %10, !dbg !17

25:                                               ; preds = %10
  %26 = load ptr, ptr %3, align 8, !dbg !30
  store ptr %26, ptr %4, align 8, !dbg !31
  %27 = load ptr, ptr %4, align 8, !dbg !31
  ret ptr %27, !dbg !31
}

; Function Attrs: nounwind
declare !dbg !32 void @free(ptr) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm_destroy(i32 %0, ptr %1) #1 !dbg !33 {
  %3 = alloca i32, i64 1, align 4, !dbg !34
  %4 = alloca ptr, i64 1, align 8, !dbg !35
  %5 = alloca i32, i64 1, align 4, !dbg !35
  store i32 %0, ptr %5, align 4, !dbg !36
  store ptr %1, ptr %4, align 8, !dbg !36
  store i32 0, ptr %3, align 4, !dbg !34
  br label %6, !dbg !37

6:                                                ; preds = %16, %2
  %7 = load i32, ptr %3, align 4, !dbg !38
  %8 = load i32, ptr %5, align 4, !dbg !39
  %9 = icmp slt i32 %7, %8, !dbg !34
  br i1 %9, label %10, label %19, !dbg !40

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !dbg !41
  %12 = load i32, ptr %3, align 4, !dbg !42
  %13 = sext i32 %12 to i64, !dbg !42
  %14 = getelementptr ptr, ptr %11, i64 %13, !dbg !43
  %15 = load ptr, ptr %14, align 8, !dbg !41
  call void @free(ptr %15), !dbg !44
  br label %16, !dbg !45

16:                                               ; preds = %10
  %17 = load i32, ptr %3, align 4, !dbg !46
  %18 = add nsw i32 %17, 1, !dbg !47
  store i32 %18, ptr %3, align 4, !dbg !34
  br label %6, !dbg !37

19:                                               ; preds = %6
  %20 = load ptr, ptr %4, align 8, !dbg !48
  call void @free(ptr %20), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @mm_mul(i32 %0, ptr %1, ptr %2) #1 !dbg !51 {
  %4 = alloca ptr, i64 1, align 8, !dbg !52
  %5 = alloca double, i64 1, align 8, !dbg !52
  %6 = alloca ptr, i64 1, align 8, !dbg !53
  %7 = alloca ptr, i64 1, align 8, !dbg !53
  %8 = alloca ptr, i64 1, align 8, !dbg !54
  %9 = alloca ptr, i64 1, align 8, !dbg !54
  %10 = alloca i32, i64 1, align 4, !dbg !55
  %11 = alloca i32, i64 1, align 4, !dbg !55
  %12 = alloca i32, i64 1, align 4, !dbg !55
  %13 = alloca ptr, i64 1, align 8, !dbg !56
  %14 = alloca ptr, i64 1, align 8, !dbg !57
  %15 = alloca ptr, i64 1, align 8, !dbg !57
  %16 = alloca i32, i64 1, align 4, !dbg !57
  store i32 %0, ptr %16, align 4, !dbg !58
  store ptr %1, ptr %15, align 8, !dbg !58
  store ptr %2, ptr %14, align 8, !dbg !58
  %17 = load i32, ptr %16, align 4, !dbg !59
  %18 = call ptr @mm_init(i32 %17), !dbg !60
  store ptr %18, ptr %9, align 8, !dbg !61
  %19 = load i32, ptr %16, align 4, !dbg !62
  %20 = call ptr @mm_init(i32 %19), !dbg !63
  store ptr %20, ptr %8, align 8, !dbg !61
  store i32 0, ptr %12, align 4, !dbg !64
  br label %21, !dbg !65

21:                                               ; preds = %52, %3
  %22 = load i32, ptr %12, align 4, !dbg !66
  %23 = load i32, ptr %16, align 4, !dbg !67
  %24 = icmp slt i32 %22, %23, !dbg !64
  br i1 %24, label %25, label %55, !dbg !68

25:                                               ; preds = %21
  store i32 0, ptr %11, align 4, !dbg !69
  br label %26, !dbg !65

26:                                               ; preds = %48, %25
  %27 = load i32, ptr %11, align 4, !dbg !70
  %28 = load i32, ptr %16, align 4, !dbg !71
  %29 = icmp slt i32 %27, %28, !dbg !69
  br i1 %29, label %30, label %51, !dbg !72

30:                                               ; preds = %26
  %31 = load ptr, ptr %14, align 8, !dbg !73
  %32 = load i32, ptr %11, align 4, !dbg !74
  %33 = sext i32 %32 to i64, !dbg !74
  %34 = getelementptr ptr, ptr %31, i64 %33, !dbg !75
  %35 = load ptr, ptr %34, align 8, !dbg !73
  %36 = load i32, ptr %12, align 4, !dbg !76
  %37 = sext i32 %36 to i64, !dbg !76
  %38 = getelementptr double, ptr %35, i64 %37, !dbg !77
  %39 = load double, ptr %38, align 8, !dbg !73
  %40 = load ptr, ptr %8, align 8, !dbg !78
  %41 = load i32, ptr %12, align 4, !dbg !79
  %42 = sext i32 %41 to i64, !dbg !79
  %43 = getelementptr ptr, ptr %40, i64 %42, !dbg !80
  %44 = load ptr, ptr %43, align 8, !dbg !78
  %45 = load i32, ptr %11, align 4, !dbg !81
  %46 = sext i32 %45 to i64, !dbg !81
  %47 = getelementptr double, ptr %44, i64 %46, !dbg !82
  store double %39, ptr %47, align 8, !dbg !83
  br label %48, !dbg !77

48:                                               ; preds = %30
  %49 = load i32, ptr %11, align 4, !dbg !84
  %50 = add nsw i32 %49, 1, !dbg !84
  store i32 %50, ptr %11, align 4, !dbg !69
  br label %26, !dbg !65

51:                                               ; preds = %26
  br label %52, !dbg !77

52:                                               ; preds = %51
  %53 = load i32, ptr %12, align 4, !dbg !85
  %54 = add nsw i32 %53, 1, !dbg !85
  store i32 %54, ptr %12, align 4, !dbg !64
  br label %21, !dbg !65

55:                                               ; preds = %21
  store i32 0, ptr %12, align 4, !dbg !86
  br label %56, !dbg !65

56:                                               ; preds = %96, %55
  %57 = load i32, ptr %12, align 4, !dbg !87
  %58 = load i32, ptr %16, align 4, !dbg !88
  %59 = icmp slt i32 %57, %58, !dbg !86
  br i1 %59, label %60, label %99, !dbg !89

60:                                               ; preds = %56
  %61 = load ptr, ptr %15, align 8, !dbg !90
  %62 = load i32, ptr %12, align 4, !dbg !91
  %63 = sext i32 %62 to i64, !dbg !91
  %64 = getelementptr ptr, ptr %61, i64 %63, !dbg !92
  %65 = load ptr, ptr %64, align 8, !dbg !90
  store ptr %65, ptr %7, align 8, !dbg !53
  %66 = load ptr, ptr %9, align 8, !dbg !93
  %67 = load i32, ptr %12, align 4, !dbg !94
  %68 = sext i32 %67 to i64, !dbg !94
  %69 = getelementptr ptr, ptr %66, i64 %68, !dbg !95
  %70 = load ptr, ptr %69, align 8, !dbg !93
  store ptr %70, ptr %6, align 8, !dbg !53
  store i32 0, ptr %11, align 4, !dbg !96
  br label %71, !dbg !65

71:                                               ; preds = %92, %60
  %72 = load i32, ptr %11, align 4, !dbg !97
  %73 = load i32, ptr %16, align 4, !dbg !98
  %74 = icmp slt i32 %72, %73, !dbg !96
  br i1 %74, label %75, label %95, !dbg !99

75:                                               ; preds = %71
  store double 0.000000e+00, ptr %5, align 8, !dbg !52
  %76 = load ptr, ptr %8, align 8, !dbg !100
  %77 = load i32, ptr %11, align 4, !dbg !101
  %78 = sext i32 %77 to i64, !dbg !101
  %79 = getelementptr ptr, ptr %76, i64 %78, !dbg !102
  %80 = load ptr, ptr %79, align 8, !dbg !100
  store ptr %80, ptr %4, align 8, !dbg !52
  store i32 0, ptr %10, align 4, !dbg !103
  %81 = load i32, ptr %16, align 4, !dbg !104
  %82 = load ptr, ptr %7, align 8, !dbg !105
  %83 = load ptr, ptr %4, align 8, !dbg !106
  %84 = call double @cblas_ddot(i32 %81, ptr %82, i32 1, ptr %83, i32 1), !dbg !107
  %85 = load double, ptr %5, align 8, !dbg !108
  %86 = fadd double %85, %84, !dbg !108
  store double %86, ptr %5, align 8, !dbg !109
  %87 = load double, ptr %5, align 8, !dbg !110
  %88 = load ptr, ptr %6, align 8, !dbg !111
  %89 = load i32, ptr %11, align 4, !dbg !112
  %90 = sext i32 %89 to i64, !dbg !112
  %91 = getelementptr double, ptr %88, i64 %90, !dbg !113
  store double %87, ptr %91, align 8, !dbg !114
  br label %92, !dbg !115

92:                                               ; preds = %75
  %93 = load i32, ptr %11, align 4, !dbg !116
  %94 = add nsw i32 %93, 1, !dbg !116
  store i32 %94, ptr %11, align 4, !dbg !96
  br label %71, !dbg !65

95:                                               ; preds = %71
  br label %96, !dbg !117

96:                                               ; preds = %95
  %97 = load i32, ptr %12, align 4, !dbg !118
  %98 = add nsw i32 %97, 1, !dbg !118
  store i32 %98, ptr %12, align 4, !dbg !86
  br label %56, !dbg !65

99:                                               ; preds = %56
  %100 = load i32, ptr %16, align 4, !dbg !119
  %101 = load ptr, ptr %8, align 8, !dbg !120
  call void @mm_destroy(i32 %100, ptr %101), !dbg !121
  %102 = load ptr, ptr %9, align 8, !dbg !122
  store ptr %102, ptr %13, align 8, !dbg !123
  %103 = load ptr, ptr %13, align 8, !dbg !123
  ret ptr %103, !dbg !123
}

declare !dbg !124 i32 @printf(ptr, ...)

; Function Attrs: nounwind
declare !dbg !126 i64 @clock() #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 !dbg !128 {
  %1 = alloca i32, i64 1, align 4, !dbg !129
  %2 = alloca i32, i64 1, align 4, !dbg !130
  %3 = alloca i32, i64 1, align 4, !dbg !131
  %4 = alloca i32, i64 1, align 4, !dbg !132
  %5 = alloca i32, i64 1, align 4, !dbg !133
  %6 = alloca i32, i64 1, align 4, !dbg !134
  %7 = alloca i32, i64 1, align 4, !dbg !135
  %8 = alloca i32, i64 1, align 4, !dbg !136
  %9 = alloca double, i64 1, align 8, !dbg !137
  %10 = alloca i64, i64 1, align 8, !dbg !138
  %11 = alloca ptr, i64 1, align 8, !dbg !139
  %12 = alloca i64, i64 1, align 8, !dbg !140
  %13 = alloca ptr, i64 1, align 8, !dbg !141
  %14 = alloca ptr, i64 1, align 8, !dbg !142
  %15 = alloca i32, i64 1, align 4, !dbg !143
  %16 = alloca i32, i64 1, align 4, !dbg !144
  store i32 3, ptr %15, align 4, !dbg !143
  %17 = load i32, ptr %15, align 4, !dbg !145
  %18 = call ptr @mm_init(i32 %17), !dbg !146
  store ptr %18, ptr %14, align 8, !dbg !142
  %19 = load i32, ptr %15, align 4, !dbg !147
  %20 = call ptr @mm_init(i32 %19), !dbg !148
  store ptr %20, ptr %13, align 8, !dbg !141
  store i32 0, ptr %8, align 4, !dbg !136
  br label %21, !dbg !149

21:                                               ; preds = %62, %0
  %22 = load i32, ptr %8, align 4, !dbg !150
  %23 = load i32, ptr %15, align 4, !dbg !151
  %24 = icmp slt i32 %22, %23, !dbg !136
  br i1 %24, label %25, label %65, !dbg !152

25:                                               ; preds = %21
  store i32 0, ptr %7, align 4, !dbg !135
  br label %26, !dbg !149

26:                                               ; preds = %58, %25
  %27 = load i32, ptr %7, align 4, !dbg !153
  %28 = load i32, ptr %15, align 4, !dbg !154
  %29 = icmp slt i32 %27, %28, !dbg !135
  br i1 %29, label %30, label %61, !dbg !155

30:                                               ; preds = %26
  %31 = load i32, ptr %8, align 4, !dbg !156
  %32 = load i32, ptr %15, align 4, !dbg !157
  %33 = mul nsw i32 %31, %32, !dbg !156
  %34 = load i32, ptr %7, align 4, !dbg !158
  %35 = add nsw i32 %33, %34, !dbg !156
  %36 = add nsw i32 %35, 1, !dbg !156
  %37 = sitofp i32 %36 to double, !dbg !156
  %38 = load ptr, ptr %14, align 8, !dbg !159
  %39 = load i32, ptr %8, align 4, !dbg !160
  %40 = sext i32 %39 to i64, !dbg !160
  %41 = getelementptr ptr, ptr %38, i64 %40, !dbg !161
  %42 = load ptr, ptr %41, align 8, !dbg !159
  %43 = load i32, ptr %7, align 4, !dbg !162
  %44 = sext i32 %43 to i64, !dbg !162
  %45 = getelementptr double, ptr %42, i64 %44, !dbg !163
  store double %37, ptr %45, align 8, !dbg !164
  %46 = load i32, ptr %8, align 4, !dbg !165
  %47 = load i32, ptr %7, align 4, !dbg !166
  %48 = icmp eq i32 %46, %47, !dbg !167
  %49 = select i1 %48, double 1.000000e+00, double 0.000000e+00, !dbg !167
  %50 = load ptr, ptr %13, align 8, !dbg !168
  %51 = load i32, ptr %8, align 4, !dbg !169
  %52 = sext i32 %51 to i64, !dbg !169
  %53 = getelementptr ptr, ptr %50, i64 %52, !dbg !170
  %54 = load ptr, ptr %53, align 8, !dbg !168
  %55 = load i32, ptr %7, align 4, !dbg !171
  %56 = sext i32 %55 to i64, !dbg !171
  %57 = getelementptr double, ptr %54, i64 %56, !dbg !172
  store double %49, ptr %57, align 8, !dbg !167
  br label %58, !dbg !173

58:                                               ; preds = %30
  %59 = load i32, ptr %7, align 4, !dbg !174
  %60 = add nsw i32 %59, 1, !dbg !175
  store i32 %60, ptr %7, align 4, !dbg !135
  br label %26, !dbg !149

61:                                               ; preds = %26
  br label %62, !dbg !176

62:                                               ; preds = %61
  %63 = load i32, ptr %8, align 4, !dbg !177
  %64 = add nsw i32 %63, 1, !dbg !178
  store i32 %64, ptr %8, align 4, !dbg !136
  br label %21, !dbg !149

65:                                               ; preds = %21
  %66 = call i32 (ptr, ...) @printf(ptr @.str), !dbg !179
  store i32 0, ptr %6, align 4, !dbg !134
  br label %67, !dbg !149

67:                                               ; preds = %92, %65
  %68 = load i32, ptr %6, align 4, !dbg !180
  %69 = load i32, ptr %15, align 4, !dbg !181
  %70 = icmp slt i32 %68, %69, !dbg !134
  br i1 %70, label %71, label %95, !dbg !182

71:                                               ; preds = %67
  store i32 0, ptr %5, align 4, !dbg !133
  br label %72, !dbg !133

72:                                               ; preds = %87, %71
  %73 = load i32, ptr %5, align 4, !dbg !183
  %74 = load i32, ptr %15, align 4, !dbg !184
  %75 = icmp slt i32 %73, %74, !dbg !133
  br i1 %75, label %76, label %90, !dbg !185

76:                                               ; preds = %72
  %77 = load ptr, ptr %14, align 8, !dbg !186
  %78 = load i32, ptr %6, align 4, !dbg !187
  %79 = sext i32 %78 to i64, !dbg !187
  %80 = getelementptr ptr, ptr %77, i64 %79, !dbg !188
  %81 = load ptr, ptr %80, align 8, !dbg !186
  %82 = load i32, ptr %5, align 4, !dbg !189
  %83 = sext i32 %82 to i64, !dbg !189
  %84 = getelementptr double, ptr %81, i64 %83, !dbg !190
  %85 = load double, ptr %84, align 8, !dbg !186
  %86 = call i32 (ptr, ...) @printf(ptr @.str.1, double %85), !dbg !191
  br label %87, !dbg !192

87:                                               ; preds = %76
  %88 = load i32, ptr %5, align 4, !dbg !193
  %89 = add nsw i32 %88, 1, !dbg !194
  store i32 %89, ptr %5, align 4, !dbg !133
  br label %72, !dbg !133

90:                                               ; preds = %72
  %91 = call i32 (ptr, ...) @printf(ptr @.str.2), !dbg !195
  br label %92, !dbg !196

92:                                               ; preds = %90
  %93 = load i32, ptr %6, align 4, !dbg !197
  %94 = add nsw i32 %93, 1, !dbg !198
  store i32 %94, ptr %6, align 4, !dbg !134
  br label %67, !dbg !149

95:                                               ; preds = %67
  %96 = call i32 (ptr, ...) @printf(ptr @.str.3), !dbg !199
  store i32 0, ptr %4, align 4, !dbg !132
  br label %97, !dbg !149

97:                                               ; preds = %122, %95
  %98 = load i32, ptr %4, align 4, !dbg !200
  %99 = load i32, ptr %15, align 4, !dbg !201
  %100 = icmp slt i32 %98, %99, !dbg !132
  br i1 %100, label %101, label %125, !dbg !202

101:                                              ; preds = %97
  store i32 0, ptr %3, align 4, !dbg !131
  br label %102, !dbg !131

102:                                              ; preds = %117, %101
  %103 = load i32, ptr %3, align 4, !dbg !203
  %104 = load i32, ptr %15, align 4, !dbg !204
  %105 = icmp slt i32 %103, %104, !dbg !131
  br i1 %105, label %106, label %120, !dbg !205

106:                                              ; preds = %102
  %107 = load ptr, ptr %13, align 8, !dbg !206
  %108 = load i32, ptr %4, align 4, !dbg !207
  %109 = sext i32 %108 to i64, !dbg !207
  %110 = getelementptr ptr, ptr %107, i64 %109, !dbg !208
  %111 = load ptr, ptr %110, align 8, !dbg !206
  %112 = load i32, ptr %3, align 4, !dbg !209
  %113 = sext i32 %112 to i64, !dbg !209
  %114 = getelementptr double, ptr %111, i64 %113, !dbg !210
  %115 = load double, ptr %114, align 8, !dbg !206
  %116 = call i32 (ptr, ...) @printf(ptr @.str.1, double %115), !dbg !211
  br label %117, !dbg !212

117:                                              ; preds = %106
  %118 = load i32, ptr %3, align 4, !dbg !213
  %119 = add nsw i32 %118, 1, !dbg !214
  store i32 %119, ptr %3, align 4, !dbg !131
  br label %102, !dbg !131

120:                                              ; preds = %102
  %121 = call i32 (ptr, ...) @printf(ptr @.str.2), !dbg !215
  br label %122, !dbg !216

122:                                              ; preds = %120
  %123 = load i32, ptr %4, align 4, !dbg !217
  %124 = add nsw i32 %123, 1, !dbg !218
  store i32 %124, ptr %4, align 4, !dbg !132
  br label %97, !dbg !149

125:                                              ; preds = %97
  %126 = call i32 (ptr, ...) @printf(ptr @.str.4), !dbg !219
  %127 = call i64 @clock(), !dbg !220
  store i64 %127, ptr %12, align 8, !dbg !140
  %128 = load i32, ptr %15, align 4, !dbg !221
  %129 = load ptr, ptr %14, align 8, !dbg !222
  %130 = load ptr, ptr %13, align 8, !dbg !223
  %131 = call ptr @mm_mul(i32 %128, ptr %129, ptr %130), !dbg !224
  store ptr %131, ptr %11, align 8, !dbg !139
  %132 = call i64 @clock(), !dbg !225
  store i64 %132, ptr %10, align 8, !dbg !138
  %133 = load i64, ptr %10, align 8, !dbg !226
  %134 = load i64, ptr %12, align 8, !dbg !227
  %135 = sub nsw i64 %133, %134, !dbg !226
  %136 = sitofp i64 %135 to double, !dbg !226
  %137 = fdiv double %136, 1.000000e+06, !dbg !137
  store double %137, ptr %9, align 8, !dbg !137
  %138 = call i32 (ptr, ...) @printf(ptr @.str.5), !dbg !228
  store i32 0, ptr %2, align 4, !dbg !130
  br label %139, !dbg !149

139:                                              ; preds = %164, %125
  %140 = load i32, ptr %2, align 4, !dbg !229
  %141 = load i32, ptr %15, align 4, !dbg !230
  %142 = icmp slt i32 %140, %141, !dbg !130
  br i1 %142, label %143, label %167, !dbg !231

143:                                              ; preds = %139
  store i32 0, ptr %1, align 4, !dbg !129
  br label %144, !dbg !149

144:                                              ; preds = %159, %143
  %145 = load i32, ptr %1, align 4, !dbg !232
  %146 = load i32, ptr %15, align 4, !dbg !233
  %147 = icmp slt i32 %145, %146, !dbg !129
  br i1 %147, label %148, label %162, !dbg !234

148:                                              ; preds = %144
  %149 = load ptr, ptr %11, align 8, !dbg !235
  %150 = load i32, ptr %2, align 4, !dbg !236
  %151 = sext i32 %150 to i64, !dbg !236
  %152 = getelementptr ptr, ptr %149, i64 %151, !dbg !237
  %153 = load ptr, ptr %152, align 8, !dbg !235
  %154 = load i32, ptr %1, align 4, !dbg !238
  %155 = sext i32 %154 to i64, !dbg !238
  %156 = getelementptr double, ptr %153, i64 %155, !dbg !239
  %157 = load double, ptr %156, align 8, !dbg !235
  %158 = call i32 (ptr, ...) @printf(ptr @.str.1, double %157), !dbg !240
  br label %159, !dbg !241

159:                                              ; preds = %148
  %160 = load i32, ptr %1, align 4, !dbg !242
  %161 = add nsw i32 %160, 1, !dbg !243
  store i32 %161, ptr %1, align 4, !dbg !129
  br label %144, !dbg !149

162:                                              ; preds = %144
  %163 = call i32 (ptr, ...) @printf(ptr @.str.2), !dbg !244
  br label %164, !dbg !245

164:                                              ; preds = %162
  %165 = load i32, ptr %2, align 4, !dbg !246
  %166 = add nsw i32 %165, 1, !dbg !247
  store i32 %166, ptr %2, align 4, !dbg !130
  br label %139, !dbg !149

167:                                              ; preds = %139
  %168 = call i32 (ptr, ...) @printf(ptr @.str.6), !dbg !248
  %169 = load double, ptr %9, align 8, !dbg !249
  %170 = call i32 (ptr, ...) @printf(ptr @.str.7, double %169), !dbg !250
  %171 = call i32 (ptr, ...) @printf(ptr @.str.8), !dbg !251
  %172 = load i32, ptr %15, align 4, !dbg !252
  %173 = load ptr, ptr %14, align 8, !dbg !253
  call void @mm_destroy(i32 %172, ptr %173), !dbg !254
  %174 = load i32, ptr %15, align 4, !dbg !255
  %175 = load ptr, ptr %13, align 8, !dbg !256
  call void @mm_destroy(i32 %174, ptr %175), !dbg !257
  %176 = load i32, ptr %15, align 4, !dbg !258
  %177 = load ptr, ptr %11, align 8, !dbg !259
  call void @mm_destroy(i32 %176, ptr %177), !dbg !260
  store i32 0, ptr %16, align 4, !dbg !261
  %178 = load i32, ptr %16, align 4, !dbg !261
  ret i32 %178, !dbg !261
}

declare !dbg !262 double @cblas_ddot(i32, ptr, i32, ptr, i32)

; Function Attrs: noinline nounwind uwtable
define dso_local void @ddot0(i32 %0, ptr %1, ptr %2, double %3) #1 !dbg !264 {
  %5 = alloca double, i64 1, align 8, !dbg !266
  %6 = alloca ptr, i64 1, align 8, !dbg !266
  %7 = alloca ptr, i64 1, align 8, !dbg !266
  %8 = alloca i32, i64 1, align 4, !dbg !266
  store i32 %0, ptr %8, align 4, !dbg !267
  store ptr %1, ptr %7, align 8, !dbg !267
  store ptr %2, ptr %6, align 8, !dbg !267
  store double %3, ptr %5, align 8, !dbg !267
  %9 = load i32, ptr %8, align 4, !dbg !268
  %10 = load ptr, ptr %7, align 8, !dbg !269
  %11 = load ptr, ptr %6, align 8, !dbg !270
  %12 = call double @cblas_ddot(i32 %9, ptr %10, i32 1, ptr %11, i32 1), !dbg !271
  %13 = load double, ptr %5, align 8, !dbg !272
  %14 = fadd double %13, %12, !dbg !272
  store double %14, ptr %5, align 8, !dbg !273
  ret void, !dbg !274
}

attributes #0 = { nounwind }
attributes #1 = { noinline nounwind uwtable }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 7, !"uwtable", i32 2}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_C, file: !3, producer: "MLIR", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly)
!3 = !DIFile(filename: "fileqziNaR", directory: "/tmp")
!4 = !DISubprogram(name: "malloc", linkageName: "malloc", scope: !5, file: !5, line: 540, type: !6, scopeLine: 540, spFlags: DISPFlagOptimized)
!5 = !DIFile(filename: "stdlib.h", directory: "/usr/include")
!6 = !DISubroutineType(cc: DW_CC_normal, types: !7)
!7 = !{}
!8 = !DISubprogram(name: "calloc", linkageName: "calloc", scope: !5, file: !5, line: 543, type: !6, scopeLine: 543, spFlags: DISPFlagOptimized)
!9 = distinct !DISubprogram(name: "mm_init", linkageName: "mm_init", scope: !3, file: !3, line: 16, type: !6, scopeLine: 16, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!10 = !DILocation(line: 18, scope: !9)
!11 = !DILocation(line: 17, scope: !9)
!12 = !DILocation(line: 22, column: 1, scope: !9)
!13 = !DILocation(line: 16, scope: !9)
!14 = !DILocation(line: 16, column: 25, scope: !9)
!15 = !DILocation(line: 17, column: 41, scope: !9)
!16 = !DILocation(line: 17, column: 34, scope: !9)
!17 = !DILocation(line: 0, scope: !9)
!18 = !DILocation(line: 18, column: 21, scope: !9)
!19 = !DILocation(line: 18, column: 25, scope: !9)
!20 = !DILocation(line: 18, column: 23, scope: !9)
!21 = !DILocation(line: 19, column: 38, scope: !9)
!22 = !DILocation(line: 19, column: 31, scope: !9)
!23 = !DILocation(line: 19, column: 9, scope: !9)
!24 = !DILocation(line: 19, column: 16, scope: !9)
!25 = !DILocation(line: 19, column: 17, scope: !9)
!26 = !DILocation(line: 19, scope: !9)
!27 = !DILocation(line: 20, column: 5, scope: !9)
!28 = !DILocation(line: 18, column: 29, scope: !9)
!29 = !DILocation(line: 18, column: 28, scope: !9)
!30 = !DILocation(line: 21, column: 12, scope: !9)
!31 = !DILocation(line: 21, scope: !9)
!32 = !DISubprogram(name: "free", linkageName: "free", scope: !5, file: !5, line: 555, type: !6, scopeLine: 555, spFlags: DISPFlagOptimized)
!33 = distinct !DISubprogram(name: "mm_destroy", linkageName: "mm_destroy", scope: !3, file: !3, line: 24, type: !6, scopeLine: 24, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!34 = !DILocation(line: 25, scope: !33)
!35 = !DILocation(line: 24, scope: !33)
!36 = !DILocation(line: 24, column: 41, scope: !33)
!37 = !DILocation(line: 0, scope: !33)
!38 = !DILocation(line: 25, column: 21, scope: !33)
!39 = !DILocation(line: 25, column: 25, scope: !33)
!40 = !DILocation(line: 25, column: 23, scope: !33)
!41 = !DILocation(line: 26, column: 14, scope: !33)
!42 = !DILocation(line: 26, column: 21, scope: !33)
!43 = !DILocation(line: 26, column: 22, scope: !33)
!44 = !DILocation(line: 26, column: 9, scope: !33)
!45 = !DILocation(line: 27, column: 5, scope: !33)
!46 = !DILocation(line: 25, column: 29, scope: !33)
!47 = !DILocation(line: 25, column: 28, scope: !33)
!48 = !DILocation(line: 28, column: 10, scope: !33)
!49 = !DILocation(line: 28, column: 5, scope: !33)
!50 = !DILocation(line: 29, column: 1, scope: !33)
!51 = distinct !DISubprogram(name: "mm_mul", linkageName: "mm_mul", scope: !3, file: !3, line: 33, type: !6, scopeLine: 33, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!52 = !DILocation(line: 44, scope: !51)
!53 = !DILocation(line: 42, scope: !51)
!54 = !DILocation(line: 36, scope: !51)
!55 = !DILocation(line: 35, scope: !51)
!56 = !DILocation(line: 52, column: 1, scope: !51)
!57 = !DILocation(line: 33, scope: !51)
!58 = !DILocation(line: 34, column: 1, scope: !51)
!59 = !DILocation(line: 37, column: 17, scope: !51)
!60 = !DILocation(line: 37, column: 9, scope: !51)
!61 = !DILocation(line: 37, scope: !51)
!62 = !DILocation(line: 37, column: 33, scope: !51)
!63 = !DILocation(line: 37, column: 25, scope: !51)
!64 = !DILocation(line: 38, scope: !51)
!65 = !DILocation(line: 0, scope: !51)
!66 = !DILocation(line: 38, column: 17, scope: !51)
!67 = !DILocation(line: 38, column: 21, scope: !51)
!68 = !DILocation(line: 38, column: 19, scope: !51)
!69 = !DILocation(line: 39, scope: !51)
!70 = !DILocation(line: 39, column: 21, scope: !51)
!71 = !DILocation(line: 39, column: 25, scope: !51)
!72 = !DILocation(line: 39, column: 23, scope: !51)
!73 = !DILocation(line: 40, column: 23, scope: !51)
!74 = !DILocation(line: 40, column: 25, scope: !51)
!75 = !DILocation(line: 40, column: 26, scope: !51)
!76 = !DILocation(line: 40, column: 28, scope: !51)
!77 = !DILocation(line: 40, column: 29, scope: !51)
!78 = !DILocation(line: 40, column: 13, scope: !51)
!79 = !DILocation(line: 40, column: 15, scope: !51)
!80 = !DILocation(line: 40, column: 16, scope: !51)
!81 = !DILocation(line: 40, column: 18, scope: !51)
!82 = !DILocation(line: 40, column: 19, scope: !51)
!83 = !DILocation(line: 40, scope: !51)
!84 = !DILocation(line: 39, column: 28, scope: !51)
!85 = !DILocation(line: 38, column: 24, scope: !51)
!86 = !DILocation(line: 41, scope: !51)
!87 = !DILocation(line: 41, column: 17, scope: !51)
!88 = !DILocation(line: 41, column: 21, scope: !51)
!89 = !DILocation(line: 41, column: 19, scope: !51)
!90 = !DILocation(line: 42, column: 21, scope: !51)
!91 = !DILocation(line: 42, column: 23, scope: !51)
!92 = !DILocation(line: 42, column: 24, scope: !51)
!93 = !DILocation(line: 42, column: 32, scope: !51)
!94 = !DILocation(line: 42, column: 34, scope: !51)
!95 = !DILocation(line: 42, column: 35, scope: !51)
!96 = !DILocation(line: 43, scope: !51)
!97 = !DILocation(line: 43, column: 21, scope: !51)
!98 = !DILocation(line: 43, column: 25, scope: !51)
!99 = !DILocation(line: 43, column: 23, scope: !51)
!100 = !DILocation(line: 44, column: 34, scope: !51)
!101 = !DILocation(line: 44, column: 36, scope: !51)
!102 = !DILocation(line: 44, column: 37, scope: !51)
!103 = !DILocation(line: 45, scope: !51)
!104 = !DILocation(line: 5, column: 21, scope: !51)
!105 = !DILocation(line: 5, column: 24, scope: !51)
!106 = !DILocation(line: 5, column: 30, scope: !51)
!107 = !DILocation(line: 5, column: 10, scope: !51)
!108 = !DILocation(line: 5, column: 7, scope: !51)
!109 = !DILocation(line: 5, scope: !51)
!110 = !DILocation(line: 47, column: 20, scope: !51)
!111 = !DILocation(line: 47, column: 13, scope: !51)
!112 = !DILocation(line: 47, column: 15, scope: !51)
!113 = !DILocation(line: 47, column: 16, scope: !51)
!114 = !DILocation(line: 47, scope: !51)
!115 = !DILocation(line: 48, column: 9, scope: !51)
!116 = !DILocation(line: 43, column: 28, scope: !51)
!117 = !DILocation(line: 49, column: 5, scope: !51)
!118 = !DILocation(line: 41, column: 24, scope: !51)
!119 = !DILocation(line: 50, column: 16, scope: !51)
!120 = !DILocation(line: 50, column: 19, scope: !51)
!121 = !DILocation(line: 50, column: 5, scope: !51)
!122 = !DILocation(line: 51, column: 12, scope: !51)
!123 = !DILocation(line: 51, scope: !51)
!124 = !DISubprogram(name: "printf", linkageName: "printf", scope: !125, file: !125, line: 356, type: !6, scopeLine: 356, spFlags: DISPFlagOptimized)
!125 = !DIFile(filename: "stdio.h", directory: "/usr/include")
!126 = !DISubprogram(name: "clock", linkageName: "clock", scope: !127, file: !127, line: 72, type: !6, scopeLine: 72, spFlags: DISPFlagOptimized)
!127 = !DIFile(filename: "time.h", directory: "/usr/include")
!128 = distinct !DISubprogram(name: "main", linkageName: "main", scope: !3, file: !3, line: 56, type: !6, scopeLine: 56, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!129 = !DILocation(line: 102, scope: !128)
!130 = !DILocation(line: 101, scope: !128)
!131 = !DILocation(line: 83, scope: !128)
!132 = !DILocation(line: 82, scope: !128)
!133 = !DILocation(line: 77, scope: !128)
!134 = !DILocation(line: 76, scope: !128)
!135 = !DILocation(line: 69, scope: !128)
!136 = !DILocation(line: 68, scope: !128)
!137 = !DILocation(line: 98, scope: !128)
!138 = !DILocation(line: 94, scope: !128)
!139 = !DILocation(line: 92, scope: !128)
!140 = !DILocation(line: 90, scope: !128)
!141 = !DILocation(line: 63, scope: !128)
!142 = !DILocation(line: 62, scope: !128)
!143 = !DILocation(line: 59, scope: !128)
!144 = !DILocation(line: 118, column: 1, scope: !128)
!145 = !DILocation(line: 62, column: 33, scope: !128)
!146 = !DILocation(line: 62, column: 25, scope: !128)
!147 = !DILocation(line: 63, column: 33, scope: !128)
!148 = !DILocation(line: 63, column: 25, scope: !128)
!149 = !DILocation(line: 0, scope: !128)
!150 = !DILocation(line: 68, column: 21, scope: !128)
!151 = !DILocation(line: 68, column: 25, scope: !128)
!152 = !DILocation(line: 68, column: 23, scope: !128)
!153 = !DILocation(line: 69, column: 25, scope: !128)
!154 = !DILocation(line: 69, column: 29, scope: !128)
!155 = !DILocation(line: 69, column: 27, scope: !128)
!156 = !DILocation(line: 70, column: 30, scope: !128)
!157 = !DILocation(line: 70, column: 34, scope: !128)
!158 = !DILocation(line: 70, column: 38, scope: !128)
!159 = !DILocation(line: 70, column: 13, scope: !128)
!160 = !DILocation(line: 70, column: 22, scope: !128)
!161 = !DILocation(line: 70, column: 23, scope: !128)
!162 = !DILocation(line: 70, column: 25, scope: !128)
!163 = !DILocation(line: 70, column: 26, scope: !128)
!164 = !DILocation(line: 70, scope: !128)
!165 = !DILocation(line: 71, column: 31, scope: !128)
!166 = !DILocation(line: 71, column: 36, scope: !128)
!167 = !DILocation(line: 71, scope: !128)
!168 = !DILocation(line: 71, column: 13, scope: !128)
!169 = !DILocation(line: 71, column: 22, scope: !128)
!170 = !DILocation(line: 71, column: 23, scope: !128)
!171 = !DILocation(line: 71, column: 25, scope: !128)
!172 = !DILocation(line: 71, column: 26, scope: !128)
!173 = !DILocation(line: 72, column: 9, scope: !128)
!174 = !DILocation(line: 69, column: 33, scope: !128)
!175 = !DILocation(line: 69, column: 32, scope: !128)
!176 = !DILocation(line: 73, column: 5, scope: !128)
!177 = !DILocation(line: 68, column: 29, scope: !128)
!178 = !DILocation(line: 68, column: 28, scope: !128)
!179 = !DILocation(line: 75, column: 5, scope: !128)
!180 = !DILocation(line: 76, column: 21, scope: !128)
!181 = !DILocation(line: 76, column: 25, scope: !128)
!182 = !DILocation(line: 76, column: 23, scope: !128)
!183 = !DILocation(line: 77, column: 25, scope: !128)
!184 = !DILocation(line: 77, column: 29, scope: !128)
!185 = !DILocation(line: 77, column: 27, scope: !128)
!186 = !DILocation(line: 77, column: 54, scope: !128)
!187 = !DILocation(line: 77, column: 63, scope: !128)
!188 = !DILocation(line: 77, column: 64, scope: !128)
!189 = !DILocation(line: 77, column: 66, scope: !128)
!190 = !DILocation(line: 77, column: 67, scope: !128)
!191 = !DILocation(line: 77, column: 37, scope: !128)
!192 = !DILocation(line: 77, column: 68, scope: !128)
!193 = !DILocation(line: 77, column: 33, scope: !128)
!194 = !DILocation(line: 77, column: 32, scope: !128)
!195 = !DILocation(line: 78, column: 9, scope: !128)
!196 = !DILocation(line: 79, column: 5, scope: !128)
!197 = !DILocation(line: 76, column: 29, scope: !128)
!198 = !DILocation(line: 76, column: 28, scope: !128)
!199 = !DILocation(line: 81, column: 5, scope: !128)
!200 = !DILocation(line: 82, column: 21, scope: !128)
!201 = !DILocation(line: 82, column: 25, scope: !128)
!202 = !DILocation(line: 82, column: 23, scope: !128)
!203 = !DILocation(line: 83, column: 25, scope: !128)
!204 = !DILocation(line: 83, column: 29, scope: !128)
!205 = !DILocation(line: 83, column: 27, scope: !128)
!206 = !DILocation(line: 83, column: 54, scope: !128)
!207 = !DILocation(line: 83, column: 63, scope: !128)
!208 = !DILocation(line: 83, column: 64, scope: !128)
!209 = !DILocation(line: 83, column: 66, scope: !128)
!210 = !DILocation(line: 83, column: 67, scope: !128)
!211 = !DILocation(line: 83, column: 37, scope: !128)
!212 = !DILocation(line: 83, column: 68, scope: !128)
!213 = !DILocation(line: 83, column: 33, scope: !128)
!214 = !DILocation(line: 83, column: 32, scope: !128)
!215 = !DILocation(line: 84, column: 9, scope: !128)
!216 = !DILocation(line: 85, column: 5, scope: !128)
!217 = !DILocation(line: 82, column: 29, scope: !128)
!218 = !DILocation(line: 82, column: 28, scope: !128)
!219 = !DILocation(line: 87, column: 5, scope: !128)
!220 = !DILocation(line: 90, column: 26, scope: !128)
!221 = !DILocation(line: 92, column: 32, scope: !128)
!222 = !DILocation(line: 92, column: 35, scope: !128)
!223 = !DILocation(line: 92, column: 45, scope: !128)
!224 = !DILocation(line: 92, column: 25, scope: !128)
!225 = !DILocation(line: 94, column: 24, scope: !128)
!226 = !DILocation(line: 98, column: 38, scope: !128)
!227 = !DILocation(line: 98, column: 49, scope: !128)
!228 = !DILocation(line: 100, column: 5, scope: !128)
!229 = !DILocation(line: 101, column: 21, scope: !128)
!230 = !DILocation(line: 101, column: 25, scope: !128)
!231 = !DILocation(line: 101, column: 23, scope: !128)
!232 = !DILocation(line: 102, column: 25, scope: !128)
!233 = !DILocation(line: 102, column: 29, scope: !128)
!234 = !DILocation(line: 102, column: 27, scope: !128)
!235 = !DILocation(line: 103, column: 30, scope: !128)
!236 = !DILocation(line: 103, column: 39, scope: !128)
!237 = !DILocation(line: 103, column: 40, scope: !128)
!238 = !DILocation(line: 103, column: 42, scope: !128)
!239 = !DILocation(line: 103, column: 43, scope: !128)
!240 = !DILocation(line: 103, column: 13, scope: !128)
!241 = !DILocation(line: 104, column: 9, scope: !128)
!242 = !DILocation(line: 102, column: 33, scope: !128)
!243 = !DILocation(line: 102, column: 32, scope: !128)
!244 = !DILocation(line: 105, column: 9, scope: !128)
!245 = !DILocation(line: 106, column: 5, scope: !128)
!246 = !DILocation(line: 101, column: 29, scope: !128)
!247 = !DILocation(line: 101, column: 28, scope: !128)
!248 = !DILocation(line: 108, column: 5, scope: !128)
!249 = !DILocation(line: 109, column: 50, scope: !128)
!250 = !DILocation(line: 109, column: 5, scope: !128)
!251 = !DILocation(line: 110, column: 5, scope: !128)
!252 = !DILocation(line: 113, column: 16, scope: !128)
!253 = !DILocation(line: 113, column: 19, scope: !128)
!254 = !DILocation(line: 113, column: 5, scope: !128)
!255 = !DILocation(line: 114, column: 16, scope: !128)
!256 = !DILocation(line: 114, column: 19, scope: !128)
!257 = !DILocation(line: 114, column: 5, scope: !128)
!258 = !DILocation(line: 115, column: 16, scope: !128)
!259 = !DILocation(line: 115, column: 19, scope: !128)
!260 = !DILocation(line: 115, column: 5, scope: !128)
!261 = !DILocation(line: 117, scope: !128)
!262 = !DISubprogram(name: "cblas_ddot", linkageName: "cblas_ddot", scope: !263, file: !263, line: 64, type: !6, scopeLine: 64, spFlags: DISPFlagOptimized)
!263 = !DIFile(filename: "cblas.h", directory: "/usr/include/x86_64-linux-gnu")
!264 = distinct !DISubprogram(name: "ddot0", linkageName: "ddot0", scope: !265, file: !265, line: 3, type: !6, scopeLine: 3, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!265 = !DIFile(filename: "filef9OS9a", directory: "/tmp")
!266 = !DILocation(line: 3, scope: !264)
!267 = !DILocation(line: 4, column: 1, scope: !264)
!268 = !DILocation(line: 5, column: 21, scope: !264)
!269 = !DILocation(line: 5, column: 24, scope: !264)
!270 = !DILocation(line: 5, column: 30, scope: !264)
!271 = !DILocation(line: 5, column: 10, scope: !264)
!272 = !DILocation(line: 5, column: 7, scope: !264)
!273 = !DILocation(line: 5, scope: !264)
!274 = !DILocation(line: 6, column: 1, scope: !264)
