.class public final Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "NativeModulesProxyModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeModulesProxyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeModulesProxyModule.kt\nexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,28:1\n58#2:29\n14#3:30\n25#3:31\n27#4,3:32\n31#4:74\n315#5:35\n318#5,3:71\n181#6,7:36\n157#6:43\n148#6,7:46\n188#6:53\n157#6:54\n148#6,7:55\n189#6:62\n157#6:63\n148#6,7:64\n143#7,2:44\n*S KotlinDebug\n*F\n+ 1 NativeModulesProxyModule.kt\nexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule\n*L\n13#1:29\n13#1:30\n13#1:31\n13#1:32,3\n13#1:74\n20#1:35\n20#1:71,3\n20#1:36,7\n20#1:43\n20#1:46,7\n20#1:53\n20#1:54\n20#1:55,7\n20#1:62\n20#1:63\n20#1:64,7\n20#1:44,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;",
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

    .line 12
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 10

    .line 13
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 29
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

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 29
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 14
    const-string v0, "NativeModulesProxy"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$1$1;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$1$1;-><init>(Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants(Lkotlin/jvm/functions/Function0;)V

    .line 20
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "callMethod"

    .line 35
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 37
    const-class v4, Ljava/lang/String;

    .line 38
    const-class v4, Ljava/lang/String;

    .line 39
    const-class v4, Lcom/facebook/react/bridge/ReadableArray;

    const/4 v4, 0x3

    .line 42
    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 43
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 44
    new-instance v6, Lkotlin/Pair;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    if-nez v5, :cond_0

    .line 43
    sget-object v5, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 46
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 47
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v7, v9, v8, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 46
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v5, v6

    .line 43
    :cond_0
    aput-object v5, v4, v8

    .line 54
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 44
    new-instance v6, Lkotlin/Pair;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    if-nez v5, :cond_1

    .line 54
    sget-object v5, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 55
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 56
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v7, v9, v8, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 55
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v5, v6

    :cond_1
    const/4 v6, 0x1

    .line 54
    aput-object v5, v4, v6

    .line 63
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 44
    new-instance v6, Lkotlin/Pair;

    const-class v7, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    if-nez v5, :cond_2

    .line 63
    sget-object v5, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$3;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 64
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 65
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v7, v9, v8, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 64
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v5, v6

    :cond_2
    const/4 v6, 0x2

    .line 63
    aput-object v5, v4, v6

    .line 71
    new-instance v5, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v5, p0}, Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule$definition$lambda$1$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/kotlin/defaultmodules/NativeModulesProxyModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 35
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 72
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 29
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
