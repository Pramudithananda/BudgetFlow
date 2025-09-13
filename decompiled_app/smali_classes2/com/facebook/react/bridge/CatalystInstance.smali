.class public interface abstract Lcom/facebook/react/bridge/CatalystInstance;
.super Ljava/lang/Object;
.source "CatalystInstance.kt"

# interfaces
.implements Lcom/facebook/react/bridge/MemoryPressureListener;
.implements Lcom/facebook/react/bridge/JSInstance;
.implements Lcom/facebook/react/bridge/JSBundleLoaderDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H&J\"\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u00020\'2\u0006\u00100\u001a\u00020\'2\u0008\u00101\u001a\u0004\u0018\u000102H\'J\u0008\u00103\u001a\u00020+H&J\u0010\u00104\u001a\u00020+2\u0006\u00105\u001a\u000206H&J\n\u00107\u001a\u0004\u0018\u000108H&J\'\u00109\u001a\u0004\u0018\u0001H:\"\u0008\u0008\u0000\u0010:*\u00020;2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u0002H:0=H&\u00a2\u0006\u0002\u0010>J\'\u0010?\u001a\u0004\u0018\u0001H:\"\u0008\u0008\u0000\u0010:*\u00020\u00172\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u0002H:0=H&\u00a2\u0006\u0002\u0010AJ\u0012\u0010?\u001a\u0004\u0018\u00010\u00172\u0006\u0010B\u001a\u00020\'H&J \u0010C\u001a\u00020\u0005\"\u0008\u0008\u0000\u0010:*\u00020\u00172\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u0002H:0=H&J\u0008\u0010D\u001a\u00020\u0005H&J\u0008\u0010E\u001a\u00020+H\'J\u0018\u0010F\u001a\u00020+2\u0006\u0010G\u001a\u00020H2\u0006\u00101\u001a\u00020IH\'J\u0018\u0010J\u001a\u00020+2\u0006\u0010K\u001a\u00020H2\u0006\u0010L\u001a\u00020\'H&J\u0010\u0010M\u001a\u00020+2\u0006\u0010,\u001a\u00020-H&J\u0008\u0010N\u001a\u00020+H&J\u0010\u0010O\u001a\u00020+2\u0006\u0010P\u001a\u000208H&J\u0018\u0010Q\u001a\u00020+2\u0006\u0010R\u001a\u00020\'2\u0006\u0010S\u001a\u00020\'H\'J\u0010\u0010T\u001a\u00020+2\u0006\u0010U\u001a\u00020VH&R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0012X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u001bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u0004\u0018\u00010#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u0004\u0018\u00010\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006W\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/facebook/react/bridge/CatalystInstance;",
        "Lcom/facebook/react/bridge/MemoryPressureListener;",
        "Lcom/facebook/react/bridge/JSInstance;",
        "Lcom/facebook/react/bridge/JSBundleLoaderDelegate;",
        "isDestroyed",
        "",
        "()Z",
        "javaScriptContextHolder",
        "Lcom/facebook/react/bridge/JavaScriptContextHolder;",
        "getJavaScriptContextHolder",
        "()Lcom/facebook/react/bridge/JavaScriptContextHolder;",
        "jsCallInvokerHolder",
        "Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;",
        "getJSCallInvokerHolder$annotations",
        "()V",
        "getJSCallInvokerHolder",
        "()Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;",
        "nativeMethodCallInvokerHolder",
        "Lcom/facebook/react/turbomodule/core/interfaces/NativeMethodCallInvokerHolder;",
        "getNativeMethodCallInvokerHolder",
        "()Lcom/facebook/react/turbomodule/core/interfaces/NativeMethodCallInvokerHolder;",
        "nativeModules",
        "",
        "Lcom/facebook/react/bridge/NativeModule;",
        "getNativeModules",
        "()Ljava/util/Collection;",
        "reactQueueConfiguration",
        "Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;",
        "getReactQueueConfiguration",
        "()Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;",
        "runtimeExecutor",
        "Lcom/facebook/react/bridge/RuntimeExecutor;",
        "getRuntimeExecutor",
        "()Lcom/facebook/react/bridge/RuntimeExecutor;",
        "runtimeScheduler",
        "Lcom/facebook/react/bridge/RuntimeScheduler;",
        "getRuntimeScheduler",
        "()Lcom/facebook/react/bridge/RuntimeScheduler;",
        "sourceURL",
        "",
        "getSourceURL",
        "()Ljava/lang/String;",
        "addBridgeIdleDebugListener",
        "",
        "listener",
        "Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;",
        "callFunction",
        "module",
        "method",
        "arguments",
        "Lcom/facebook/react/bridge/NativeArray;",
        "destroy",
        "extendNativeModules",
        "modules",
        "Lcom/facebook/react/bridge/NativeModuleRegistry;",
        "getFabricUIManager",
        "Lcom/facebook/react/bridge/UIManager;",
        "getJSModule",
        "T",
        "Lcom/facebook/react/bridge/JavaScriptModule;",
        "jsInterface",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;",
        "getNativeModule",
        "nativeModuleInterface",
        "(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;",
        "moduleName",
        "hasNativeModule",
        "hasRunJSBundle",
        "initialize",
        "invokeCallback",
        "callbackID",
        "",
        "Lcom/facebook/react/bridge/NativeArrayInterface;",
        "registerSegment",
        "segmentId",
        "path",
        "removeBridgeIdleDebugListener",
        "runJSBundle",
        "setFabricUIManager",
        "fabricUIManager",
        "setGlobalVariable",
        "propName",
        "jsonValue",
        "setTurboModuleRegistry",
        "turboModuleRegistry",
        "Lcom/facebook/react/internal/turbomodule/core/interfaces/TurboModuleRegistry;",
        "ReactAndroid_release"
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
.method public static synthetic getJSCallInvokerHolder$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract addBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)V
.end method

.method public abstract callFunction(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/NativeArray;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract extendNativeModules(Lcom/facebook/react/bridge/NativeModuleRegistry;)V
.end method

.method public abstract getFabricUIManager()Lcom/facebook/react/bridge/UIManager;
.end method

.method public abstract getJSCallInvokerHolder()Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;
    .annotation runtime Lkotlin/Deprecated;
        message = "Use ReactContext.getJSCallInvokerHolder instead"
    .end annotation
.end method

.method public abstract getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;
    .annotation runtime Lkotlin/Deprecated;
        message = "Use getRuntimeExecutor() instead."
    .end annotation
.end method

.method public abstract getNativeMethodCallInvokerHolder()Lcom/facebook/react/turbomodule/core/interfaces/NativeMethodCallInvokerHolder;
.end method

.method public abstract getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getNativeModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
.end method

.method public abstract getNativeModules()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReactQueueConfiguration()Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;
.end method

.method public abstract getRuntimeExecutor()Lcom/facebook/react/bridge/RuntimeExecutor;
.end method

.method public abstract getRuntimeScheduler()Lcom/facebook/react/bridge/RuntimeScheduler;
.end method

.method public abstract getSourceURL()Ljava/lang/String;
.end method

.method public abstract hasNativeModule(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract hasRunJSBundle()Z
.end method

.method public abstract initialize()V
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract invokeCallback(ILcom/facebook/react/bridge/NativeArrayInterface;)V
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract registerSegment(ILjava/lang/String;)V
.end method

.method public abstract removeBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)V
.end method

.method public abstract runJSBundle()V
.end method

.method public abstract setFabricUIManager(Lcom/facebook/react/bridge/UIManager;)V
.end method

.method public abstract setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract setTurboModuleRegistry(Lcom/facebook/react/internal/turbomodule/core/interfaces/TurboModuleRegistry;)V
.end method
