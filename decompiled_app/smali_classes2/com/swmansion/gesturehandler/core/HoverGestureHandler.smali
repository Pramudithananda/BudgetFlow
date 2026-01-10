.class public final Lcom/swmansion/gesturehandler/core/HoverGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "HoverGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/HoverGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/HoverGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0015\u0010\u000e\u001a\u00020\u000f2\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0082\u0004J)\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0002\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0014J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0014J\u0008\u0010\u001b\u001a\u00020\rH\u0014J\u0014\u0010\u001c\u001a\u00020\u000f2\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016J\u0014\u0010\u001d\u001a\u00020\u000f2\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016J\u0014\u0010\u001e\u001a\u00020\u000f2\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/HoverGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "()V",
        "finishRunnable",
        "Ljava/lang/Runnable;",
        "handler",
        "Landroid/os/Handler;",
        "<set-?>",
        "Lcom/swmansion/gesturehandler/core/StylusData;",
        "stylusData",
        "getStylusData",
        "()Lcom/swmansion/gesturehandler/core/StylusData;",
        "finish",
        "",
        "isAncestorOf",
        "",
        "other",
        "isViewDisplayedOverAnother",
        "view",
        "Landroid/view/View;",
        "rootView",
        "(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Ljava/lang/Boolean;",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "sourceEvent",
        "onHandleHover",
        "onReset",
        "shouldBeCancelledBy",
        "shouldRecognizeSimultaneously",
        "shouldRequireToWaitForFailure",
        "Companion",
        "react-native-gesture-handler_release"
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
.field public static final Companion:Lcom/swmansion/gesturehandler/core/HoverGestureHandler$Companion;

.field private static final viewConfigHelper:Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;


# instance fields
.field private finishRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private stylusData:Lcom/swmansion/gesturehandler/core/StylusData;


# direct methods
.method public static synthetic $r8$lambda$JkiaVnG8Hrw5YfPKGi-6mHPCofs(Lcom/swmansion/gesturehandler/core/HoverGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->finishRunnable$lambda$0(Lcom/swmansion/gesturehandler/core/HoverGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/HoverGestureHandler$Companion;

    .line 134
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->viewConfigHelper:Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 11
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    .line 13
    new-instance v0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/core/HoverGestureHandler;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->finishRunnable:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lcom/swmansion/gesturehandler/core/StylusData;

    const/16 v12, 0x1f

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/swmansion/gesturehandler/core/StylusData;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    return-void
.end method

.method private final finish()V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->end()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->fail()V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->cancel()V

    :goto_0
    return-void
.end method

.method private static final finishRunnable$lambda$0(Lcom/swmansion/gesturehandler/core/HoverGestureHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->finish()V

    return-void
.end method

.method private final isAncestorOf(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getView()Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final isViewDisplayedOverAnother(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Ljava/lang/Boolean;
    .locals 3

    .line 33
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 41
    :cond_1
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 42
    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 43
    sget-object v2, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->viewConfigHelper:Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;

    invoke-virtual {v2, p3, v1}, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;->getChildInDrawingOrderAtIndex(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 44
    invoke-direct {p0, p1, p2, v2}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isViewDisplayedOverAnother(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic isViewDisplayedOverAnother$default(Lcom/swmansion/gesturehandler/core/HoverGestureHandler;Landroid/view/View;Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p3

    const-string p4, "getRootView(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isViewDisplayedOverAnother(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getStylusData()Lcom/swmansion/gesturehandler/core/StylusData;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    return-object v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 85
    iget-object p1, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 86
    :cond_0
    iput-object p2, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isWithinBounds()Z

    move-result p1

    if-nez p1, :cond_2

    .line 89
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onHandleHover(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 97
    iget-object p1, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->handler:Landroid/os/Handler;

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->finishRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isWithinBounds()Z

    move-result p2

    if-nez p2, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->finish()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->getState()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 109
    sget-object p2, Lcom/swmansion/gesturehandler/core/StylusData;->Companion:Lcom/swmansion/gesturehandler/core/StylusData$Companion;

    invoke-virtual {p2, p1}, Lcom/swmansion/gesturehandler/core/StylusData$Companion;->fromEvent(Landroid/view/MotionEvent;)Lcom/swmansion/gesturehandler/core/StylusData;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->getState()I

    move-result p2

    if-nez p2, :cond_5

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_5

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->begin()V

    .line 115
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->activate()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 14

    .line 121
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onReset()V

    .line 122
    new-instance v13, Lcom/swmansion/gesturehandler/core/StylusData;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/swmansion/gesturehandler/core/StylusData;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v13, p0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    return-void
.end method

.method public shouldBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    instance-of v0, p1, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;

    move-object v1, p0

    check-cast v1, Lcom/swmansion/gesturehandler/core/GestureHandler;

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isAncestorOf(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isViewDisplayedOverAnother$default(Lcom/swmansion/gesturehandler/core/HoverGestureHandler;Landroid/view/View;Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result p1

    return p1
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    instance-of v0, p1, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isAncestorOf(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;

    move-object v2, p0

    check-cast v2, Lcom/swmansion/gesturehandler/core/GestureHandler;

    invoke-direct {v0, v2}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isAncestorOf(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 76
    :cond_1
    instance-of v0, p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;

    if-eqz v0, :cond_2

    return v1

    .line 80
    :cond_2
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result p1

    return p1
.end method

.method public shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    instance-of v0, p1, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isAncestorOf(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;

    move-object v1, p0

    check-cast v1, Lcom/swmansion/gesturehandler/core/GestureHandler;

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isAncestorOf(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/swmansion/gesturehandler/core/HoverGestureHandler;->isViewDisplayedOverAnother$default(Lcom/swmansion/gesturehandler/core/HoverGestureHandler;Landroid/view/View;Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result p1

    return p1
.end method
