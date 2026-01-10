.class public final Lcom/swmansion/gesturehandler/core/PanGestureHandler;
.super Lcom/swmansion/gesturehandler/core/GestureHandler;
.source "PanGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "Lcom/swmansion/gesturehandler/core/PanGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u0000 T2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001TB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u000fH\u0016J\u0008\u00107\u001a\u000205H\u0014J\u0018\u00108\u001a\u0002052\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:H\u0014J\u0008\u0010<\u001a\u000205H\u0014J\u0008\u0010=\u001a\u000205H\u0016J\u0008\u0010>\u001a\u000205H\u0016J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0006J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010B\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010C\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\nJ\u000e\u0010D\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010E\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010F\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010G\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010H\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\nJ\u000e\u0010I\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\nJ\u000e\u0010J\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\nJ\u000e\u0010M\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001aJ\u000e\u0010N\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\nJ\u000e\u0010P\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\nJ\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\nJ\u0008\u0010R\u001a\u00020\u000fH\u0002J\u0008\u0010S\u001a\u00020\u000fH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010&\u001a\u00020%2\u0006\u0010$\u001a\u00020%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010)\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0011\u0010,\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010+R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00100\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010+R\u001e\u00102\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010+\u00a8\u0006U"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/PanGestureHandler;",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "activateAfterLongPress",
        "",
        "activateDelayed",
        "Ljava/lang/Runnable;",
        "activeOffsetXEnd",
        "",
        "activeOffsetXStart",
        "activeOffsetYEnd",
        "activeOffsetYStart",
        "averageTouches",
        "",
        "defaultMinDistSq",
        "failOffsetXEnd",
        "failOffsetXStart",
        "failOffsetYEnd",
        "failOffsetYStart",
        "handler",
        "Landroid/os/Handler;",
        "lastX",
        "lastY",
        "maxPointers",
        "",
        "minDistSq",
        "minPointers",
        "minVelocitySq",
        "minVelocityX",
        "minVelocityY",
        "offsetX",
        "offsetY",
        "startX",
        "startY",
        "<set-?>",
        "Lcom/swmansion/gesturehandler/core/StylusData;",
        "stylusData",
        "getStylusData",
        "()Lcom/swmansion/gesturehandler/core/StylusData;",
        "translationX",
        "getTranslationX",
        "()F",
        "translationY",
        "getTranslationY",
        "velocityTracker",
        "Landroid/view/VelocityTracker;",
        "velocityX",
        "getVelocityX",
        "velocityY",
        "getVelocityY",
        "activate",
        "",
        "force",
        "onCancel",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "sourceEvent",
        "onReset",
        "resetConfig",
        "resetProgress",
        "setActivateAfterLongPress",
        "time",
        "setActiveOffsetXEnd",
        "setActiveOffsetXStart",
        "setActiveOffsetYEnd",
        "setActiveOffsetYStart",
        "setAverageTouches",
        "setFailOffsetXEnd",
        "setFailOffsetXStart",
        "setFailOffsetYEnd",
        "setFailOffsetYStart",
        "setMaxPointers",
        "setMinDist",
        "minDist",
        "setMinPointers",
        "setMinVelocity",
        "minVelocity",
        "setMinVelocityX",
        "setMinVelocityY",
        "shouldActivate",
        "shouldFail",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

.field private static final DEFAULT_ACTIVATE_AFTER_LONG_PRESS:J = 0x0L

.field private static final DEFAULT_MAX_POINTERS:I = 0xa

.field private static final DEFAULT_MIN_POINTERS:I = 0x1

.field private static final MAX_VALUE_IGNORE:F = 1.4E-45f

.field private static final MIN_VALUE_IGNORE:F = 3.4028235E38f


# instance fields
.field private activateAfterLongPress:J

.field private final activateDelayed:Ljava/lang/Runnable;

.field private activeOffsetXEnd:F

.field private activeOffsetXStart:F

.field private activeOffsetYEnd:F

.field private activeOffsetYStart:F

.field private averageTouches:Z

.field private final defaultMinDistSq:F

.field private failOffsetXEnd:F

.field private failOffsetXStart:F

.field private failOffsetYEnd:F

.field private failOffsetYStart:F

.field private handler:Landroid/os/Handler;

.field private lastX:F

.field private lastY:F

.field private maxPointers:I

.field private minDistSq:F

.field private minPointers:I

.field private minVelocitySq:F

.field private minVelocityX:F

.field private minVelocityY:F

.field private offsetX:F

.field private offsetY:F

.field private startX:F

.field private startY:F

.field private stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private velocityX:F

.field private velocityY:F


# direct methods
.method public static synthetic $r8$lambda$wD3zE0XW5oKrqufU-fnxEsh9z18(Lcom/swmansion/gesturehandler/core/PanGestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateDelayed$lambda$0(Lcom/swmansion/gesturehandler/core/PanGestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 12
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 24
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    .line 25
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    .line 26
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    .line 27
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    .line 28
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    .line 29
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    .line 30
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    .line 31
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    .line 32
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    .line 33
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    .line 34
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    const/16 v0, 0xa

    .line 36
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->maxPointers:I

    .line 46
    new-instance v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/core/PanGestureHandler;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateDelayed:Ljava/lang/Runnable;

    .line 48
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

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    .line 64
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    int-to-float p1, p1

    .line 66
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->defaultMinDistSq:F

    .line 67
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    return-void
.end method

.method private static final activateDelayed$lambda$0(Lcom/swmansion/gesturehandler/core/PanGestureHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activate()V

    return-void
.end method

.method private final shouldActivate()Z
    .locals 7

    .line 158
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    .line 159
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v3, v1, v2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    return v4

    .line 162
    :cond_1
    :goto_0
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    const/4 v3, 0x1

    cmpg-float v5, v1, v3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    return v4

    .line 165
    :cond_3
    :goto_1
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    add-float/2addr v1, v5

    .line 166
    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    cmpg-float v6, v5, v2

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    cmpg-float v5, v1, v5

    if-gez v5, :cond_5

    return v4

    .line 169
    :cond_5
    :goto_2
    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    cmpg-float v3, v5, v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    cmpl-float v3, v1, v5

    if-lez v3, :cond_7

    return v4

    :cond_7
    :goto_3
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 173
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    cmpg-float v3, v1, v2

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    return v4

    .line 176
    :cond_9
    :goto_4
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityX:F

    .line 177
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    cmpg-float v3, v1, v2

    const/4 v5, 0x0

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    cmpg-float v3, v1, v5

    if-gez v3, :cond_b

    cmpg-float v3, v0, v1

    if-lez v3, :cond_c

    :cond_b
    cmpg-float v3, v5, v1

    if-gtz v3, :cond_d

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_d

    :cond_c
    return v4

    .line 182
    :cond_d
    :goto_5
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityY:F

    .line 183
    iget v3, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    cmpg-float v6, v3, v2

    if-nez v6, :cond_e

    goto :goto_6

    :cond_e
    cmpg-float v6, v3, v5

    if-gez v6, :cond_f

    cmpg-float v6, v0, v3

    if-lez v6, :cond_10

    :cond_f
    cmpg-float v5, v5, v3

    if-gtz v5, :cond_11

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_11

    :cond_10
    return v4

    :cond_11
    :goto_6
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 189
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    cmpg-float v2, v1, v2

    if-nez v2, :cond_12

    goto :goto_7

    :cond_12
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13

    goto :goto_8

    :cond_13
    :goto_7
    const/4 v4, 0x0

    :goto_8
    return v4
.end method

.method private final shouldFail()Z
    .locals 7

    .line 193
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    .line 194
    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    add-float/2addr v1, v2

    .line 196
    iget-wide v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_1

    mul-float v2, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v2, v4

    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->defaultMinDistSq:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 197
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return v3

    .line 200
    :cond_1
    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    const/4 v4, 0x1

    cmpg-float v5, v2, v4

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    return v3

    .line 203
    :cond_3
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v6, v2, v5

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    return v3

    .line 206
    :cond_5
    :goto_1
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    cmpg-float v2, v0, v4

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    return v3

    .line 209
    :cond_7
    :goto_2
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    cmpg-float v2, v0, v5

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    cmpl-float v0, v1, v0

    if-lez v0, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v3, 0x0

    :goto_4
    return v3
.end method


# virtual methods
.method public activate(Z)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->resetProgress()V

    .line 291
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate(Z)V

    return-void
.end method

.method public final getStylusData()Lcom/swmansion/gesturehandler/core/StylusData;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    return-object v0
.end method

.method public final getTranslationX()F
    .locals 2

    .line 18
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getTranslationY()F
    .locals 2

    .line 20
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getVelocityX()F
    .locals 1

    .line 13
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityX:F

    return v0
.end method

.method public final getVelocityY()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityY:F

    return v0
.end method

.method protected onCancel()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, p2}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->shouldActivateWithMouse(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 218
    sget-object v0, Lcom/swmansion/gesturehandler/core/StylusData;->Companion:Lcom/swmansion/gesturehandler/core/StylusData$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/core/StylusData$Companion;->fromEvent(Landroid/view/MotionEvent;)Lcom/swmansion/gesturehandler/core/StylusData;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->getState()I

    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    .line 234
    sget-object v4, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v4, p2, v5}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    .line 235
    sget-object v4, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v4, p2, v5}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    goto :goto_0

    .line 225
    :cond_2
    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    .line 226
    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iget v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    .line 229
    sget-object v4, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v4, p2, v5}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    .line 230
    sget-object v4, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    invoke-virtual {v4, p2, v5}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    .line 231
    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iput v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    .line 232
    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    :goto_0
    if-nez p1, :cond_4

    .line 237
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    iget v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    if-lt v4, v5, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->resetProgress()V

    const/4 v4, 0x0

    .line 239
    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetX:F

    .line 240
    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->offsetY:F

    .line 241
    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityX:F

    .line 242
    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityY:F

    .line 243
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 244
    sget-object v5, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

    invoke-static {v5, v4, p2}, Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;->access$addVelocityMovement(Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 245
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->begin()V

    .line 247
    iget-wide v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 248
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    if-nez v4, :cond_3

    .line 249
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    .line 251
    :cond_3
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateDelayed:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 253
    :cond_4
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5

    .line 254
    sget-object v5, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;

    invoke-static {v5, v4, p2}, Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;->access$addVelocityMovement(Lcom/swmansion/gesturehandler/core/PanGestureHandler$Companion;Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    .line 255
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 256
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityX:F

    .line 257
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityY:F

    :cond_5
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eq v0, v4, :cond_b

    const/16 v4, 0xc

    if-ne v0, v4, :cond_6

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_8

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    iget v4, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->maxPointers:I

    if-le v3, v4, :cond_8

    if-ne p1, v5, :cond_7

    .line 268
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->cancel()V

    goto :goto_3

    .line 270
    :cond_7
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->fail()V

    goto :goto_3

    :cond_8
    if-ne v0, v2, :cond_9

    if-ne p1, v5, :cond_9

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    if-ge p2, v0, :cond_9

    .line 276
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->fail()V

    goto :goto_3

    :cond_9
    if-ne p1, v1, :cond_d

    .line 278
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->shouldFail()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 279
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->fail()V

    goto :goto_3

    .line 280
    :cond_a
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->shouldActivate()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 281
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activate()V

    goto :goto_3

    :cond_b
    :goto_2
    if-ne p1, v5, :cond_c

    .line 261
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->end()V

    goto :goto_3

    .line 263
    :cond_c
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->fail()V

    :cond_d
    :goto_3
    return-void
.end method

.method protected onReset()V
    .locals 15

    .line 299
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 302
    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 305
    :cond_1
    new-instance v0, Lcom/swmansion/gesturehandler/core/StylusData;

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/swmansion/gesturehandler/core/StylusData;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->stylusData:Lcom/swmansion/gesturehandler/core/StylusData;

    return-void
.end method

.method public resetConfig()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->resetConfig()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 72
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    const/4 v1, 0x1

    .line 73
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    .line 74
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    .line 75
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    .line 76
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    .line 77
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    .line 78
    iput v1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    .line 79
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    .line 80
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    .line 81
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    .line 82
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    .line 83
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->defaultMinDistSq:F

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    const/4 v0, 0x1

    .line 84
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    const/16 v0, 0xa

    .line 85
    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->maxPointers:I

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    return-void
.end method

.method public resetProgress()V
    .locals 1

    .line 309
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastX:F

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startX:F

    .line 310
    iget v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->lastY:F

    iput v0, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->startY:F

    return-void
.end method

.method public final setActivateAfterLongPress(J)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 138
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 139
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activateAfterLongPress:J

    return-object p0
.end method

.method public final setActiveOffsetXEnd(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 94
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 95
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXEnd:F

    return-object p0
.end method

.method public final setActiveOffsetXStart(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 90
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 91
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetXStart:F

    return-object p0
.end method

.method public final setActiveOffsetYEnd(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 110
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 111
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYEnd:F

    return-object p0
.end method

.method public final setActiveOffsetYStart(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 106
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 107
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->activeOffsetYStart:F

    return-object p0
.end method

.method public final setAverageTouches(Z)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 134
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 135
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->averageTouches:Z

    return-object p0
.end method

.method public final setFailOffsetXEnd(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 102
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 103
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXEnd:F

    return-object p0
.end method

.method public final setFailOffsetXStart(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 98
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 99
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetXStart:F

    return-object p0
.end method

.method public final setFailOffsetYEnd(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 118
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 119
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYEnd:F

    return-object p0
.end method

.method public final setFailOffsetYStart(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 114
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 115
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->failOffsetYStart:F

    return-object p0
.end method

.method public final setMaxPointers(I)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 130
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 131
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->maxPointers:I

    return-object p0
.end method

.method public final setMinDist(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 122
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    mul-float/2addr p1, p1

    .line 123
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minDistSq:F

    return-object p0
.end method

.method public final setMinPointers(I)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 126
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 127
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minPointers:I

    return-object p0
.end method

.method public final setMinVelocity(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 145
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    mul-float/2addr p1, p1

    .line 146
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocitySq:F

    return-object p0
.end method

.method public final setMinVelocityX(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 149
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 150
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityX:F

    return-object p0
.end method

.method public final setMinVelocityY(F)Lcom/swmansion/gesturehandler/core/PanGestureHandler;
    .locals 1

    .line 153
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;

    .line 154
    iput p1, p0, Lcom/swmansion/gesturehandler/core/PanGestureHandler;->minVelocityY:F

    return-object p0
.end method
