.class public final Lexpo/modules/keepawake/KeepAwakeModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "KeepAwakeModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepAwakeModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepAwakeModule.kt\nexpo/modules/keepawake/KeepAwakeModule\n+ 2 AppContext.kt\nexpo/modules/kotlin/AppContext\n+ 3 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 4 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 5 Trace.kt\nandroidx/tracing/TraceKt\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 9 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 10 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponentKt\n+ 11 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,38:1\n135#2,4:39\n58#3:43\n14#4:44\n25#4:45\n27#5,3:46\n31#5:140\n265#6:49\n268#6,3:75\n265#6:78\n268#6,3:104\n226#6:107\n227#6,2:138\n161#7,5:50\n157#7:55\n148#7,17:58\n161#7,5:79\n157#7:84\n148#7,17:87\n143#8,2:56\n143#8,2:85\n26#9:108\n13#10,6:109\n19#10,19:119\n8#11,4:115\n*S KotlinDebug\n*F\n+ 1 KeepAwakeModule.kt\nexpo/modules/keepawake/KeepAwakeModule\n*L\n12#1:39,4\n14#1:43\n14#1:44\n14#1:45\n14#1:46,3\n14#1:140\n17#1:49\n17#1:75,3\n25#1:78\n25#1:104,3\n33#1:107\n33#1:138,2\n17#1:50,5\n17#1:55\n17#1:58,17\n25#1:79,5\n25#1:84\n25#1:87,17\n17#1:56,2\n25#1:85,2\n33#1:108\n33#1:109,6\n33#1:119,19\n33#1:115,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/keepawake/KeepAwakeModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "keepAwakeManager",
        "Lexpo/modules/core/interfaces/services/KeepAwakeManager;",
        "getKeepAwakeManager",
        "()Lexpo/modules/core/interfaces/services/KeepAwakeManager;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-keep-awake_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKeepAwakeManager(Lexpo/modules/keepawake/KeepAwakeModule;)Lexpo/modules/core/interfaces/services/KeepAwakeManager;
    .locals 0

    .line 10
    invoke-direct {p0}, Lexpo/modules/keepawake/KeepAwakeModule;->getKeepAwakeManager()Lexpo/modules/core/interfaces/services/KeepAwakeManager;

    move-result-object p0

    return-object p0
.end method

.method private final getKeepAwakeManager()Lexpo/modules/core/interfaces/services/KeepAwakeManager;
    .locals 2

    .line 12
    invoke-virtual {p0}, Lexpo/modules/keepawake/KeepAwakeModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    .line 40
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v0

    const-class v1, Lexpo/modules/core/interfaces/services/KeepAwakeManager;

    invoke-virtual {v0, v1}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    check-cast v0, Lexpo/modules/core/interfaces/services/KeepAwakeManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/keepawake/MissingModuleException;

    const-string v1, "KeepAwakeManager"

    invoke-direct {v0, v1}, Lexpo/modules/keepawake/MissingModuleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 14
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 43
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

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 15
    const-string v0, "ExpoKeepAwake"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 17
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "activate"

    .line 49
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 51
    const-class v4, Ljava/lang/String;

    const/4 v4, 0x1

    .line 54
    new-array v5, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 55
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 56
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_0

    .line 55
    sget-object v6, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 58
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 59
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v8, v10, v9, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 58
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v6, v7

    .line 55
    :cond_0
    aput-object v6, v5, v9

    .line 75
    new-instance v6, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;

    invoke-direct {v6, p0}, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;-><init>(Lexpo/modules/keepawake/KeepAwakeModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 49
    invoke-direct {v3, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 76
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 25
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "deactivate"

    .line 78
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 80
    const-class v5, Ljava/lang/String;

    .line 83
    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 84
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 85
    new-instance v6, Lkotlin/Pair;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    if-nez v5, :cond_1

    .line 84
    sget-object v5, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 87
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 88
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 87
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v5, v6

    .line 84
    :cond_1
    aput-object v5, v4, v9

    .line 104
    new-instance v5, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v5, p0}, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/keepawake/KeepAwakeModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 78
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 105
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 33
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "isActivated"

    .line 108
    new-array v3, v9, [Lexpo/modules/kotlin/types/AnyType;

    .line 107
    new-instance v4, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunction$1;

    invoke-direct {v4, p0}, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/keepawake/KeepAwakeModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 109
    const-class v5, Ljava/lang/Boolean;

    .line 113
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 121
    :cond_2
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 125
    :cond_3
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 127
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 129
    :cond_4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 131
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 133
    :cond_5
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 135
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 137
    :cond_6
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 138
    :goto_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
