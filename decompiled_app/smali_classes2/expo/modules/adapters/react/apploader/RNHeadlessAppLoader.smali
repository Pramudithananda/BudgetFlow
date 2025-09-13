.class public final Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;
.super Ljava/lang/Object;
.source "RNHeadlessAppLoader.kt"

# interfaces
.implements Lexpo/modules/apploader/HeadlessAppLoader;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0017J\u0012\u0010\t\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J4\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;",
        "Lexpo/modules/apploader/HeadlessAppLoader;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "invalidateApp",
        "",
        "appScopeKey",
        "",
        "isRunning",
        "loadApp",
        "",
        "params",
        "Lexpo/modules/apploader/HeadlessAppLoader$Params;",
        "alreadyRunning",
        "Ljava/lang/Runnable;",
        "callback",
        "Lexpo/modules/core/interfaces/Consumer;",
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
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$I1gNFKnIq-2v6U_7SbXlALvy6Ng(Lcom/facebook/react/ReactHost;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;->loadApp$lambda$0(Lcom/facebook/react/ReactHost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ivlo19oq-dca6TB_oB1dBOJsfQg(Lcom/facebook/react/ReactHost;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;->invalidateApp$lambda$2(Lcom/facebook/react/ReactHost;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader;->context:Landroid/content/Context;

    return-void
.end method

.method private static final invalidateApp$lambda$2(Lcom/facebook/react/ReactHost;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$reactHost"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p0}, Lcom/facebook/react/ReactHost;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 84
    const-string v0, "Closing headless task app"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/facebook/react/ReactHost;->destroy(Ljava/lang/String;Ljava/lang/Exception;)Lcom/facebook/react/interfaces/TaskInterface;

    .line 86
    :cond_0
    sget-object p0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->INSTANCE:Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;

    invoke-virtual {p0, p1}, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->notifyAppDestroyed(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final invalidateApp$lambda$3(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$reactInstanceManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->destroy()V

    .line 101
    :cond_0
    sget-object p0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->INSTANCE:Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;

    invoke-virtual {p0, p1}, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->notifyAppDestroyed(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadApp$lambda$0(Lcom/facebook/react/ReactHost;)V
    .locals 1

    const-string v0, "$reactHost"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/facebook/react/ReactHost;->start()Lcom/facebook/react/interfaces/TaskInterface;

    return-void
.end method

.method private static final loadApp$lambda$1(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    return-void
.end method


# virtual methods
.method public invalidateApp(Ljava/lang/String;)Z
    .locals 3

    .line 74
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    return v1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.ReactApplication"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/ReactApplication;

    invoke-interface {v1}, Lcom/facebook/react/ReactApplication;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, p1}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/ReactHost;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your application does not have a valid reactHost"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return v1
.end method

.method public isRunning(Ljava/lang/String;)Z
    .locals 1

    .line 113
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public loadApp(Landroid/content/Context;Lexpo/modules/apploader/HeadlessAppLoader$Params;Ljava/lang/Runnable;Lexpo/modules/core/interfaces/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/apploader/HeadlessAppLoader$Params;",
            "Ljava/lang/Runnable;",
            "Lexpo/modules/core/interfaces/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 22
    invoke-virtual {p2}, Lexpo/modules/apploader/HeadlessAppLoader$Params;->getAppScopeKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/ReactApplication;

    if-eqz v0, :cond_3

    .line 27
    invoke-static {}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoaderKt;->access$getAppRecords$p()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lexpo/modules/apploader/HeadlessAppLoader$Params;->getAppScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.facebook.react.ReactApplication"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/facebook/react/ReactApplication;

    invoke-interface {p3}, Lcom/facebook/react/ReactApplication;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 33
    new-instance v0, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$loadApp$1;

    invoke-direct {v0, p3, p2, p4}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$loadApp$1;-><init>(Lcom/facebook/react/ReactHost;Lexpo/modules/apploader/HeadlessAppLoader$Params;Lexpo/modules/core/interfaces/Consumer;)V

    check-cast v0, Lcom/facebook/react/ReactInstanceEventListener;

    .line 32
    invoke-interface {p3, v0}, Lcom/facebook/react/ReactHost;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 43
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lexpo/modules/adapters/react/apploader/RNHeadlessAppLoader$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/ReactHost;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Your application does not have a valid reactHost"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p3, :cond_2

    .line 65
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Your application must implement ReactApplication"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Params must be set with appScopeKey!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
