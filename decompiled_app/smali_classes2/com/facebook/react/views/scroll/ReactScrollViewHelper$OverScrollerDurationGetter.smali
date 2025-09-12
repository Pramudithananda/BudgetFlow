.class final Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;
.super Landroid/widget/OverScroller;
.source "ReactScrollViewHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/scroll/ReactScrollViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverScrollerDurationGetter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J0\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;",
        "Landroid/widget/OverScroller;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "currentScrollAnimationDuration",
        "",
        "scrollAnimationDuration",
        "getScrollAnimationDuration",
        "()I",
        "startScroll",
        "",
        "startX",
        "startY",
        "dx",
        "dy",
        "duration",
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
.field private currentScrollAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 492
    invoke-direct {p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xfa

    .line 494
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;->currentScrollAnimationDuration:I

    return-void
.end method


# virtual methods
.method public final getScrollAnimationDuration()I
    .locals 1

    const/4 v0, 0x0

    .line 500
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 501
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;->currentScrollAnimationDuration:I

    return v0
.end method

.method public startScroll(IIIII)V
    .locals 0

    .line 505
    iput p5, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;->currentScrollAnimationDuration:I

    return-void
.end method
