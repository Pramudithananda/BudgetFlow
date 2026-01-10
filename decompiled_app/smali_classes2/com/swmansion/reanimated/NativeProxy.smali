.class public Lcom/swmansion/reanimated/NativeProxy;
.super Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;
.source "NativeProxy.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final mInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/swmansion/worklets/WorkletsModule;)V
    .locals 9

    .line 37
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/nativeProxy/NativeProxyCommon;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    invoke-static {}, Lcom/swmansion/reanimated/ReactFeatureFlagsWrapper;->enableMountHooks()V

    const/4 v0, 0x2

    .line 41
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/facebook/react/fabric/FabricUIManager;

    .line 43
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    invoke-direct {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 45
    invoke-static {p1}, Lcom/swmansion/worklets/JSCallInvokerResolver;->getJSCallInvokerHolder(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    move-result-object v5

    .line 49
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/JavaScriptContextHolder;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v3

    .line 52
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->isBridgeless()Z

    move-result v7

    move-object v1, p0

    move-object v2, p2

    move-object v6, v0

    .line 47
    invoke-direct/range {v1 .. v8}, Lcom/swmansion/reanimated/NativeProxy;->initHybrid(Lcom/swmansion/worklets/WorkletsModule;JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;ZLcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/reanimated/NativeProxy;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 55
    invoke-virtual {p0, v0}, Lcom/swmansion/reanimated/NativeProxy;->prepareLayoutAnimations(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V

    .line 56
    invoke-virtual {p0}, Lcom/swmansion/reanimated/NativeProxy;->installJSIBindings()V

    return-void
.end method

.method public static createNativeMethodsHolder(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;
    .locals 0

    .line 93
    new-instance p0, Lcom/swmansion/reanimated/NativeProxy$1;

    invoke-direct {p0}, Lcom/swmansion/reanimated/NativeProxy$1;-><init>()V

    return-object p0
.end method

.method private native initHybrid(Lcom/swmansion/worklets/WorkletsModule;JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;ZLcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/jni/HybridData;
.end method

.method private native invalidateCpp()V
.end method


# virtual methods
.method protected getHybridData()Lcom/facebook/jni/HybridData;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object v0
.end method

.method protected invalidate()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mHybridData:Lcom/facebook/jni/HybridData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/swmansion/reanimated/NativeProxy;->invalidateCpp()V

    :cond_1
    return-void
.end method

.method public native isAnyHandlerWaitingForEvent(Ljava/lang/String;I)Z
.end method

.method public native performOperations()V
.end method
