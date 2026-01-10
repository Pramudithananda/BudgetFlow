.class public final Lcom/swmansion/rnscreens/ScreenStackFragment;
.super Lcom/swmansion/rnscreens/ScreenFragment;
.source "ScreenStackFragment.kt"

# interfaces
.implements Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensAnimation;,
        Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenStackFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenStackFragment.kt\ncom/swmansion/rnscreens/ScreenStackFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,591:1\n1#2:592\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0018\u00002\u00020\u00012\u00020\u0002:\u0002]^B\u000f\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010)\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\u0004H\u0002J\u0008\u0010+\u001a\u00020\u000eH\u0016J\u000e\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040-H\u0002J\u0008\u0010.\u001a\u00020\u0018H\u0016J\r\u0010/\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u00080J\n\u00101\u001a\u0004\u0018\u00010\u0011H\u0002J\u0008\u00102\u001a\u00020\u0018H\u0002J\u0008\u00103\u001a\u00020\u0018H\u0016J\u0012\u00104\u001a\u00020\u00182\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\"\u00107\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020:H\u0016J\"\u0010=\u001a\u0004\u0018\u00010>2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020:H\u0016J\u0018\u0010?\u001a\u00020\u00182\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0016J$\u0010D\u001a\u00020\u00112\u0006\u0010B\u001a\u00020E2\u0008\u0010F\u001a\u0004\u0018\u00010G2\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u0010\u0010H\u001a\u00020\u00182\u0006\u0010@\u001a\u00020AH\u0016J\r\u0010I\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u0008JJ\u0008\u0010K\u001a\u00020\u0018H\u0016J\u0008\u0010L\u001a\u00020\u0018H\u0016J\u0008\u0010M\u001a\u00020\u0018H\u0016J\u001a\u0010N\u001a\u00020\u00182\u0006\u0010O\u001a\u00020\u00112\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u0008\u0010P\u001a\u00020\u0018H\u0016J\u0012\u0010Q\u001a\u00020\u000c2\u0008\u0008\u0002\u0010R\u001a\u00020\u000eH\u0002J\u0008\u0010S\u001a\u00020&H\u0002J\u0017\u0010T\u001a\u0004\u0018\u00010:2\u0006\u0010*\u001a\u00020\u0004H\u0002\u00a2\u0006\u0002\u0010UJ\u0010\u0010V\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010W\u001a\u00020\u00182\u0006\u0010X\u001a\u00020\u000eH\u0016J\u0010\u0010Y\u001a\u00020\u00182\u0006\u0010Z\u001a\u00020\u000eH\u0016J\u0008\u0010[\u001a\u00020\u000eH\u0002J\u0010\u0010\\\u001a\u00020\u00182\u0006\u0010@\u001a\u00020AH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R7\u0010\u0012\u001a\u001f\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006_"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
        "screenView",
        "Lcom/swmansion/rnscreens/Screen;",
        "(Lcom/swmansion/rnscreens/Screen;)V",
        "()V",
        "appBarLayout",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "coordinatorLayout",
        "Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;",
        "dimmingDelegate",
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;",
        "isToolbarShadowHidden",
        "",
        "isToolbarTranslucent",
        "lastFocusedChild",
        "Landroid/view/View;",
        "onSearchViewCreate",
        "Lkotlin/Function1;",
        "Lcom/swmansion/rnscreens/CustomSearchView;",
        "Lkotlin/ParameterName;",
        "name",
        "searchView",
        "",
        "getOnSearchViewCreate",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSearchViewCreate",
        "(Lkotlin/jvm/functions/Function1;)V",
        "screenStack",
        "Lcom/swmansion/rnscreens/ScreenStack;",
        "getScreenStack",
        "()Lcom/swmansion/rnscreens/ScreenStack;",
        "getSearchView",
        "()Lcom/swmansion/rnscreens/CustomSearchView;",
        "setSearchView",
        "(Lcom/swmansion/rnscreens/CustomSearchView;)V",
        "sheetDelegate",
        "Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;",
        "toolbar",
        "Landroidx/appcompat/widget/Toolbar;",
        "attachShapeToScreen",
        "screen",
        "canNavigateBack",
        "createBottomSheetBehaviour",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "dismissFromContainer",
        "dismissSelf",
        "dismissSelf$react_native_screens_release",
        "findLastFocusedChild",
        "notifyViewAppearTransitionEnd",
        "onContainerUpdate",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateAnimation",
        "Landroid/view/animation/Animation;",
        "transit",
        "",
        "enter",
        "nextAnim",
        "onCreateAnimator",
        "Landroid/animation/Animator;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreateView",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onPrepareOptionsMenu",
        "onSheetCornerRadiusChange",
        "onSheetCornerRadiusChange$react_native_screens_release",
        "onStart",
        "onStop",
        "onViewAnimationEnd",
        "onViewCreated",
        "view",
        "removeToolbar",
        "requireDimmingDelegate",
        "forceCreation",
        "requireSheetDelegate",
        "resolveBackgroundColor",
        "(Lcom/swmansion/rnscreens/Screen;)Ljava/lang/Integer;",
        "setToolbar",
        "setToolbarShadowHidden",
        "hidden",
        "setToolbarTranslucent",
        "translucent",
        "shouldShowSearchBar",
        "updateToolbarMenu",
        "ScreensAnimation",
        "ScreensCoordinatorLayout",
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
.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

.field private dimmingDelegate:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

.field private isToolbarShadowHidden:Z

.field private isToolbarTranslucent:Z

.field private lastFocusedChild:Landroid/view/View;

.field private onSearchViewCreate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/swmansion/rnscreens/CustomSearchView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private searchView:Lcom/swmansion/rnscreens/CustomSearchView;

.field private sheetDelegate:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public static synthetic $r8$lambda$164L8a8J_chzTbqtSZACysFu2kw(Lcom/swmansion/rnscreens/ScreenStackFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->onCreateAnimator$lambda$13$lambda$12(Lcom/swmansion/rnscreens/ScreenStackFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FvglSylHmNd6YDMCVdsugA2CoyE(Lcom/swmansion/rnscreens/ScreenStackFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->onCreateAnimator$lambda$20$lambda$19(Lcom/swmansion/rnscreens/ScreenStackFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gD7BvOD77YaEHALq1zTSQP3LR0M(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->onCreateAnimator$lambda$10$lambda$9(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hi__9Vo-8T3tA34fJRqVPwlKxOQ(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->onCreateAnimator$lambda$17$lambda$16(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenFragment;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    const-string v1, "ScreenStack fragments should never be restored. Follow instructions from https://github.com/software-mansion/react-native-screens/issues/17#issuecomment-424704067 to properly configure your main activity."

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/Screen;)V
    .locals 1

    const-string v0, "screenView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    return-void
.end method

.method private final attachShapeToScreen(Lcom/swmansion/rnscreens/Screen;)V
    .locals 3

    .line 352
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetCornerRadius()F

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 355
    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    const/4 v2, 0x0

    .line 357
    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 358
    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 359
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->resolveBackgroundColor(Lcom/swmansion/rnscreens/Screen;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 363
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/swmansion/rnscreens/Screen;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final createBottomSheetBehaviour()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/swmansion/rnscreens/Screen;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;-><init>()V

    return-object v0
.end method

.method private final findLastFocusedChild()Landroid/view/View;
    .locals 3

    .line 428
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 431
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final getScreenStack()Lcom/swmansion/rnscreens/ScreenStack;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    .line 72
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v1, :cond_0

    .line 73
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenStackFragment added into a non-stack container"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final notifyViewAppearTransitionEnd()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v1, :cond_1

    .line 146
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStack;->onViewAppearTransitionEnd()V

    :cond_1
    return-void
.end method

.method private static final onCreateAnimator$lambda$10$lambda$9(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$dimmingDelegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 279
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->getDimmingView$react_native_screens_release()Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private static final onCreateAnimator$lambda$13$lambda$12(Lcom/swmansion/rnscreens/ScreenStackFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 288
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/Screen;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method private static final onCreateAnimator$lambda$17$lambda$16(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$dimmingDelegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 305
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->getDimmingView$react_native_screens_release()Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private static final onCreateAnimator$lambda$20$lambda$19(Lcom/swmansion/rnscreens/ScreenStackFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 312
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/Screen;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method private final requireDimmingDelegate(Z)Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->dimmingDelegate:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->invalidate(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 461
    :cond_1
    new-instance p1, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/swmansion/rnscreens/Screen;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->dimmingDelegate:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    .line 463
    :cond_2
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->dimmingDelegate:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic requireDimmingDelegate$default(Lcom/swmansion/rnscreens/ScreenStackFragment;ZILjava/lang/Object;)Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 458
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->requireDimmingDelegate(Z)Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    move-result-object p0

    return-object p0
.end method

.method private final requireSheetDelegate()Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->sheetDelegate:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->sheetDelegate:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->sheetDelegate:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final resolveBackgroundColor(Lcom/swmansion/rnscreens/Screen;)Ljava/lang/Integer;
    .locals 3

    .line 335
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 336
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_4

    return-object v0

    .line 342
    :cond_4
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getContentWrapper()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/rnscreens/ScreenContentWrapper;

    if-nez p1, :cond_5

    return-object v2

    .line 347
    :cond_5
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-static {p1}, Lcom/swmansion/rnscreens/utils/ViewBackgroundUtilsKt;->resolveBackgroundColor(Lcom/facebook/react/views/view/ReactViewGroup;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private final shouldShowSearchBar()Z
    .locals 6

    .line 398
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getHeaderConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getConfigSubviewsCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_2

    if-lez v2, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 402
    invoke-virtual {v0, v3}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getConfigSubview(I)Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    move-result-object v4

    .line 403
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->getType()Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    move-result-object v4

    sget-object v5, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->SEARCH_BAR:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method private final updateToolbarMenu(Landroid/view/Menu;)V
    .locals 3

    .line 412
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 413
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->shouldShowSearchBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->searchView:Lcom/swmansion/rnscreens/CustomSearchView;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 416
    new-instance v1, Lcom/swmansion/rnscreens/CustomSearchView;

    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-direct {v1, v0, v2}, Lcom/swmansion/rnscreens/CustomSearchView;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 417
    iput-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->searchView:Lcom/swmansion/rnscreens/CustomSearchView;

    .line 418
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->onSearchViewCreate:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_0
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 421
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 422
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->searchView:Lcom/swmansion/rnscreens/CustomSearchView;

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method


# virtual methods
.method public canNavigateBack()Z
    .locals 2

    .line 438
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    .line 439
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v1, :cond_2

    .line 440
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStack;->getRootScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 444
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_0

    .line 445
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->canNavigateBack()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 439
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenStackFragment added into a non-stack container"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dismissFromContainer()V
    .locals 2

    .line 455
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreenStack()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->dismiss(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;)V

    return-void
.end method

.method public final dismissSelf$react_native_screens_release()V
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    .line 157
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    .line 159
    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v2, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/swmansion/rnscreens/events/ScreenDismissedEvent;-><init>(II)V

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_1
    return-void
.end method

.method public final getOnSearchViewCreate()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/swmansion/rnscreens/CustomSearchView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->onSearchViewCreate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSearchView()Lcom/swmansion/rnscreens/CustomSearchView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->searchView:Lcom/swmansion/rnscreens/CustomSearchView;

    return-object v0
.end method

.method public onContainerUpdate()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->onContainerUpdate()V

    .line 130
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getHeaderConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->onUpdate()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 7

    .line 266
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-static {p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->usesFormSheetPresentation(Lcom/swmansion/rnscreens/Screen;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 271
    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 272
    invoke-static {p0, v0, v1, p3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->requireDimmingDelegate$default(Lcom/swmansion/rnscreens/ScreenStackFragment;ZILjava/lang/Object;)Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    .line 276
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->getMaxAlpha$react_native_screens_release()F

    move-result v5

    new-array v3, v3, [F

    aput v4, v3, v0

    aput v5, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/swmansion/rnscreens/ScreenStackFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/ScreenStackFragment$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    new-instance v1, Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$startValueCallback$1;

    invoke-direct {v1, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$startValueCallback$1;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 283
    new-instance v3, Lcom/swmansion/rnscreens/transition/ExternalBoundaryValuesEvaluator;

    sget-object v5, Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;->INSTANCE:Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, v1, v5}, Lcom/swmansion/rnscreens/transition/ExternalBoundaryValuesEvaluator;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 285
    check-cast v3, Landroid/animation/TypeEvaluator;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 286
    new-instance v3, Lcom/swmansion/rnscreens/ScreenStackFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$$ExternalSyntheticLambda1;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 293
    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    .line 297
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->getSheetInitialDetentIndex()I

    move-result v4

    .line 295
    invoke-virtual {v2, v3, v4}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->willDimForDetentIndex(Lcom/swmansion/rnscreens/Screen;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p3, v1

    :cond_1
    if-eqz p3, :cond_4

    .line 299
    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->getDimmingView$react_native_screens_release()Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getAlpha()F

    move-result v5

    new-array v6, v3, [F

    aput v5, v6, v0

    aput v4, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 303
    new-instance v6, Lcom/swmansion/rnscreens/ScreenStackFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2}, Lcom/swmansion/rnscreens/ScreenStackFragment$$ExternalSyntheticLambda2;-><init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 309
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    if-nez v2, :cond_3

    const-string v2, "coordinatorLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p3, v2

    :goto_0
    invoke-virtual {p3}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->getBottom()I

    move-result p3

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getTop()I

    move-result v2

    sub-int/2addr p3, v2

    int-to-float p3, p3

    new-array v2, v3, [F

    aput v4, v2, v0

    aput p3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 310
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$$ExternalSyntheticLambda3;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    check-cast p3, Landroid/animation/Animator;

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 318
    :cond_4
    :goto_1
    new-instance p3, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;

    .line 319
    move-object v0, p0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 320
    new-instance v1, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    if-eqz p2, :cond_5

    .line 322
    sget-object p2, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;->ENTER:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    goto :goto_2

    .line 324
    :cond_5
    sget-object p2, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;->EXIT:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    .line 318
    :goto_2
    invoke-direct {p3, v0, v1, p2}, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;Lcom/swmansion/rnscreens/events/ScreenEventEmitter;Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;)V

    check-cast p3, Landroid/animation/Animator$AnimatorListener;

    .line 317
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    check-cast p1, Landroid/animation/Animator;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->updateToolbarMenu(Landroid/view/Menu;)V

    .line 394
    invoke-super {p0, p1, p2}, Lcom/swmansion/rnscreens/ScreenFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "requireContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;-><init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    .line 179
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    .line 181
    new-instance p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 186
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-static {v0}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->usesFormSheetPresentation(Lcom/swmansion/rnscreens/Screen;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->createBottomSheetBehaviour()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    goto :goto_0

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->isToolbarTranslucent:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 185
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 184
    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    .line 179
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    const-string p2, "coordinatorLayout"

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/swmansion/rnscreens/ext/ViewExtKt;->recycle(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-static {p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->usesFormSheetPresentation(Lcom/swmansion/rnscreens/Screen;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_8

    .line 201
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {v3, p1}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    .line 208
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, p3, v0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    .line 207
    invoke-virtual {v3, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 200
    :goto_1
    iput-object v3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 214
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    iget-object p3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->isToolbarShadowHidden:Z

    if-eqz p1, :cond_6

    .line 216
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/google/android/material/appbar/AppBarLayout;->setTargetElevation(F)V

    .line 218
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_7

    iget-object p3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p3, :cond_7

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/swmansion/rnscreens/ext/ViewExtKt;->recycle(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;)V

    .line 219
    :cond_7
    invoke-virtual {p0, v2}, Lcom/swmansion/rnscreens/ScreenStackFragment;->setHasOptionsMenu(Z)V

    goto/16 :goto_3

    .line 221
    :cond_8
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/swmansion/rnscreens/Screen;->setClipToOutline(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->attachShapeToScreen(Lcom/swmansion/rnscreens/Screen;)V

    .line 224
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p3

    invoke-virtual {p3}, Lcom/swmansion/rnscreens/Screen;->getSheetElevation()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/swmansion/rnscreens/Screen;->setElevation(F)V

    .line 227
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->requireSheetDelegate()Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;

    move-result-object v3

    .line 228
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->configureBottomSheetBehaviour$react_native_screens_release$default(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;IILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 230
    invoke-direct {p0, v2}, Lcom/swmansion/rnscreens/ScreenStackFragment;->requireDimmingDelegate(Z)Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    move-result-object p1

    .line 231
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p3

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    if-nez v2, :cond_9

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_9
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->onViewHierarchyCreated(Lcom/swmansion/rnscreens/Screen;Landroid/view/ViewGroup;)V

    .line 232
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p3

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, v2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->onBehaviourAttached(Lcom/swmansion/rnscreens/Screen;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 234
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 235
    iget-object p3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    if-nez p3, :cond_a

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    .line 236
    :cond_a
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 237
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 235
    invoke-virtual {p3, v2, v3}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->measure(II)V

    .line 239
    iget-object p3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    if-nez p3, :cond_b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    :cond_b
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->getHeight()I

    move-result p1

    invoke-virtual {p3, v0, v0, v2, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;->layout(IIII)V

    .line 242
    :goto_3
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->coordinatorLayout:Lcom/swmansion/rnscreens/ScreenStackFragment$ScreensCoordinatorLayout;

    if-nez p1, :cond_c

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object v1, p1

    :goto_4
    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getHeaderConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->isHeaderHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->updateToolbarMenu(Landroid/view/Menu;)V

    .line 386
    :cond_1
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public final onSheetCornerRadiusChange$react_native_screens_release()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->onSheetCornerRadiusChange$react_native_screens_release()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->lastFocusedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 368
    :cond_0
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 372
    sget-object v0, Lcom/swmansion/rnscreens/utils/DeviceUtils;->INSTANCE:Lcom/swmansion/rnscreens/utils/DeviceUtils;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/utils/DeviceUtils;->isPlatformAndroidTV(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->findLastFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->lastFocusedChild:Landroid/view/View;

    .line 376
    :cond_0
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->onStop()V

    return-void
.end method

.method public onViewAnimationEnd()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->onViewAnimationEnd()V

    .line 137
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->notifyViewAppearTransitionEnd()V

    .line 140
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->endRemovalTransition()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-super {p0, p1, p2}, Lcom/swmansion/rnscreens/ScreenFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public removeToolbar()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 93
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public final setOnSearchViewCreate(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/swmansion/rnscreens/CustomSearchView;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->onSearchViewCreate:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSearchView(Lcom/swmansion/rnscreens/CustomSearchView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->searchView:Lcom/swmansion/rnscreens/CustomSearchView;

    return-void
.end method

.method public setToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    const-string v0, "toolbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 102
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public setToolbarShadowHidden(Z)V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->isToolbarShadowHidden:Z

    if-eq v0, p1, :cond_3

    .line 113
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setElevation(F)V

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 115
    :goto_2
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->isToolbarShadowHidden:Z

    :cond_3
    return-void
.end method

.method public setToolbarTranslucent(Z)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->isToolbarTranslucent:Z

    if-eq v0, p1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    const-string v1, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 122
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 124
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment;->isToolbarTranslucent:Z

    :cond_1
    return-void
.end method
