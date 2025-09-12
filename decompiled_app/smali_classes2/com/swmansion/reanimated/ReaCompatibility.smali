.class Lcom/swmansion/reanimated/ReaCompatibility;
.super Ljava/lang/Object;
.source "ReaCompatibility.java"


# instance fields
.field private fabricUIManager:Lcom/facebook/react/fabric/FabricUIManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 14
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/fabric/FabricUIManager;

    iput-object p1, p0, Lcom/swmansion/reanimated/ReaCompatibility;->fabricUIManager:Lcom/facebook/react/fabric/FabricUIManager;

    return-void
.end method


# virtual methods
.method public registerFabricEventListener(Lcom/swmansion/reanimated/NodesManager;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/swmansion/reanimated/ReaCompatibility;->fabricUIManager:Lcom/facebook/react/fabric/FabricUIManager;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/facebook/react/fabric/FabricUIManager;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V

    :cond_0
    return-void
.end method

.method public unregisterFabricEventListener(Lcom/swmansion/reanimated/NodesManager;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/swmansion/reanimated/ReaCompatibility;->fabricUIManager:Lcom/facebook/react/fabric/FabricUIManager;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/facebook/react/fabric/FabricUIManager;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->removeListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V

    :cond_0
    return-void
.end method
