.class public interface abstract Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
.super Ljava/lang/Object;
.source "BitmapFrameCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$DefaultImpls;,
        Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u001dJ\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0011\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u00a6\u0002J(\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H&J\u0018\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c2\u0006\u0010\n\u001a\u00020\u0003H&J\u0018\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c2\u0006\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u0012\u001a\u00020\tH\u0016J\"\u0010\u0013\u001a\u00020\t2\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u0015H\u0016J&\u0010\u0016\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00032\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0018\u001a\u00020\u0003H&J&\u0010\u0019\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00032\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0018\u001a\u00020\u0003H&J\u0012\u0010\u001a\u001a\u00020\u00072\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
        "",
        "sizeInBytes",
        "",
        "getSizeInBytes",
        "()I",
        "clear",
        "",
        "contains",
        "",
        "frameNumber",
        "getBitmapToReuseForFrame",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "width",
        "height",
        "getCachedFrame",
        "getFallbackFrame",
        "isAnimationReady",
        "onAnimationPrepared",
        "frameBitmaps",
        "",
        "onFramePrepared",
        "bitmapReference",
        "frameType",
        "onFrameRendered",
        "setFrameCacheListener",
        "frameCacheListener",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;",
        "FrameCacheListener",
        "animated-drawable_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract contains(I)Z
.end method

.method public abstract getBitmapToReuseForFrame(III)Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCachedFrame(I)Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFallbackFrame(I)Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract isAnimationReady()Z
.end method

.method public abstract onAnimationPrepared(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public abstract onFramePrepared(ILcom/facebook/common/references/CloseableReference;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onFrameRendered(ILcom/facebook/common/references/CloseableReference;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setFrameCacheListener(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;)V
.end method
