.class final Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "ScreenStackFragment.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreensCoordinatorLayout"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenStackFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenStackFragment.kt\ncom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,591:1\n1#2:592\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0011\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fH\u0096\u0001J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J0\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0018H\u0014J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
        "Lcom/facebook/react/uimanager/ReactPointerEventsView;",
        "context",
        "Landroid/content/Context;",
        "fragment",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenStackFragment;)V",
        "pointerEventsImpl",
        "(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenStackFragment;Lcom/facebook/react/uimanager/ReactPointerEventsView;)V",
        "animationListener",
        "Landroid/view/animation/Animation$AnimationListener;",
        "clearFocus",
        "",
        "getPointerEvents",
        "Lcom/facebook/react/uimanager/PointerEvents;",
        "kotlin.jvm.PlatformType",
        "onApplyWindowInsets",
        "Landroid/view/WindowInsets;",
        "insets",
        "onLayout",
        "changed",
        "",
        "l",
        "",
        "t",
        "r",
        "b",
        "startAnimation",
        "animation",
        "Landroid/view/animation/Animation;",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

.field private final pointerEventsImpl:Lcom/facebook/react/uimanager/ReactPointerEventsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    new-instance v0, Lcom/swmansion/rnscreens/PointerEventsBoxNoneImpl;

    invoke-direct {v0}, Lcom/swmansion/rnscreens/PointerEventsBoxNoneImpl;-><init>()V

    check-cast v0, Lcom/facebook/react/uimanager/ReactPointerEventsView;

    .line 480
    invoke-direct {p0, p1, p2, v0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;-><init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenStackFragment;Lcom/facebook/react/uimanager/ReactPointerEventsView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenStackFragment;Lcom/facebook/react/uimanager/ReactPointerEventsView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEventsImpl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 475
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 476
    iput-object p3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->pointerEventsImpl:Lcom/facebook/react/uimanager/ReactPointerEventsView;

    .line 489
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout$animationListener$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout$animationListener$1;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;)V

    check-cast p1, Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    return-object p0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .line 541
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 542
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->clearFocus()V

    :cond_0
    return-void
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->pointerEventsImpl:Lcom/facebook/react/uimanager/ReactPointerEventsView;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactPointerEventsView;->getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 486
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    const-string v0, "onApplyWindowInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 553
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayout(ZIIII)V

    .line 555
    iget-object p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p2

    invoke-static {p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->usesFormSheetPresentation(Lcom/swmansion/rnscreens/Screen;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 556
    iget-object p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/swmansion/rnscreens/Screen;->onBottomSheetBehaviorDidLayout$react_native_screens_release(Z)V

    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;-><init>(Lcom/swmansion/rnscreens/ScreenFragment;)V

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;->setDuration(J)V

    .line 513
    instance-of v1, p1, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->fragment:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    check-cast p1, Landroid/view/animation/AnimationSet;

    .line 516
    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 517
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 519
    check-cast p1, Landroid/view/animation/Animation;

    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 522
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 524
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 525
    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 526
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 528
    check-cast v1, Landroid/view/animation/Animation;

    invoke-super {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method
