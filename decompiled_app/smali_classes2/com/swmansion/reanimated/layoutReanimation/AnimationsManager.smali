.class public Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;
.super Ljava/lang/Object;
.source "AnimationsManager.java"

# interfaces
.implements Lcom/swmansion/reanimated/layoutReanimation/ViewHierarchyObserver;


# instance fields
.field private isInvalidated:Z

.field private mAncestorsToRemove:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mEnteringViewTargetValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnteringViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingSubviewCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

.field private mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

.field private final mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

.field private mUIManager:Lcom/facebook/react/bridge/UIManager;

.field private mWeakAndroidUIScheduler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/swmansion/worklets/AndroidUIScheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/UIManager;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mWeakAndroidUIScheduler:Ljava/lang/ref/WeakReference;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViewTargetValues:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 65
    iput-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    .line 67
    new-instance p1, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-direct {p1, p0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;-><init>(Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;)V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    return-void
.end method

.method private static addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 400
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 402
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 403
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 404
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 405
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 406
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 407
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 408
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 409
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 410
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_5
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_6

    .line 412
    check-cast p2, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 413
    :cond_6
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_7

    .line 414
    check-cast p2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :goto_0
    return-void

    .line 416
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "[Reanimated] Unknown type of animated value for Layout Animations."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private cancelAnimationsInSubviews(Landroid/view/ViewGroup;)V
    .locals 5

    .line 668
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 669
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 675
    :cond_0
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->endLayoutAnimation(IZ)V

    goto :goto_1

    .line 677
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 678
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsInSubviews(Landroid/view/ViewGroup;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkDuplicateSharedTag(Landroid/view/View;)V
    .locals 3

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 201
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 202
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v1, v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->checkDuplicateSharedTag(II)V

    :cond_2
    return-void
.end method

.method private static convertScreenLocationToViewCoordinates(Landroid/graphics/Point;Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x0

    .line 710
    filled-new-array {v0, v0}, [I

    move-result-object v1

    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 714
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    aget v0, v1, v0

    sub-int/2addr v2, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    aget v0, v1, v0

    sub-int/2addr p0, v0

    invoke-direct {p1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private maybeDropAncestors(Landroid/view/View;)V
    .locals 4

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/View;

    :goto_0
    if-eqz p1, :cond_3

    .line 620
    instance-of v0, p1, Lcom/facebook/react/uimanager/RootView;

    if-nez v0, :cond_3

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 624
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 625
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_2

    .line 627
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 629
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 633
    :cond_1
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 635
    :cond_2
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object p1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private registerExitingAncestors(Landroid/view/View;)V
    .locals 3

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :goto_0
    if-eqz p1, :cond_1

    .line 606
    instance-of v0, p1, Lcom/facebook/react/uimanager/RootView;

    if-nez v0, :cond_1

    .line 607
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 608
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeOrAnimateExitRecursive(Landroid/view/View;ZZ)Z
    .locals 12

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 510
    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v1

    .line 514
    const-string v3, "RCTModalHostView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "RNSScreen"

    .line 515
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "RNSScreenStack"

    .line 516
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    :cond_0
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsRecursive(Landroid/view/View;)V

    return v2

    .line 523
    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->shouldAnimateExiting(IZ)Z

    move-result p3

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_3

    .line 527
    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    .line 528
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-eqz p2, :cond_4

    if-nez v4, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v5, 0x4

    .line 532
    invoke-virtual {p0, v0, v5}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 533
    iget-object v5, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v5, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->notifyAboutRemovedView(Landroid/view/View;)V

    .line 534
    iget-object v5, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v5, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->makeSnapshot(Landroid/view/View;)V

    .line 537
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 542
    instance-of v6, p1, Landroid/view/ViewGroup;

    const/4 v7, -0x1

    if-eqz v6, :cond_8

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    .line 543
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v3

    move v9, v2

    :goto_2
    if-ltz v8, :cond_9

    .line 544
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 545
    invoke-direct {p0, v10, p2, p3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeOrAnimateExitRecursive(Landroid/view/View;ZZ)Z

    move-result v11

    if-eqz v11, :cond_6

    move v9, v3

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    .line 547
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v11

    if-eq v11, v7, :cond_7

    .line 548
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_8
    move v9, v2

    :cond_9
    if-nez v4, :cond_b

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    move p2, v2

    goto :goto_5

    :cond_b
    :goto_4
    move p2, v3

    :goto_5
    if-eqz v4, :cond_c

    .line 556
    new-instance p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    invoke-direct {p3, p1, v4}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    .line 557
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toCurrentMap()Ljava/util/HashMap;

    move-result-object p3

    .line 558
    invoke-virtual {p0, p3, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object p3

    .line 559
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 560
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->registerExitingAncestors(Landroid/view/View;)V

    .line 562
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v4, v0, v1, p3}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimation(IILjava/util/HashMap;)V

    .line 566
    :cond_c
    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {p3, v0}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->clearAnimationConfig(I)V

    if-nez p2, :cond_d

    return v2

    :cond_d
    if-eqz v9, :cond_f

    if-ne v0, v7, :cond_e

    .line 577
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsRecursive(Landroid/view/View;)V

    return v2

    .line 580
    :cond_e
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 584
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p3, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_6

    :cond_10
    return v3
.end method

.method private removeView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 644
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 646
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->publicDropView(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 654
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 655
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;
    .locals 1

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public cancelAnimationsInSubviews(Landroid/view/View;)V
    .locals 0

    .line 600
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsRecursive(Landroid/view/View;)V

    .line 601
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->clearAnimationConfigRecursive(Landroid/view/View;)V

    return-void
.end method

.method public cancelAnimationsRecursive(Landroid/view/View;)V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->endLayoutAnimation(IZ)V

    goto :goto_0

    .line 662
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsInSubviews(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearAnimationConfigRecursive(Landroid/view/View;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->clearAnimationConfig(I)V

    .line 592
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 593
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 594
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->clearAnimationConfigRecursive(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endLayoutAnimation(IZ)V
    .locals 5

    .line 231
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViewTargetValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez p2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 239
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViewTargetValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 245
    instance-of p2, v0, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 246
    move-object p2, v0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->cancelAnimationsInSubviews(Landroid/view/ViewGroup;)V

    .line 249
    :cond_2
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->maybeDropAncestors(Landroid/view/View;)V

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 253
    invoke-direct {p0, v0, p2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 255
    :cond_3
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {p2, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->finishSharedAnimation(I)V

    return-void
.end method

.method protected getContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method public getReanimatedNativeHierarchyManager()Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    return-object v0
.end method

.method public hasAnimationForTag(II)Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->hasAnimation(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 73
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 74
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    .line 75
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    .line 76
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingSubviewCountMap:Ljava/util/HashMap;

    .line 77
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mAncestorsToRemove:Ljava/util/HashSet;

    .line 78
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public isLayoutAnimationEnabled()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->isLayoutAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeSnapshotOfTopScreenViews(Landroid/view/ViewGroup;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->doSnapshotForTopScreenViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public maybeRegisterSharedView(Landroid/view/View;)V
    .locals 2

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->notifyAboutNewView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public navigationTabChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->navigationTabChanged(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public notifyAboutScreenWillDisappear()V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->onScreenWillDisappear()V

    return-void
.end method

.method public notifyAboutViewsRemoval([I)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->onViewsRemoval([I)V

    return-void
.end method

.method public onViewCreate(Landroid/view/View;Landroid/view/ViewGroup;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V
    .locals 1

    .line 96
    iget-boolean p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    if-eqz p2, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->maybeRegisterSharedView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 105
    :cond_1
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mWeakAndroidUIScheduler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/swmansion/worklets/AndroidUIScheduler;

    if-eqz p2, :cond_2

    .line 107
    invoke-virtual {p2}, Lcom/swmansion/worklets/AndroidUIScheduler;->triggerUI()V

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 112
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toTargetMap()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {p0, p2, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object p2

    .line 116
    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {p3, p1, v0, p2}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimation(IILjava/util/HashMap;)V

    .line 117
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onViewRemoval(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x1

    .line 89
    invoke-direct {p0, p1, p3, p3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeOrAnimateExitRecursive(Landroid/view/View;ZZ)Z

    move-result p3

    if-nez p3, :cond_1

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeView(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public onViewUpdate(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V
    .locals 9

    .line 123
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isInvalidated:Z

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->hasAnimationForTag(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViews:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mEnteringViewTargetValues:Ljava/util/HashMap;

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v4, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget v5, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v6, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->width:I

    add-int/2addr v5, v6

    iget v6, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget p3, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->height:I

    add-int/2addr v6, p3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget p3, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v0, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget v1, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originX:I

    iget v2, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->width:I

    add-int/2addr v1, v2

    iget v2, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->originY:I

    iget p2, p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->height:I

    add-int/2addr v2, p2

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void

    .line 149
    :cond_2
    invoke-virtual {p2}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toCurrentMap()Ljava/util/HashMap;

    move-result-object p1

    .line 150
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toTargetMap()Ljava/util/HashMap;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v2, 0x1

    move v3, p3

    move v4, v2

    .line 155
    :goto_0
    sget-object v5, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 156
    sget-object v5, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->currentKeysToTransform:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 158
    sget-object v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_3

    move v4, p3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    return-void

    .line 170
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p2, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object p2

    .line 173
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 174
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 177
    :cond_6
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {p1, v0, v1, p3}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimation(IILjava/util/HashMap;)V

    return-void
.end method

.method public prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, p2, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;ZZ)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public prepareDataForAnimationWorklet(Ljava/util/HashMap;ZZ)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 295
    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    goto :goto_0

    .line 297
    :cond_0
    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->currentKeysToTransform:Ljava/util/ArrayList;

    .line 299
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 300
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 301
    invoke-static {v3}, Lcom/swmansion/reanimated/Utils;->convertToFloat(Ljava/lang/Object;)F

    move-result v3

    .line 302
    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    .line 303
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    .line 308
    const-string p2, "targetTransformMatrix"

    goto :goto_2

    :cond_2
    const-string p2, "currentTransformMatrix"

    .line 309
    :goto_2
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_3
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 313
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    .line 314
    const-string/jumbo p3, "windowHeight"

    const-string/jumbo v1, "windowWidth"

    if-eqz p2, :cond_4

    .line 315
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 316
    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 317
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    .line 318
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p2

    .line 319
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 321
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method public printSubTree(Landroid/view/View;I)V
    .locals 5

    .line 262
    const-string v0, "rea"

    if-nez p2, :cond_0

    .line 263
    const-string v1, "----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 268
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_2

    .line 270
    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_2
    const-string v3, " TAG:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const-string v3, " CLASS:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 279
    :goto_1
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 280
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->printSubTree(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public progressLayoutAnimation(ILjava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v3

    .line 221
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v4

    if-nez v3, :cond_2

    return-void

    .line 227
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->setNewProps(Ljava/util/Map;Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/uimanager/ViewManager;Ljava/lang/Integer;Z)V

    return-void
.end method

.method protected resolveView(I)Landroid/view/View;
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mExitingViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->getTransitioningView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 694
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public screenDidLayout(Landroid/view/View;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->screenDidLayout(Landroid/view/View;)V

    return-void
.end method

.method public setAndroidUIScheduler(Lcom/swmansion/worklets/AndroidUIScheduler;)V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mWeakAndroidUIScheduler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V
    .locals 1

    .line 328
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 329
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V

    return-void
.end method

.method public setNewProps(Ljava/util/Map;Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/uimanager/ViewManager;Ljava/lang/Integer;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 340
    const-string v11, "originX"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    :goto_0
    move v5, v1

    .line 344
    const-string v12, "originY"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 345
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    :goto_1
    move v6, v1

    .line 348
    const-string/jumbo v13, "width"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 349
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_2

    .line 350
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    :goto_2
    move v7, v1

    .line 352
    const-string v14, "height"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 353
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_3

    .line 354
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    :goto_3
    move v8, v1

    .line 356
    const-string v1, "transformMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x9

    .line 357
    new-array v3, v2, [F

    .line 358
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Lcom/facebook/react/bridge/ReadableNativeArray;

    const/4 v15, 0x0

    if-eqz v9, :cond_4

    check-cast v4, Lcom/facebook/react/bridge/ReadableNativeArray;

    move v9, v15

    :goto_4
    if-ge v9, v2, :cond_5

    .line 361
    invoke-virtual {v4, v9}, Lcom/facebook/react/bridge/ReadableNativeArray;->getDouble(I)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->floatValue()F

    move-result v16

    aput v16, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 365
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move v9, v15

    :goto_5
    if-ge v9, v2, :cond_5

    .line 367
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 370
    :cond_5
    aget v2, v3, v15

    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleX(F)V

    const/4 v2, 0x4

    .line 371
    aget v2, v3, v2

    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleY(F)V

    .line 375
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_6
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->updateLayout(Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;IFFFFZ)V

    .line 379
    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "globalOriginX"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "globalOriginY"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 390
    :cond_7
    new-instance v1, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 391
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 395
    :cond_8
    new-instance v0, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    move-object/from16 v1, p3

    invoke-virtual {v1, v10, v0}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    return-void
.end method

.method public setReanimatedNativeHierarchyManager(Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    return-void
.end method

.method public shouldAnimateExiting(IZ)Z
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-interface {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->shouldAnimateExiting(IZ)Z

    move-result p1

    return p1
.end method

.method public updateLayout(Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;IFFFFZ)V
    .locals 2

    .line 431
    invoke-static {p4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 432
    invoke-static {p5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p5

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    .line 433
    invoke-static {p6}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p6

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    .line 434
    invoke-static {p7}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p7

    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p7

    const/high16 v0, 0x40000000    # 2.0f

    .line 451
    invoke-static {p6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 452
    invoke-static {p7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 450
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 465
    instance-of v1, v0, Lcom/facebook/react/uimanager/RootView;

    if-eqz v1, :cond_0

    .line 466
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 470
    :cond_0
    rem-int/lit8 v0, p3, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_2

    .line 472
    instance-of p8, p2, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz p8, :cond_1

    .line 473
    check-cast p2, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    .line 480
    invoke-interface {p2}, Lcom/facebook/react/uimanager/IViewManagerWithChildren;->needsCustomLayoutForChildren()Z

    move-result p2

    if-nez p2, :cond_4

    add-int/2addr p6, p4

    add-int/2addr p7, p5

    .line 481
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 475
    :cond_1
    new-instance p1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "[Reanimated] Trying to use view with tag "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " as a parent, but its Manager doesn\'t implement IViewManagerWithChildren."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p8, :cond_3

    .line 485
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p4, p5}, Landroid/graphics/Point;-><init>(II)V

    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 487
    invoke-static {p2, p3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->convertScreenLocationToViewCoordinates(Landroid/graphics/Point;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    .line 488
    iget p4, p2, Landroid/graphics/Point;->x:I

    .line 489
    iget p5, p2, Landroid/graphics/Point;->y:I

    :cond_3
    add-int/2addr p6, p4

    add-int/2addr p7, p5

    .line 491
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    :cond_4
    :goto_0
    return-void
.end method

.method public viewDidLayout(Landroid/view/View;)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->viewDidLayout(Landroid/view/View;)V

    return-void
.end method

.method public visitNativeTreeAndMakeSnapshot(Landroid/view/View;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mSharedTransitionManager:Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/SharedTransitionManager;->visitNativeTreeAndMakeSnapshot(Landroid/view/View;)V

    return-void
.end method
