.class public final Lcom/facebook/react/views/modal/ReactModalHostManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactModalHostManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTModalHostView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/modal/ReactModalHostManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/facebook/react/views/modal/ReactModalHostView;",
        ">;",
        "Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface<",
        "Lcom/facebook/react/views/modal/ReactModalHostView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0001,B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0014J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0014J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0016J\u0014\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0002H\u0014J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0018\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0017H\u0017J\u001a\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0010H\u0017J\u0018\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0017H\u0017J\u0018\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u001dH\u0017J\u001a\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0010H\u0017J\u0018\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u0017H\u0017J\u001a\u0010!\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\"H\u0017J\u0018\u0010#\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0017H\u0017J\u0018\u0010%\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0017H\u0017J\"\u0010\'\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/facebook/react/views/modal/ReactModalHostManager;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Lcom/facebook/react/views/modal/ReactModalHostView;",
        "Lcom/facebook/react/viewmanagers/ModalHostViewManagerInterface;",
        "()V",
        "delegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "addEventEmitters",
        "",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "view",
        "createViewInstance",
        "getDelegate",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "",
        "",
        "getName",
        "onAfterUpdateTransaction",
        "onDropViewInstance",
        "setAnimated",
        "value",
        "",
        "setAnimationType",
        "animationType",
        "setHardwareAccelerated",
        "hardwareAccelerated",
        "setIdentifier",
        "",
        "setPresentationStyle",
        "setStatusBarTranslucent",
        "statusBarTranslucent",
        "setSupportedOrientations",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setTransparent",
        "transparent",
        "setVisible",
        "visible",
        "updateState",
        "props",
        "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
        "stateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
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
.field public static final Companion:Lcom/facebook/react/views/modal/ReactModalHostManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "RCTModalHostView"


# instance fields
.field private final delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/facebook/react/views/modal/ReactModalHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CwoSwsmd1Ru4GQuLrS6NdEUfLAY(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/views/modal/ReactModalHostManager;->addEventEmitters$lambda$1(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PpPssf0KXU6h3VBRsalstnE8fWY(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/views/modal/ReactModalHostManager;->addEventEmitters$lambda$0(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/modal/ReactModalHostManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/modal/ReactModalHostManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/modal/ReactModalHostManager;->Companion:Lcom/facebook/react/views/modal/ReactModalHostManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 28
    new-instance v0, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/ModalHostViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    iput-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method

.method private static final addEventEmitters$lambda$0(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p3, "$reactContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance p3, Lcom/facebook/react/views/modal/RequestCloseEvent;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2}, Lcom/facebook/react/views/modal/ReactModalHostView;->getId()I

    move-result p2

    invoke-direct {p3, p1, p2}, Lcom/facebook/react/views/modal/RequestCloseEvent;-><init>(II)V

    check-cast p3, Lcom/facebook/react/uimanager/events/Event;

    .line 95
    invoke-interface {p0, p3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private static final addEventEmitters$lambda$1(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p3, "$reactContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance p3, Lcom/facebook/react/views/modal/ShowEvent;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2}, Lcom/facebook/react/views/modal/ReactModalHostView;->getId()I

    move-result p2

    invoke-direct {p3, p1, p2}, Lcom/facebook/react/views/modal/ShowEvent;-><init>(II)V

    check-cast p3, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {p0, p3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;)V
    .locals 2

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p2}, Lcom/facebook/react/views/modal/ReactModalHostView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lcom/facebook/react/views/modal/ReactModalHostManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;)V

    invoke-virtual {p2, v1}, Lcom/facebook/react/views/modal/ReactModalHostView;->setOnRequestCloseListener(Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;)V

    .line 98
    new-instance v1, Lcom/facebook/react/views/modal/ReactModalHostManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/modal/ReactModalHostView;)V

    invoke-virtual {p2, v1}, Lcom/facebook/react/views/modal/ReactModalHostView;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 101
    invoke-virtual {p2, v0}, Lcom/facebook/react/views/modal/ReactModalHostView;->setEventDispatcher(Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/modal/ReactModalHostManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/modal/ReactModalHostView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/modal/ReactModalHostView;
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method public getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/facebook/react/views/modal/ReactModalHostView;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-super {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 107
    :cond_0
    const-string v1, "onRequestClose"

    const-string v2, "registrationName"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topRequestClose"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "onShow"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topShow"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "onDismiss"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topDismiss"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "onOrientationChange"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topOrientationChange"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "RCTModalHostView"

    return-object v0
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/modal/ReactModalHostManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/modal/ReactModalHostView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/modal/ReactModalHostView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 115
    invoke-virtual {p1}, Lcom/facebook/react/views/modal/ReactModalHostView;->showOrUpdate()V

    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/modal/ReactModalHostManager;->onDropViewInstance(Lcom/facebook/react/views/modal/ReactModalHostView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/facebook/react/views/modal/ReactModalHostView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    .line 37
    invoke-virtual {p1}, Lcom/facebook/react/views/modal/ReactModalHostView;->onDropInstance()V

    return-void
.end method

.method public bridge synthetic setAnimated(Landroid/view/View;Z)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setAnimated(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V

    return-void
.end method

.method public setAnimated(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "animated"
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAnimationType(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setAnimationType(Lcom/facebook/react/views/modal/ReactModalHostView;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationType(Lcom/facebook/react/views/modal/ReactModalHostView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "animationType"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostView;->setAnimationType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHardwareAccelerated(Landroid/view/View;Z)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setHardwareAccelerated(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V

    return-void
.end method

.method public setHardwareAccelerated(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hardwareAccelerated"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostView;->setHardwareAccelerated(Z)V

    return-void
.end method

.method public bridge synthetic setIdentifier(Landroid/view/View;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setIdentifier(Lcom/facebook/react/views/modal/ReactModalHostView;I)V

    return-void
.end method

.method public setIdentifier(Lcom/facebook/react/views/modal/ReactModalHostView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "identifier"
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPresentationStyle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setPresentationStyle(Lcom/facebook/react/views/modal/ReactModalHostView;Ljava/lang/String;)V

    return-void
.end method

.method public setPresentationStyle(Lcom/facebook/react/views/modal/ReactModalHostView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "presentationStyle"
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setStatusBarTranslucent(Landroid/view/View;Z)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setStatusBarTranslucent(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V

    return-void
.end method

.method public setStatusBarTranslucent(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarTranslucent"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostView;->setStatusBarTranslucent(Z)V

    return-void
.end method

.method public bridge synthetic setSupportedOrientations(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setSupportedOrientations(Lcom/facebook/react/views/modal/ReactModalHostView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setSupportedOrientations(Lcom/facebook/react/views/modal/ReactModalHostView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "supportedOrientations"
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTransparent(Landroid/view/View;Z)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setTransparent(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V

    return-void
.end method

.method public setTransparent(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transparent"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostView;->setTransparent(Z)V

    return-void
.end method

.method public bridge synthetic setVisible(Landroid/view/View;Z)V
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostManager;->setVisible(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V

    return-void
.end method

.method public setVisible(Lcom/facebook/react/views/modal/ReactModalHostView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "visible"
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/modal/ReactModalHostManager;->updateState(Lcom/facebook/react/views/modal/ReactModalHostView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/facebook/react/views/modal/ReactModalHostView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "props"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "stateWrapper"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/modal/ReactModalHostView;->setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V

    const/4 p1, 0x0

    return-object p1
.end method
