.class Lcom/facebook/react/runtime/BridgelessDevSupportManager;
.super Lcom/facebook/react/devsupport/DevSupportManagerBase;
.source "BridgelessDevSupportManager.java"


# instance fields
.field private final mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmReactHost(Lcom/facebook/react/runtime/BridgelessDevSupportManager;)Lcom/facebook/react/runtime/ReactHostImpl;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/runtime/BridgelessDevSupportManager;->mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/runtime/ReactHostImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .line 42
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    invoke-static {p1}, Lcom/facebook/react/runtime/BridgelessDevSupportManager;->createInstanceDevHelper(Lcom/facebook/react/runtime/ReactHostImpl;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p3

    .line 41
    invoke-direct/range {v0 .. v11}, Lcom/facebook/react/devsupport/DevSupportManagerBase;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;)V

    .line 53
    iput-object p1, p0, Lcom/facebook/react/runtime/BridgelessDevSupportManager;->mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    return-void
.end method

.method private static createInstanceDevHelper(Lcom/facebook/react/runtime/ReactHostImpl;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .locals 1

    .line 106
    new-instance v0, Lcom/facebook/react/runtime/BridgelessDevSupportManager$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/runtime/BridgelessDevSupportManager$2;-><init>(Lcom/facebook/react/runtime/ReactHostImpl;)V

    return-object v0
.end method


# virtual methods
.method protected getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "Bridgeless"

    return-object v0
.end method

.method public handleReloadJS()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 101
    invoke-virtual {p0}, Lcom/facebook/react/runtime/BridgelessDevSupportManager;->hideRedboxDialog()V

    .line 102
    iget-object v0, p0, Lcom/facebook/react/runtime/BridgelessDevSupportManager;->mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    const-string v1, "BridgelessDevSupportManager.handleReloadJS()"

    invoke-virtual {v0, v1}, Lcom/facebook/react/runtime/ReactHostImpl;->reload(Ljava/lang/String;)Lcom/facebook/react/interfaces/TaskInterface;

    return-void
.end method

.method public loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/runtime/BridgelessDevSupportManager$1;-><init>(Lcom/facebook/react/runtime/BridgelessDevSupportManager;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/runtime/BridgelessDevSupportManager;->fetchSplitBundleAndCreateBundleLoader(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    return-void
.end method
