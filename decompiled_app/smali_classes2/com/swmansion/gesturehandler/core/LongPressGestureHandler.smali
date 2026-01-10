.class public final Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "LongPressGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongPressGestureHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongPressGestureHandler.kt\ncom/swmansion/gesturehandler/core/LongPressGestureHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1549#2:182\n1620#2,3:183\n1549#2:186\n1620#2,3:187\n*S KotlinDebug\n*F\n+ 1 LongPressGestureHandler.kt\ncom/swmansion/gesturehandler/core/LongPressGestureHandler\n*L\n50#1:182\n50#1:183,3\n51#1:186\n51#1:187,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u0000 02\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u00010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0016J&\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\"2\u0006\u0010#\u001a\u00020\u001d2\u0008\u0008\u0002\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020\u001dH\u0014J\u0008\u0010(\u001a\u00020\u001bH\u0014J\u0018\u0010)\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0014J\u0008\u0010+\u001a\u00020\u001bH\u0016J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0008J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "currentPointers",
        "",
        "defaultMaxDistSq",
        "",
        "duration",
        "getDuration",
        "()I",
        "handler",
        "Landroid/os/Handler;",
        "maxDistSq",
        "minDurationMs",
        "",
        "getMinDurationMs",
        "()J",
        "setMinDurationMs",
        "(J)V",
        "numberOfPointersRequired",
        "previousTime",
        "startTime",
        "startX",
        "startY",
        "dispatchHandlerUpdate",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "dispatchStateChange",
        "newState",
        "prevState",
        "getAverageCoords",
        "Lkotlin/Pair;",
        "ev",
        "excludePointer",
        "",
        "onHandle",
        "sourceEvent",
        "onReset",
        "onStateChange",
        "previousState",
        "resetConfig",
        "setMaxDist",
        "maxDist",
        "setNumberOfPointers",
        "numberOfPointers",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;

.field private static final DEFAULT_MAX_DIST_DP:F = 10.0f

.field private static final DEFAULT_MIN_DURATION_MS:J = 0x1f4L


# instance fields
.field private currentPointers:I

.field private final defaultMaxDistSq:F

.field private handler:Landroid/os/Handler;

.field private maxDistSq:F

.field private minDurationMs:J

.field private numberOfPointersRequired:I

.field private previousTime:J

.field private startTime:J

.field private startX:F

.field private startY:F


# direct methods
.method public static synthetic $r8$lambda$ndl1rtfPGrkDyRc7C8lkWiv0NNY(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->onHandle$lambda$2(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 10
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    mul-float/2addr p1, p1

    .line 27
    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->defaultMaxDistSq:F

    .line 28
    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->maxDistSq:F

    .line 29
    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    return-void
.end method

.method private final getAverageCoords(Landroid/view/MotionEvent;Z)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 183
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 50
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 184
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 182
    check-cast v1, Ljava/lang/Iterable;

    .line 50
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v3

    double-to-float p2, v3

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 187
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 188
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 186
    check-cast v1, Ljava/lang/Iterable;

    .line 51
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v0

    double-to-float p1, v0

    .line 53
    new-instance v0, Lkotlin/Pair;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v0, p2, :cond_4

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v0, v3, :cond_3

    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 71
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic getAverageCoords$default(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;Landroid/view/MotionEvent;ZILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords(Landroid/view/MotionEvent;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final onHandle$lambda$2(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->activate()V

    return-void
.end method


# virtual methods
.method public dispatchHandlerUpdate(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    .line 168
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchHandlerUpdate(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public dispatchStateChange(II)V
    .locals 2

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    .line 163
    invoke-super {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchStateChange(II)V

    return-void
.end method

.method public final getDuration()I
    .locals 4

    .line 12
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final getMinDurationMs()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    return-wide v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sourceEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->shouldActivateWithMouse(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->previousTime:J

    .line 81
    iput-wide v4, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startTime:J

    .line 82
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->begin()V

    .line 84
    invoke-static {p0, p2, v3, v1, v2}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords$default(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;Landroid/view/MotionEvent;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 85
    iput v4, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startX:F

    .line 86
    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startY:F

    .line 88
    iget p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    .line 92
    iget p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 94
    invoke-static {p0, p2, v3, v1, v2}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords$default(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;Landroid/view/MotionEvent;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 95
    iput v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startX:F

    .line 96
    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startY:F

    .line 98
    iget p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    iget v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    if-le p1, v5, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->fail()V

    .line 100
    iput v3, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    iget v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    if-ne p1, v5, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v4, :cond_5

    .line 105
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    .line 106
    iget-wide v4, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 107
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;)V

    iget-wide v5, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    .line 109
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->activate()V

    .line 112
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v4, 0x4

    if-eq p1, v0, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v5, 0xc

    if-ne p1, v5, :cond_6

    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v5, 0x6

    if-ne p1, v5, :cond_8

    .line 126
    iget p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 128
    iget v1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    if-ge p1, v1, :cond_7

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result p1

    if-eq p1, v4, :cond_7

    .line 129
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->fail()V

    .line 130
    iput v3, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    goto :goto_2

    .line 132
    :cond_7
    invoke-direct {p0, p2, v0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords(Landroid/view/MotionEvent;Z)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 133
    iput p2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startX:F

    .line 134
    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startY:F

    goto :goto_2

    .line 138
    :cond_8
    invoke-static {p0, p2, v3, v1, v2}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getAverageCoords$default(Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;Landroid/view/MotionEvent;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 140
    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startX:F

    sub-float/2addr p2, v0

    .line 141
    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->startY:F

    sub-float/2addr p1, v0

    mul-float/2addr p2, p2

    mul-float/2addr p1, p1

    add-float/2addr p2, p1

    .line 144
    iget p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->maxDistSq:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_d

    .line 145
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 146
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->cancel()V

    goto :goto_2

    .line 148
    :cond_9
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->fail()V

    goto :goto_2

    .line 113
    :cond_a
    :goto_1
    iget p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    .line 115
    iget-object p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_b

    .line 116
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 117
    iput-object v2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    .line 120
    :cond_b
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->getState()I

    move-result p1

    if-ne p1, v4, :cond_c

    .line 121
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->end()V

    goto :goto_2

    .line 123
    :cond_c
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->fail()V

    :cond_d
    :goto_2
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onReset()V

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->currentPointers:I

    return-void
.end method

.method protected onStateChange(II)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 156
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    iput-object p2, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public resetConfig()V
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->resetConfig()V

    const-wide/16 v0, 0x1f4

    .line 34
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    .line 35
    iget v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->defaultMaxDistSq:F

    iput v0, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->maxDistSq:F

    return-void
.end method

.method public final setMaxDist(F)Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;
    .locals 0

    mul-float/2addr p1, p1

    .line 39
    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->maxDistSq:F

    return-object p0
.end method

.method public final setMinDurationMs(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->minDurationMs:J

    return-void
.end method

.method public final setNumberOfPointers(I)Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;
    .locals 0

    .line 44
    iput p1, p0, Lcom/swmansion/gesturehandler/core/LongPressGestureHandler;->numberOfPointersRequired:I

    return-object p0
.end method
