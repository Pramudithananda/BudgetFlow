.class public final Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
.super Ljava/lang/Object;
.source "ReactScrollViewHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/scroll/ReactScrollViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReactScrollViewScrollState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0003J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0003R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019\"\u0004\u0008\u001c\u0010\u0004\u00a8\u0006#"
    }
    d2 = {
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;",
        "",
        "layoutDirection",
        "",
        "(I)V",
        "decelerationRate",
        "",
        "getDecelerationRate",
        "()F",
        "setDecelerationRate",
        "(F)V",
        "finalAnimatedPositionScroll",
        "Landroid/graphics/Point;",
        "getFinalAnimatedPositionScroll",
        "()Landroid/graphics/Point;",
        "isCanceled",
        "",
        "()Z",
        "setCanceled",
        "(Z)V",
        "isFinished",
        "setFinished",
        "lastStateUpdateScroll",
        "getLastStateUpdateScroll",
        "getLayoutDirection",
        "()I",
        "scrollAwayPaddingTop",
        "getScrollAwayPaddingTop",
        "setScrollAwayPaddingTop",
        "setFinalAnimatedPositionScroll",
        "finalAnimatedPositionScrollX",
        "finalAnimatedPositionScrollY",
        "setLastStateUpdateScroll",
        "lastStateUpdateScrollX",
        "lastStateUpdateScrollY",
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


# instance fields
.field private decelerationRate:F

.field private final finalAnimatedPositionScroll:Landroid/graphics/Point;

.field private isCanceled:Z

.field private isFinished:Z

.field private final lastStateUpdateScroll:Landroid/graphics/Point;

.field private final layoutDirection:I

.field private scrollAwayPaddingTop:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->layoutDirection:I

    .line 518
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->finalAnimatedPositionScroll:Landroid/graphics/Point;

    .line 522
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->lastStateUpdateScroll:Landroid/graphics/Point;

    const/4 p1, 0x1

    .line 526
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isFinished:Z

    const p1, 0x3f7c28f6    # 0.985f

    .line 528
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->decelerationRate:F

    return-void
.end method


# virtual methods
.method public final getDecelerationRate()F
    .locals 1

    .line 528
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->decelerationRate:F

    return v0
.end method

.method public final getFinalAnimatedPositionScroll()Landroid/graphics/Point;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->finalAnimatedPositionScroll:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getLastStateUpdateScroll()Landroid/graphics/Point;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->lastStateUpdateScroll:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getLayoutDirection()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->layoutDirection:I

    return v0
.end method

.method public final getScrollAwayPaddingTop()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->scrollAwayPaddingTop:I

    return v0
.end method

.method public final isCanceled()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isCanceled:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isFinished:Z

    return v0
.end method

.method public final setCanceled(Z)V
    .locals 0

    .line 524
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isCanceled:Z

    return-void
.end method

.method public final setDecelerationRate(F)V
    .locals 0

    .line 528
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->decelerationRate:F

    return-void
.end method

.method public final setFinalAnimatedPositionScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->finalAnimatedPositionScroll:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-object p0
.end method

.method public final setFinished(Z)V
    .locals 0

    .line 526
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->isFinished:Z

    return-void
.end method

.method public final setLastStateUpdateScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->lastStateUpdateScroll:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-object p0
.end method

.method public final setScrollAwayPaddingTop(I)V
    .locals 0

    .line 520
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->scrollAwayPaddingTop:I

    return-void
.end method
