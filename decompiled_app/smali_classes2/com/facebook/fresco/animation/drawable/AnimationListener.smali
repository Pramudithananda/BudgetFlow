.class public interface abstract Lcom/facebook/fresco/animation/drawable/AnimationListener;
.super Ljava/lang/Object;
.source "AnimationListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/AnimationListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/drawable/AnimationListener;",
        "",
        "onAnimationFrame",
        "",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "frameNumber",
        "",
        "onAnimationLoaded",
        "onAnimationRepeat",
        "onAnimationReset",
        "onAnimationStart",
        "onAnimationStop",
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
.method public abstract onAnimationFrame(Landroid/graphics/drawable/Drawable;I)V
.end method

.method public abstract onAnimationLoaded()V
.end method

.method public abstract onAnimationRepeat(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onAnimationReset(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onAnimationStart(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onAnimationStop(Landroid/graphics/drawable/Drawable;)V
.end method
