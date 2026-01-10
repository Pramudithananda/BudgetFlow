.class public final Lcom/facebook/react/modules/devloading/DevLoadingModule;
.super Lcom/facebook/fbreact/specs/NativeDevLoadingViewSpec;
.source "DevLoadingModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "DevLoadingView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/devloading/DevLoadingModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J)\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/react/modules/devloading/DevLoadingModule;",
        "Lcom/facebook/fbreact/specs/NativeDevLoadingViewSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "devLoadingViewManager",
        "Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;",
        "jsExceptionHandler",
        "Lcom/facebook/react/bridge/JSExceptionHandler;",
        "hide",
        "",
        "showMessage",
        "message",
        "",
        "color",
        "",
        "backgroundColor",
        "(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/facebook/react/modules/devloading/DevLoadingModule$Companion;

.field public static final NAME:Ljava/lang/String; = "DevLoadingView"


# instance fields
.field private devLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

.field private final jsExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;


# direct methods
.method public static synthetic $r8$lambda$FnzQy6qtf_AhVjWZs56ySTr2iNs(Lcom/facebook/react/modules/devloading/DevLoadingModule;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/modules/devloading/DevLoadingModule;->showMessage$lambda$0(Lcom/facebook/react/modules/devloading/DevLoadingModule;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UUQ6fBF956IQcAqNYiskn34n2zE(Lcom/facebook/react/modules/devloading/DevLoadingModule;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/react/modules/devloading/DevLoadingModule;->hide$lambda$1(Lcom/facebook/react/modules/devloading/DevLoadingModule;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/modules/devloading/DevLoadingModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/devloading/DevLoadingModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/modules/devloading/DevLoadingModule;->Companion:Lcom/facebook/react/modules/devloading/DevLoadingModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeDevLoadingViewSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 24
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSExceptionHandler()Lcom/facebook/react/bridge/JSExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/modules/devloading/DevLoadingModule;->jsExceptionHandler:Lcom/facebook/react/bridge/JSExceptionHandler;

    if-eqz p1, :cond_0

    .line 28
    instance-of v0, p1, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-virtual {p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getDevLoadingViewManager()Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/modules/devloading/DevLoadingModule;->devLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    :cond_0
    return-void
.end method

.method private static final hide$lambda$1(Lcom/facebook/react/modules/devloading/DevLoadingModule;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/facebook/react/modules/devloading/DevLoadingModule;->devLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;->hide()V

    :cond_0
    return-void
.end method

.method private static final showMessage$lambda$0(Lcom/facebook/react/modules/devloading/DevLoadingModule;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/facebook/react/modules/devloading/DevLoadingModule;->devLoadingViewManager:Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;->showMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 38
    new-instance v0, Lcom/facebook/react/modules/devloading/DevLoadingModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/devloading/DevLoadingModule$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/modules/devloading/DevLoadingModule;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    const-string p2, "message"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p2, Lcom/facebook/react/modules/devloading/DevLoadingModule$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/modules/devloading/DevLoadingModule$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/modules/devloading/DevLoadingModule;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method
