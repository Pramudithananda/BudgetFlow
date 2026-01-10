.class public Lcom/swmansion/reanimated/ReanimatedModule;
.super Lcom/swmansion/reanimated/NativeReanimatedModuleSpec;
.source "ReanimatedModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/uimanager/UIManagerModuleListener;
.implements Lcom/facebook/react/bridge/UIManagerListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ReanimatedModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;
    }
.end annotation


# instance fields
.field private mNodesManager:Lcom/swmansion/reanimated/NodesManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mUnsubscribe:Ljava/lang/Runnable;

.field private final mWorkletsModule:Lcom/swmansion/worklets/WorkletsModule;


# direct methods
.method public static synthetic $r8$lambda$68xcOFrUiruAQ3Gxn5e0_HeLpv8(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule;->lambda$willDispatchViewUpdates$5(Ljava/util/ArrayList;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ETC9vLwCZ92Jp3Qiwi3LNu8yF-c(Lcom/swmansion/reanimated/ReanimatedModule;Lcom/facebook/react/bridge/UIManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/ReanimatedModule;->lambda$initialize$2(Lcom/facebook/react/bridge/UIManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YO4Eu81C23eCg4BdusLqkGMBRUA(Lcom/swmansion/reanimated/ReanimatedModule;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/ReanimatedModule;->lambda$initialize$4(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uYjji1cSZxBc-lu6sFPyrwSSLLM(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule;->lambda$willDispatchViewUpdates$0(Ljava/util/ArrayList;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/NativeReanimatedModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mUnsubscribe:Ljava/lang/Runnable;

    .line 70
    const-class v0, Lcom/swmansion/worklets/WorkletsModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/swmansion/worklets/WorkletsModule;

    iput-object p1, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mWorkletsModule:Lcom/swmansion/worklets/WorkletsModule;

    return-void
.end method

.method private synthetic lambda$initialize$2(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/facebook/react/fabric/FabricUIManager;

    invoke-virtual {p1, p0}, Lcom/facebook/react/fabric/FabricUIManager;->removeUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V

    return-void
.end method

.method private synthetic lambda$initialize$3(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 0

    .line 97
    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/UIManagerModule;->removeUIManagerListener(Lcom/facebook/react/uimanager/UIManagerModuleListener;)V

    return-void
.end method

.method private synthetic lambda$initialize$4(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 101
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method static synthetic lambda$new$1()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$willDispatchViewUpdates$0(Ljava/util/ArrayList;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object p2

    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;

    .line 49
    invoke-interface {v0, p2}, Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;->execute(Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$willDispatchViewUpdates$5(Ljava/util/ArrayList;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object p2

    .line 135
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;

    .line 136
    invoke-interface {v0, p2}, Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;->execute(Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0

    return-void
.end method

.method public didMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0

    return-void
.end method

.method public didScheduleMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0

    return-void
.end method

.method public getNodesManager()Lcom/swmansion/reanimated/NodesManager;
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mWorkletsModule:Lcom/swmansion/worklets/WorkletsModule;

    invoke-direct {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/swmansion/worklets/WorkletsModule;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    return-object v0
.end method

.method public getWorkletsModule()Lcom/swmansion/worklets/WorkletsModule;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mWorkletsModule:Lcom/swmansion/worklets/WorkletsModule;

    return-object v0
.end method

.method public initialize()V
    .locals 6

    .line 79
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getFabricUIManager()Lcom/facebook/react/bridge/UIManager;

    move-result-object v1

    .line 83
    instance-of v2, v1, Lcom/facebook/react/fabric/FabricUIManager;

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/fabric/FabricUIManager;

    invoke-virtual {v2, p0}, Lcom/facebook/react/fabric/FabricUIManager;->addUIManagerEventListener(Lcom/facebook/react/bridge/UIManagerListener;)V

    const/4 v2, 0x2

    .line 85
    new-array v3, v2, [Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mUnsubscribe:Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1}, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda3;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;Lcom/facebook/react/bridge/UIManager;)V

    const/4 v1, 0x1

    aput-object v4, v3, v1

    .line 86
    invoke-static {v3}, Lcom/swmansion/reanimated/Utils;->combineRunnables([Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    iput-object v3, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mUnsubscribe:Ljava/lang/Runnable;

    .line 99
    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 100
    new-array v2, v2, [Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mUnsubscribe:Ljava/lang/Runnable;

    aput-object v3, v2, v5

    new-instance v3, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda4;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    aput-object v3, v2, v1

    .line 101
    invoke-static {v2}, Lcom/swmansion/reanimated/Utils;->combineRunnables([Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mUnsubscribe:Ljava/lang/Runnable;

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[Reanimated] Failed to obtain instance of FabricUIManager."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public installTurboModule()Z
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaScriptContextHolder;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    .line 158
    sget-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/swmansion/reanimated/NodesManager;->initWithContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return v1

    .line 162
    :cond_1
    const-string v0, "[REANIMATED]"

    const-string v1, "Unable to create Reanimated Native Module. You can ignore this message if you are using Chrome Debugger now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public invalidate()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/swmansion/reanimated/NativeReanimatedModuleSpec;->invalidate()V

    .line 183
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->invalidate()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mUnsubscribe:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->onHostPause()V

    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->onHostResume()V

    :cond_0
    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 43
    instance-of v1, p1, Lcom/facebook/react/fabric/FabricUIManager;

    if-eqz v1, :cond_1

    .line 44
    check-cast p1, Lcom/facebook/react/fabric/FabricUIManager;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;)V

    .line 45
    invoke-virtual {p1, v1}, Lcom/facebook/react/fabric/FabricUIManager;->addUIBlock(Lcom/facebook/react/fabric/interop/UIBlock;)V

    return-void

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "[Reanimated] Failed to obtain instance of FabricUIManager."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 132
    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/swmansion/reanimated/ReanimatedModule$$ExternalSyntheticLambda1;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public willMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 0

    return-void
.end method
