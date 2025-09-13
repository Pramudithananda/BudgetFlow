.class public final Lcom/facebook/react/views/scroll/ReactScrollViewHelper;
.super Ljava/lang/Object;
.source "ReactScrollViewHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasSmoothScroll;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0008VWXYZ[\\]B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0007J+\u0010\u001e\u001a\u00020\u001c\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\"H\u0007J%\u0010&\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J5\u0010\'\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0010+J-\u0010,\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010-\u001a\u00020.H\u0002\u00a2\u0006\u0002\u0010/JG\u0010,\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010-\u001a\u00020.2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0008\u0008\u0002\u00100\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u00101J5\u0010,\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0010+J5\u00102\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u00103J%\u00104\u001a\u00020\u001c\"\u000e\u0008\u0000\u0010\u001f*\u0004\u0018\u00010!*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J+\u00105\u001a\u00020\u001c\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J\u0012\u00108\u001a\u00020\u000f2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0007JC\u0010;\u001a\u00020\u000f\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010<\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010?J\u0012\u0010@\u001a\u00020\u000f2\u0008\u0010A\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010B\u001a\u00020\u000f2\u0008\u0010C\u001a\u0004\u0018\u00010\u0004H\u0007JK\u0010D\u001a\u00020E\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010F\u001a\u00020\u000f2\u0006\u0010G\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010JJ/\u0010K\u001a\u00020\u001c\"\u001a\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f\u00a2\u0006\u0002\u0010$J\u0010\u0010L\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0007JA\u0010M\u001a\u00020\u001c\"\u001a\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u00103J1\u0010P\u001a\u00020\u001c\"\u001a\u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001fH\u0007\u00a2\u0006\u0002\u0010$J9\u0010P\u001a\u00020\u001c\"\u0014\u0008\u0000\u0010\u001f*\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010Q\u001a\u00020\u000f2\u0006\u0010R\u001a\u00020\u000f\u00a2\u0006\u0002\u00103JG\u0010S\u001a\u00020\u001c\" \u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u00010!*\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0010+JO\u0010S\u001a\u00020\u001c\" \u0008\u0000\u0010\u001f*\u0004\u0018\u00010 *\u0004\u0018\u00010!*\u0004\u0018\u000106*\u0004\u0018\u000107*\u00020\"2\u0006\u0010#\u001a\u0002H\u001f2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010T\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010UR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \u0015*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006^"
    }
    d2 = {
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper;",
        "",
        "()V",
        "AUTO",
        "",
        "CONTENT_OFFSET_LEFT",
        "CONTENT_OFFSET_TOP",
        "DEBUG_MODE",
        "",
        "MOMENTUM_DELAY",
        "",
        "OVER_SCROLL_ALWAYS",
        "OVER_SCROLL_NEVER",
        "SCROLL_AWAY_PADDING_TOP",
        "SMOOTH_SCROLL_DURATION",
        "",
        "SNAP_ALIGNMENT_CENTER",
        "SNAP_ALIGNMENT_DISABLED",
        "SNAP_ALIGNMENT_END",
        "SNAP_ALIGNMENT_START",
        "TAG",
        "kotlin.jvm.PlatformType",
        "scrollListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;",
        "smoothScrollDurationInitialized",
        "addScrollListener",
        "",
        "listener",
        "dispatchMomentumEndOnAnimationEnd",
        "T",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
        "Landroid/view/ViewGroup;",
        "scrollView",
        "(Landroid/view/ViewGroup;)V",
        "emitLayoutEvent",
        "emitScrollBeginDragEvent",
        "emitScrollEndDragEvent",
        "xVelocity",
        "",
        "yVelocity",
        "(Landroid/view/ViewGroup;FF)V",
        "emitScrollEvent",
        "scrollEventType",
        "Lcom/facebook/react/views/scroll/ScrollEventType;",
        "(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V",
        "experimental_isSynchronous",
        "(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZ)V",
        "emitScrollMomentumBeginEvent",
        "(Landroid/view/ViewGroup;II)V",
        "emitScrollMomentumEndEvent",
        "forceUpdateState",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
        "getDefaultScrollAnimationDuration",
        "context",
        "Landroid/content/Context;",
        "getNextFlingStartValue",
        "currentValue",
        "postAnimationValue",
        "velocity",
        "(Landroid/view/ViewGroup;III)I",
        "parseOverScrollMode",
        "jsOverScrollMode",
        "parseSnapToAlignment",
        "alignment",
        "predictFinalScrollPosition",
        "Landroid/graphics/Point;",
        "velocityX",
        "velocityY",
        "maximumOffsetX",
        "maximumOffsetY",
        "(Landroid/view/ViewGroup;IIII)Landroid/graphics/Point;",
        "registerFlingAnimator",
        "removeScrollListener",
        "smoothScrollTo",
        "x",
        "y",
        "updateFabricScrollState",
        "scrollX",
        "scrollY",
        "updateStateOnScrollChanged",
        "experimental_synchronous",
        "(Landroid/view/ViewGroup;FFZ)V",
        "HasFlingAnimator",
        "HasScrollEventThrottle",
        "HasScrollState",
        "HasSmoothScroll",
        "HasStateWrapper",
        "OverScrollerDurationGetter",
        "ReactScrollViewScrollState",
        "ScrollListener",
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
.field public static final AUTO:Ljava/lang/String; = "auto"

.field private static final CONTENT_OFFSET_LEFT:Ljava/lang/String; = "contentOffsetLeft"

.field private static final CONTENT_OFFSET_TOP:Ljava/lang/String; = "contentOffsetTop"

.field private static final DEBUG_MODE:Z = false

.field public static final INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

.field public static final MOMENTUM_DELAY:J = 0x14L

.field public static final OVER_SCROLL_ALWAYS:Ljava/lang/String; = "always"

.field public static final OVER_SCROLL_NEVER:Ljava/lang/String; = "never"

.field private static final SCROLL_AWAY_PADDING_TOP:Ljava/lang/String; = "scrollAwayPaddingTop"

.field private static SMOOTH_SCROLL_DURATION:I = 0x0

.field public static final SNAP_ALIGNMENT_CENTER:I = 0x2

.field public static final SNAP_ALIGNMENT_DISABLED:I = 0x0

.field public static final SNAP_ALIGNMENT_END:I = 0x3

.field public static final SNAP_ALIGNMENT_START:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smoothScrollDurationInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;-><init>()V

    sput-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    .line 33
    const-class v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    const-string v0, "ReactHorizontalScrollView"

    sput-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0xfa

    .line 54
    sput v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addScrollListener(Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final dispatchMomentumEndOnAnimationEnd(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 420
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    .line 421
    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 423
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$dispatchMomentumEndOnAnimationEnd$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$dispatchMomentumEndOnAnimationEnd$1;-><init>(Landroid/view/ViewGroup;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 422
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static final emitLayoutEvent(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "scrollView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 150
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;->onLayout(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 69
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->BEGIN_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V

    return-void
.end method

.method public static final emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;FF)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 76
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->END_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V

    return-void
.end method

.method public static final emitScrollEvent(Landroid/view/ViewGroup;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;FF)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 62
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V

    return-void
.end method

.method private final emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;",
            "Lcom/facebook/react/views/scroll/ScrollEventType;",
            ")V"
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 97
    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V

    return-void
.end method

.method private final emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;",
            "Lcom/facebook/react/views/scroll/ScrollEventType;",
            "FFZ)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 111
    move-object v3, v0

    check-cast v3, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;

    invoke-interface {v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->getScrollEventThrottle()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->getLastScrollDispatchTime()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/16 v8, 0x11

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    .line 115
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 116
    :cond_1
    sget-object v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 117
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;

    move-object/from16 v10, p2

    move/from16 v13, p3

    move/from16 v14, p4

    if-eqz v6, :cond_2

    invoke-interface {v6, v0, v10, v13, v14}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;->onScroll(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    goto :goto_0

    :cond_3
    move-object/from16 v10, p2

    move/from16 v13, p3

    move/from16 v14, p4

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/facebook/react/bridge/ReactContext;

    .line 120
    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    invoke-static {v6}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v8

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 129
    sget-object v7, Lcom/facebook/react/views/scroll/ScrollEvent;->Companion:Lcom/facebook/react/views/scroll/ScrollEvent$Companion;

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    int-to-float v11, v6

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    int-to-float v12, v6

    .line 137
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 138
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v17

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v18

    move-object/from16 v10, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v19, p5

    .line 129
    invoke-virtual/range {v7 .. v19}, Lcom/facebook/react/views/scroll/ScrollEvent$Companion;->obtain(IILcom/facebook/react/views/scroll/ScrollEventType;FFFFIIIIZ)Lcom/facebook/react/views/scroll/ScrollEvent;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    .line 128
    invoke-interface {v5, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 142
    invoke-interface {v3, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->setLastScrollDispatchTime(J)V

    :cond_4
    return-void
.end method

.method static synthetic emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZ)V

    return-void
.end method

.method public static final emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 83
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    .line 84
    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_BEGIN:Lcom/facebook/react/views/scroll/ScrollEventType;

    int-to-float v3, p1

    int-to-float v4, p2

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 83
    invoke-static/range {v0 .. v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent$default(Lcom/facebook/react/views/scroll/ReactScrollViewHelper;Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZILjava/lang/Object;)V

    return-void
.end method

.method public static final emitScrollMomentumEndEvent(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 91
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    sget-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_END:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V

    return-void
.end method

.method public static final forceUpdateState(Landroid/view/ViewGroup;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 316
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getScrollAwayPaddingTop()I

    move-result v1

    .line 318
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLastStateUpdateScroll()Landroid/graphics/Point;

    move-result-object v2

    .line 319
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 320
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 321
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLayoutDirection()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 327
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_0
    sub-int/2addr v0, v3

    .line 328
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    neg-int v0, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 332
    :goto_0
    sget-boolean v4, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v4, :cond_2

    .line 334
    sget-object v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 337
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 338
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 333
    const-string/jumbo v6, "updateFabricScrollState[%d] scrollX %d scrollY %d fabricScrollX %d"

    invoke-static/range {v5 .. v10}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    :cond_2
    check-cast p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;

    invoke-interface {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;->getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 343
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    int-to-float v3, v3

    .line 344
    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    float-to-double v3, v3

    const-string v5, "contentOffsetLeft"

    invoke-interface {v0, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-float v2, v2

    .line 345
    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "contentOffsetTop"

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-float v1, v1

    .line 347
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    .line 346
    const-string v3, "scrollAwayPaddingTop"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 348
    invoke-interface {p0, v0}, Lcom/facebook/react/uimanager/StateWrapper;->updateState(Lcom/facebook/react/bridge/WritableMap;)V

    :cond_3
    return-void
.end method

.method public static final getDefaultScrollAnimationDuration(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 186
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->smoothScrollDurationInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 187
    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->smoothScrollDurationInitialized:Z

    .line 189
    :try_start_0
    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;->getScrollAnimationDuration()I

    move-result p0

    sput p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :catchall_0
    :cond_0
    sget p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I

    return p0
.end method

.method public static final getNextFlingStartValue(Landroid/view/ViewGroup;III)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ">(TT;III)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 262
    check-cast p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 263
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    sub-int v1, p2, p1

    mul-int/2addr p3, v1

    if-lez p3, :cond_1

    const/4 v0, 0x1

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isFinished()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isCanceled()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    move p1, p2

    :cond_3
    return p1
.end method

.method public static final parseOverScrollMode(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x54506df1

    if-eq v1, v2, :cond_3

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_2

    const v2, 0x63dca8c

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "never"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_3
    const-string v1, "always"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 163
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wrong overScrollMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ReactNative"

    invoke-static {v1, p0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0
.end method

.method public static final parseSnapToAlignment(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    const-string v1, "start"

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    .line 174
    :cond_1
    const-string v1, "center"

    invoke-static {v1, p0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 176
    :cond_2
    const-string v1, "end"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 179
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wrong snap alignment value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ReactNative"

    invoke-static {v1, p0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static final predictFinalScrollPosition(Landroid/view/ViewGroup;IIII)Landroid/graphics/Point;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ">(TT;IIII)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v0, p0

    .line 448
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v1

    .line 452
    new-instance v13, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 453
    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getDecelerationRate()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v13, v2}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 456
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    .line 457
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 458
    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getFinalAnimatedPositionScroll()Landroid/graphics/Point;

    move-result-object v1

    .line 461
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    move v6, p1

    .line 460
    invoke-static {p0, v4, v5, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getNextFlingStartValue(Landroid/view/ViewGroup;III)I

    move-result v4

    .line 463
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    move/from16 v7, p2

    .line 462
    invoke-static {p0, v5, v1, v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getNextFlingStartValue(Landroid/view/ViewGroup;III)I

    move-result v0

    .line 470
    div-int/lit8 v11, v2, 0x2

    .line 471
    div-int/lit8 v12, v3, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v2, v13

    move v3, v4

    move v4, v0

    move v5, p1

    move/from16 v6, p2

    move v7, v1

    move/from16 v8, p3

    move/from16 v10, p4

    .line 459
    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 473
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v13}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static final removeScrollListener(Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->scrollListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final smoothScrollTo(Landroid/view/ViewGroup;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 228
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "smoothScrollTo[%d] x %d y %d"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 235
    :cond_1
    sget-object v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-virtual {v1, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->registerFlingAnimator(Landroid/view/ViewGroup;)V

    .line 237
    :cond_2
    move-object v1, p0

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v1

    .line 238
    invoke-virtual {v1, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setFinalAnimatedPositionScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 239
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    if-eq v1, p1, :cond_3

    .line 244
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->startFlingAnimator(II)V

    :cond_3
    if-eq v2, p2, :cond_4

    .line 247
    invoke-interface {v0, v2, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->startFlingAnimator(II)V

    .line 249
    :cond_4
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->fixIncorrectScrollViewStateUpdateOnAndroid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;II)V

    :cond_5
    return-void
.end method

.method public static final updateFabricScrollState(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 285
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static final updateStateOnScrollChanged(Landroid/view/ViewGroup;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;FF)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 363
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateStateOnScrollChanged(Landroid/view/ViewGroup;FFZ)V

    return-void
.end method

.method public static final updateStateOnScrollChanged(Landroid/view/ViewGroup;FFZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;FFZ)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 382
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->INSTANCE:Lcom/facebook/react/views/scroll/ReactScrollViewHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;II)V

    .line 384
    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 383
    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FFZ)V

    return-void
.end method


# virtual methods
.method public final registerFlingAnimator(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;)V"
        }
    .end annotation

    .line 392
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    .line 393
    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 395
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$registerFlingAnimator$1;

    invoke-direct {v1, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$registerFlingAnimator$1;-><init>(Landroid/view/ViewGroup;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 394
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final updateFabricScrollState(Landroid/view/ViewGroup;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasStateWrapper;",
            ">(TT;II)V"
        }
    .end annotation

    .line 295
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 296
    const-string/jumbo v4, "updateFabricScrollState[%d] scrollX %d scrollY %d"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 302
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLastStateUpdateScroll()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 307
    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setLastStateUpdateScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 308
    invoke-static {p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->forceUpdateState(Landroid/view/ViewGroup;)V

    return-void
.end method
