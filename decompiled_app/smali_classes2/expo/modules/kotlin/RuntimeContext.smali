.class public final Lexpo/modules/kotlin/RuntimeContext;
.super Ljava/lang/Object;
.source "RuntimeContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuntimeContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeContext.kt\nexpo/modules/kotlin/RuntimeContext\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n*L\n1#1,112:1\n14#2:113\n25#2:114\n27#3,3:115\n31#3:120\n1#4:118\n12#5:119\n*S KotlinDebug\n*F\n+ 1 RuntimeContext.kt\nexpo/modules/kotlin/RuntimeContext\n*L\n74#1:113\n74#1:114\n74#1:115,3\n74#1:120\n80#1:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020,J\u0008\u00102\u001a\u000203H\u0002R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020(X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*\u00a8\u00064"
    }
    d2 = {
        "Lexpo/modules/kotlin/RuntimeContext;",
        "",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "reactContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V",
        "getAppContext",
        "()Lexpo/modules/kotlin/AppContext;",
        "appContextHolder",
        "classRegistry",
        "Lexpo/modules/kotlin/sharedobjects/ClassRegistry;",
        "getClassRegistry$expo_modules_core_release",
        "()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;",
        "coreModule",
        "Lexpo/modules/kotlin/ModuleHolder;",
        "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
        "getCoreModule$expo_modules_core_release",
        "()Lexpo/modules/kotlin/ModuleHolder;",
        "jniDeallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "getJniDeallocator",
        "()Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "jsiContext",
        "Lexpo/modules/kotlin/jni/JSIContext;",
        "getJsiContext$expo_modules_core_release",
        "()Lexpo/modules/kotlin/jni/JSIContext;",
        "setJsiContext$expo_modules_core_release",
        "(Lexpo/modules/kotlin/jni/JSIContext;)V",
        "reactContext",
        "getReactContext",
        "()Lcom/facebook/react/bridge/ReactApplicationContext;",
        "getReactContextHolder",
        "()Ljava/lang/ref/WeakReference;",
        "registry",
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "getRegistry",
        "()Lexpo/modules/kotlin/ModuleRegistry;",
        "sharedObjectRegistry",
        "Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;",
        "getSharedObjectRegistry$expo_modules_core_release",
        "()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;",
        "deallocate",
        "",
        "eval",
        "Lexpo/modules/kotlin/jni/JavaScriptValue;",
        "source",
        "",
        "installJSIContext",
        "isJSIContextInitialized",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final appContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private final classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

.field private final coreModule:Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/ModuleHolder<",
            "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
            ">;"
        }
    .end annotation
.end field

.field private final jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

.field public jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

.field private final reactContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field

.field private final registry:Lexpo/modules/kotlin/ModuleRegistry;

.field private final sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/AppContext;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContextHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lexpo/modules/kotlin/RuntimeContext;->reactContextHolder:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-static {p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/RuntimeContext;->appContextHolder:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance p1, Lexpo/modules/kotlin/ModuleRegistry;

    invoke-static {p0}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-direct {p1, p2}, Lexpo/modules/kotlin/ModuleRegistry;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lexpo/modules/kotlin/RuntimeContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    .line 51
    move-object p1, p0

    check-cast p1, Lexpo/modules/kotlin/RuntimeContext;

    .line 52
    new-instance p1, Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-direct {p1}, Lexpo/modules/kotlin/defaultmodules/CoreModule;-><init>()V

    .line 53
    invoke-virtual {p1, p0}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->set_runtimeContext$expo_modules_core_release(Lexpo/modules/kotlin/RuntimeContext;)V

    .line 54
    new-instance p2, Lexpo/modules/kotlin/ModuleHolder;

    check-cast p1, Lexpo/modules/kotlin/modules/Module;

    invoke-direct {p2, p1}, Lexpo/modules/kotlin/ModuleHolder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 51
    iput-object p2, p0, Lexpo/modules/kotlin/RuntimeContext;->coreModule:Lexpo/modules/kotlin/ModuleHolder;

    .line 57
    new-instance p1, Lexpo/modules/kotlin/jni/JNIDeallocator;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, v0}, Lexpo/modules/kotlin/jni/JNIDeallocator;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/kotlin/RuntimeContext;->jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    .line 59
    new-instance p1, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    invoke-direct {p1, p0}, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;-><init>(Lexpo/modules/kotlin/RuntimeContext;)V

    iput-object p1, p0, Lexpo/modules/kotlin/RuntimeContext;->sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    .line 61
    new-instance p1, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    invoke-direct {p1}, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/RuntimeContext;->classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    return-void
.end method

.method private final isJSIContextInitialized()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final deallocate()V
    .locals 2

    .line 108
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->coreModule:Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/defaultmodules/CoreModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->set_runtimeContext$expo_modules_core_release(Lexpo/modules/kotlin/RuntimeContext;)V

    .line 109
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    invoke-virtual {v0}, Lexpo/modules/kotlin/jni/JNIDeallocator;->deallocate$expo_modules_core_release()Lkotlin/Unit;

    return-void
.end method

.method public final eval(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getJsiContext$expo_modules_core_release()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/jni/JSIContext;->evaluateScript(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;

    move-result-object p1

    return-object p1
.end method

.method public final getAppContext()Lexpo/modules/kotlin/AppContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->appContextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    return-object v0
.end method

.method public final getClassRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;
    .locals 1

    .line 61
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    return-object v0
.end method

.method public final getCoreModule$expo_modules_core_release()Lexpo/modules/kotlin/ModuleHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->coreModule:Lexpo/modules/kotlin/ModuleHolder;

    return-object v0
.end method

.method public final getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;
    .locals 1

    .line 57
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    return-object v0
.end method

.method public final getJsiContext$expo_modules_core_release()Lexpo/modules/kotlin/jni/JSIContext;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "jsiContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method public final getReactContextHolder()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->reactContextHolder:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getRegistry()Lexpo/modules/kotlin/ModuleRegistry;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    return-object v0
.end method

.method public final getSharedObjectRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;
    .locals 1

    .line 59
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    return-object v0
.end method

.method public final installJSIContext()V
    .locals 9

    const-string/jumbo v0, "\u274c Cannot install JSI interop: "

    const-string v1, "[ExpoModulesCore] "

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/kotlin/RuntimeContext;->isJSIContextInitialized()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 70
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string/jumbo v1, "\u26a0\ufe0f JSI interop was already installed"

    invoke-static {v0, v1, v4, v3, v4}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 71
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".installJSIContext"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 76
    :try_start_2
    new-instance v1, Lexpo/modules/kotlin/jni/JSIContext;

    invoke-direct {v1}, Lexpo/modules/kotlin/jni/JSIContext;-><init>()V

    invoke-virtual {p0, v1}, Lexpo/modules/kotlin/RuntimeContext;->setJsiContext$expo_modules_core_release(Lexpo/modules/kotlin/jni/JSIContext;)V

    .line 77
    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v5

    .line 80
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_3

    .line 81
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v1

    const-string/jumbo v2, "\u274c Cannot install JSI interop - JS runtime pointer is null"

    invoke-static {v1, v2, v4, v3, v4}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_2

    .line 80
    :cond_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 86
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->isBridgeless()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getJsiContext$expo_modules_core_release()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v4

    .line 90
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/CatalystInstance;->getRuntimeExecutor()Lcom/facebook/react/bridge/RuntimeExecutor;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v4, p0, v2, v3, v1}, Lexpo/modules/kotlin/jni/JSIContext;->installJSIForBridgeless(Lexpo/modules/kotlin/RuntimeContext;JLcom/facebook/react/bridge/RuntimeExecutor;)V

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getJsiContext$expo_modules_core_release()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v4

    .line 96
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/CatalystInstance;->getJSCallInvokerHolder()Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type com.facebook.react.turbomodule.core.CallInvokerHolderImpl"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    .line 93
    invoke-virtual {v4, p0, v2, v3, v1}, Lexpo/modules/kotlin/jni/JSIContext;->installJSI(Lexpo/modules/kotlin/RuntimeContext;JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;)V

    .line 100
    :goto_1
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v1

    const-string/jumbo v2, "\u2705 JSI interop was installed"

    invoke-virtual {v1, v2}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 102
    :try_start_3
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :try_start_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 105
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 68
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 120
    :try_start_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 68
    monitor-exit p0

    throw v0
.end method

.method public final setJsiContext$expo_modules_core_release(Lexpo/modules/kotlin/jni/JSIContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lexpo/modules/kotlin/RuntimeContext;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    return-void
.end method
