.class public final Lexpo/modules/kotlin/defaultmodules/CoreModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "CoreModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 8 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 11 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponentKt\n+ 12 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,62:1\n58#2:63\n14#3:64\n25#3:65\n27#4,3:66\n31#4:207\n102#5:69\n103#5,2:75\n132#5:77\n135#5,3:107\n120#5:110\n123#5,3:140\n236#5,8:143\n244#5,2:205\n26#6:70\n20#7:71\n20#7:103\n20#7:136\n13#8,3:72\n13#8,3:104\n13#8,3:137\n170#9,6:78\n157#9:84\n148#9,7:87\n176#9:94\n157#9:95\n148#9,7:96\n161#9,5:111\n157#9:116\n148#9,17:119\n161#9,5:151\n157#9:156\n148#9,17:159\n143#10,2:85\n143#10,2:117\n143#10,2:157\n13#11,6:176\n19#11,19:186\n8#12,4:182\n*S KotlinDebug\n*F\n+ 1 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n*L\n12#1:63\n12#1:64\n12#1:65\n12#1:66,3\n12#1:207\n14#1:69\n14#1:75,2\n18#1:77\n18#1:107,3\n27#1:110\n27#1:140,3\n55#1:143,8\n55#1:205,2\n14#1:70\n14#1:71\n18#1:103\n27#1:136\n14#1:72,3\n18#1:104,3\n27#1:137,3\n18#1:78,6\n18#1:84\n18#1:87,7\n18#1:94\n18#1:95\n18#1:96,7\n27#1:111,5\n27#1:116\n27#1:119,17\n55#1:151,5\n55#1:156\n55#1:159,17\n18#1:85,2\n27#1:117,2\n55#1:157,2\n55#1:176,6\n55#1:186,19\n55#1:182,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 12
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 63
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 14
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string/jumbo v2, "uuidv4"

    .line 69
    new-instance v3, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v4, 0x0

    .line 70
    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 71
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 72
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v6, :cond_0

    new-instance v6, Lexpo/modules/kotlin/types/ReturnType;

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    .line 73
    sget-object v7, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v7}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v7

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    new-instance v7, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v7}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$FunctionWithoutArgs$1;-><init>()V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, v2, v5, v6, v7}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 75
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string/jumbo v2, "uuidv5"

    .line 77
    new-instance v3, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 79
    const-class v5, Ljava/lang/String;

    .line 80
    const-class v5, Ljava/lang/String;

    const/4 v5, 0x2

    .line 83
    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 84
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 85
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_1

    .line 84
    sget-object v6, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$1;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 87
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 88
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v4, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 87
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v6, v7

    .line 84
    :cond_1
    aput-object v6, v5, v4

    .line 95
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 85
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_2

    .line 95
    sget-object v6, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$2;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 96
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 97
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v4, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 96
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v6, v7

    :cond_2
    const/4 v7, 0x1

    .line 95
    aput-object v6, v5, v7

    .line 103
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 104
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v6

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v6, :cond_3

    new-instance v6, Lexpo/modules/kotlin/types/ReturnType;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v6, v8}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    .line 105
    sget-object v8, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v8}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_3
    new-instance v8, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$3;

    invoke-direct {v8}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$3;-><init>()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 77
    invoke-direct {v3, v2, v5, v6, v8}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 108
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getViewConfig"

    .line 110
    new-instance v3, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 112
    const-class v5, Ljava/lang/String;

    .line 115
    new-array v5, v7, [Lexpo/modules/kotlin/types/AnyType;

    .line 116
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 117
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_4

    .line 116
    sget-object v6, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$4;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$4;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 119
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 120
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v4, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 119
    invoke-direct {v8, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v6, v8

    .line 116
    :cond_4
    aput-object v6, v5, v4

    .line 136
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .line 137
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v6

    const-class v8, Ljava/util/Map;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v6, :cond_5

    new-instance v6, Lexpo/modules/kotlin/types/ReturnType;

    const-class v8, Ljava/util/Map;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v6, v8}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    .line 138
    sget-object v8, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v8}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v8

    const-class v9, Ljava/util/Map;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_5
    new-instance v8, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$5;

    invoke-direct {v8, p0}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$Function$5;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 110
    invoke-direct {v3, v2, v5, v6, v8}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 141
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "reloadAppAsync"

    .line 143
    const-class v3, Ljava/lang/String;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 144
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 150
    new-instance v5, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$AsyncFunction$1;

    invoke-direct {v5, p0}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 144
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_1

    .line 152
    :cond_6
    const-class v3, Ljava/lang/String;

    .line 155
    new-array v3, v7, [Lexpo/modules/kotlin/types/AnyType;

    .line 156
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 157
    new-instance v6, Lkotlin/Pair;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    if-nez v5, :cond_7

    .line 156
    sget-object v5, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$AsyncFunction$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 159
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 160
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v4, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 159
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v5, v6

    .line 156
    :cond_7
    aput-object v5, v3, v4

    .line 146
    new-instance v4, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$AsyncFunction$3;

    invoke-direct {v4, p0}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$6$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 176
    const-class v5, Lkotlin/Unit;

    .line 180
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 186
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_0
    move-object v3, v5

    goto :goto_1

    .line 188
    :cond_8
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 190
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 192
    :cond_9
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 194
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 196
    :cond_a
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 198
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 200
    :cond_b
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 202
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 204
    :cond_c
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 205
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
