.class public final Lexpo/modules/kotlin/jni/JSIContext;
.super Ljava/lang/Object;
.source "JSIContext.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/JSIContext$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSIContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSIContext.kt\nexpo/modules/kotlin/jni/JSIContext\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,195:1\n37#2,2:196\n26#3:198\n*S KotlinDebug\n*F\n+ 1 JSIContext.kt\nexpo/modules/kotlin/jni/JSIContext\n*L\n124#1:196,2\n124#1:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0001:B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\t\u0010\u000f\u001a\u00020\u0010H\u0086 J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\t\u0010\u0015\u001a\u00020\u000eH\u0086 J\u0011\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0086 J\u0008\u0010\u001a\u001a\u00020\u000eH\u0004J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u0019H\u0007J\u0013\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00190 H\u0007\u00a2\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u0004\u0018\u00010\u00102\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$H\u0007J\u0012\u0010%\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\t\u0010&\u001a\u00020\u0010H\u0086 J\u0010\u0010\'\u001a\u00020(2\u0006\u0010\u001e\u001a\u00020\u0019H\u0007J\t\u0010)\u001a\u00020\u0005H\u0082 J\u001e\u0010*\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020\u00082\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/J!\u0010*\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-2\u0006\u00100\u001a\u0002012\u0006\u0010.\u001a\u00020/H\u0082 J\u001e\u00102\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020\u00082\u0006\u0010,\u001a\u00020-2\u0006\u00103\u001a\u000204J!\u00102\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-2\u0006\u00100\u001a\u0002012\u0006\u00103\u001a\u000204H\u0082 J\u001c\u00105\u001a\u00020\u000e2\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$2\u0006\u00106\u001a\u00020\u0010H\u0007J\u0018\u00107\u001a\u00020\u000e2\u0006\u0010#\u001a\u0002082\u0006\u00106\u001a\u00020\u0010H\u0007J\u0019\u00109\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u00106\u001a\u00020\u0010H\u0086 R\u0010\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006;"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JSIContext;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "Ljava/lang/AutoCloseable;",
        "()V",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "runtimeContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/RuntimeContext;",
        "getRuntimeContextHolder",
        "()Ljava/lang/ref/WeakReference;",
        "setRuntimeContextHolder",
        "(Ljava/lang/ref/WeakReference;)V",
        "close",
        "",
        "createObject",
        "Lexpo/modules/kotlin/jni/JavaScriptObject;",
        "deallocate",
        "deleteSharedObject",
        "id",
        "",
        "drainJSEventLoop",
        "evaluateScript",
        "Lexpo/modules/kotlin/jni/JavaScriptValue;",
        "script",
        "",
        "finalize",
        "getCoreModuleObject",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "getJavaScriptModuleObject",
        "name",
        "getJavaScriptModulesName",
        "",
        "()[Ljava/lang/String;",
        "getJavascriptClass",
        "native",
        "Ljava/lang/Class;",
        "getSharedObject",
        "global",
        "hasModule",
        "",
        "initHybrid",
        "installJSI",
        "runtimeContext",
        "jsRuntimePointer",
        "",
        "jsInvokerHolder",
        "Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;",
        "jniDeallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "installJSIForBridgeless",
        "runtimeExecutor",
        "Lcom/facebook/react/bridge/RuntimeExecutor;",
        "registerClass",
        "js",
        "registerSharedObject",
        "",
        "setNativeStateForSharedObject",
        "Companion",
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

.field public static final Companion:Lexpo/modules/kotlin/jni/JSIContext$Companion;


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field public runtimeContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/RuntimeContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/jni/JSIContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/JSIContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/kotlin/jni/JSIContext;->Companion:Lexpo/modules/kotlin/jni/JSIContext$Companion;

    const/16 v0, 0x8

    sput v0, Lexpo/modules/kotlin/jni/JSIContext;->$stable:I

    .line 187
    const-string v0, "expo-modules-core"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0}, Lexpo/modules/kotlin/jni/JSIContext;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private final native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method private final native installJSI(JLexpo/modules/kotlin/jni/JNIDeallocator;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;)V
.end method

.method private final native installJSIForBridgeless(JLexpo/modules/kotlin/jni/JNIDeallocator;Lcom/facebook/react/bridge/RuntimeExecutor;)V
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->deallocate()V

    return-void
.end method

.method public final native createObject()Lexpo/modules/kotlin/jni/JavaScriptObject;
.end method

.method public deallocate()V
    .locals 1

    .line 182
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public final deleteSharedObject(I)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getSharedObjectRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectId;->constructor-impl(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;->delete-kyJHjyY$expo_modules_core_release(I)V

    :cond_0
    return-void
.end method

.method public final native drainJSEventLoop()V
.end method

.method public final native evaluateScript(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexpo/modules/kotlin/exception/JavaScriptEvaluateException;
        }
    .end annotation
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->deallocate()V

    return-void
.end method

.method public final getCoreModuleObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getCoreModule$expo_modules_core_release()Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getJsObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getJavaScriptModuleObject(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexpo/modules/kotlin/ModuleHolder;->getJsObject()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getJavaScriptModulesName()[Ljava/lang/String;
    .locals 3

    .line 124
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    .line 197
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public final getJavascriptClass(Ljava/lang/Class;)Lexpo/modules/kotlin/jni/JavaScriptObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lexpo/modules/kotlin/jni/JavaScriptObject;"
        }
    .end annotation

    const-string v0, "native"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getClassRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;->toJavaScriptObject$expo_modules_core_release(Ljava/lang/Class;)Lexpo/modules/kotlin/jni/JavaScriptObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getRuntimeContextHolder()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/RuntimeContext;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "runtimeContextHolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSharedObject(I)Lexpo/modules/kotlin/jni/JavaScriptObject;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 140
    :cond_0
    invoke-static {p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectId;->constructor-impl(I)I

    move-result p1

    invoke-static {p1, v0}, Lexpo/modules/kotlin/sharedobjects/SharedObjectId;->toJavaScriptObjectNull-impl(ILexpo/modules/kotlin/RuntimeContext;)Lexpo/modules/kotlin/jni/JavaScriptObject;

    move-result-object p1

    return-object p1
.end method

.method public final native global()Lexpo/modules/kotlin/jni/JavaScriptObject;
.end method

.method public final hasModule(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->hasModule(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final installJSI(Lexpo/modules/kotlin/RuntimeContext;JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;)V
    .locals 1

    const-string v0, "runtimeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsInvokerHolder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/jni/JSIContext;->setRuntimeContextHolder(Ljava/lang/ref/WeakReference;)V

    .line 41
    invoke-virtual {p1}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object p1

    .line 39
    invoke-direct {p0, p2, p3, p1, p4}, Lexpo/modules/kotlin/jni/JSIContext;->installJSI(JLexpo/modules/kotlin/jni/JNIDeallocator;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;)V

    return-void
.end method

.method public final installJSIForBridgeless(Lexpo/modules/kotlin/RuntimeContext;JLcom/facebook/react/bridge/RuntimeExecutor;)V
    .locals 1

    const-string v0, "runtimeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/jni/JSIContext;->setRuntimeContextHolder(Ljava/lang/ref/WeakReference;)V

    .line 54
    invoke-virtual {p1}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object p1

    .line 52
    invoke-direct {p0, p2, p3, p1, p4}, Lexpo/modules/kotlin/jni/JSIContext;->installJSIForBridgeless(JLexpo/modules/kotlin/jni/JNIDeallocator;Lcom/facebook/react/bridge/RuntimeExecutor;)V

    return-void
.end method

.method public final registerClass(Ljava/lang/Class;Lexpo/modules/kotlin/jni/JavaScriptObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lexpo/modules/kotlin/jni/JavaScriptObject;",
            ")V"
        }
    .end annotation

    const-string v0, "native"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "js"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getClassRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;->add$expo_modules_core_release(Ljava/lang/Class;Lexpo/modules/kotlin/jni/JavaScriptObject;)V

    :cond_0
    return-void
.end method

.method public final registerSharedObject(Ljava/lang/Object;Lexpo/modules/kotlin/jni/JavaScriptObject;)V
    .locals 1

    const-string v0, "native"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "js"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JSIContext;->getRuntimeContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getSharedObjectRegistry$expo_modules_core_release()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lexpo/modules/kotlin/sharedobjects/SharedObject;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;->add-5WKnsLU$expo_modules_core_release(Lexpo/modules/kotlin/sharedobjects/SharedObject;Lexpo/modules/kotlin/jni/JavaScriptObject;)I

    move-result p1

    invoke-static {p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectId;->box-impl(I)Lexpo/modules/kotlin/sharedobjects/SharedObjectId;

    :cond_0
    return-void
.end method

.method public final native setNativeStateForSharedObject(ILexpo/modules/kotlin/jni/JavaScriptObject;)V
.end method

.method public final setRuntimeContextHolder(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/RuntimeContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lexpo/modules/kotlin/jni/JSIContext;->runtimeContextHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method
