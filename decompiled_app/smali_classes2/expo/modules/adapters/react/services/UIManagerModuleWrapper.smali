.class public Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;
.super Ljava/lang/Object;
.source "UIManagerModuleWrapper.java"

# interfaces
.implements Lexpo/modules/core/interfaces/ActivityProvider;
.implements Lexpo/modules/core/interfaces/InternalModule;
.implements Lexpo/modules/core/interfaces/JavaScriptContextProvider;
.implements Lexpo/modules/core/interfaces/services/UIManager;


# instance fields
.field private mActivityEventListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lexpo/modules/core/interfaces/ActivityEventListener;",
            "Lcom/facebook/react/bridge/ActivityEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lexpo/modules/core/interfaces/LifecycleEventListener;",
            "Lcom/facebook/react/bridge/LifecycleEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mLifecycleListenersMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mActivityEventListenersMap:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method

.method private addToUIManager(Lexpo/modules/adapters/react/services/UIBlockInterface;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 65
    check-cast v0, Lcom/facebook/react/fabric/FabricUIManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/FabricUIManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/FabricUIManager;->addUIBlock(Lcom/facebook/react/fabric/interop/UIBlock;)V

    return-void
.end method


# virtual methods
.method public addUIBlock(ILexpo/modules/core/interfaces/services/UIManager$UIBlock;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lexpo/modules/core/interfaces/services/UIManager$UIBlock<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    new-instance v0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;-><init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;ILexpo/modules/core/interfaces/services/UIManager$UIBlock;Ljava/lang/Class;)V

    .line 105
    invoke-direct {p0, v0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->addToUIManager(Lexpo/modules/adapters/react/services/UIBlockInterface;)V

    return-void
.end method

.method public addUIBlock(Lexpo/modules/core/interfaces/services/UIManager$GroupUIBlock;)V
    .locals 1

    .line 111
    new-instance v0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;

    invoke-direct {v0, p0, p1}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;-><init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;Lexpo/modules/core/interfaces/services/UIManager$GroupUIBlock;)V

    .line 141
    invoke-direct {p0, v0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->addToUIManager(Lexpo/modules/adapters/react/services/UIBlockInterface;)V

    return-void
.end method

.method protected getContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getExportedInterfaces()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 55
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lexpo/modules/core/interfaces/ActivityProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lexpo/modules/core/interfaces/JavaScriptContextProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lexpo/modules/core/interfaces/services/UIManager;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getJSCallInvokerHolder()Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;
    .locals 1

    .line 271
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->getJSCallInvokerHolder()Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    return-object v0
.end method

.method public getJavaScriptContextRef()J
    .locals 2

    .line 265
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public onDestroy()V
    .locals 3

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mLifecycleListenersMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 218
    invoke-interface {v1}, Lcom/facebook/react/bridge/LifecycleEventListener;->onHostDestroy()V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mLifecycleListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 222
    iget-object v2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v2, v1}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    goto :goto_1

    .line 224
    :cond_1
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mLifecycleListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public registerActivityEventListener(Lexpo/modules/core/interfaces/ActivityEventListener;)V
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mActivityEventListenersMap:Ljava/util/Map;

    new-instance v2, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$4;

    invoke-direct {v2, p0, v0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$4;-><init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;Ljava/lang/ref/WeakReference;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mActivityEventListenersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method public registerLifecycleEventListener(Lexpo/modules/core/interfaces/LifecycleEventListener;)V
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 185
    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mLifecycleListenersMap:Ljava/util/Map;

    new-instance v2, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$3;

    invoke-direct {v2, p0, v0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$3;-><init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;Ljava/lang/ref/WeakReference;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mLifecycleListenersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public resolveView(I)Landroid/view/View;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public runOnClientCodeQueueThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->isOnJSQueueThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->isOnNativeModulesQueueThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public runOnUiQueueThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->isOnUiQueueThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public unregisterActivityEventListener(Lexpo/modules/core/interfaces/ActivityEventListener;)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mActivityEventListenersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->removeActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 261
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mActivityEventListenersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterLifecycleEventListener(Lexpo/modules/core/interfaces/LifecycleEventListener;)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->getContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mLifecycleListenersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 230
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->mLifecycleListenersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
