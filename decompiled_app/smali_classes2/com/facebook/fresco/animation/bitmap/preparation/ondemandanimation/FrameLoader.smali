.class public interface abstract Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
.super Ljava/lang/Object;
.source "FrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\'J\u0008\u0010\u0010\u001a\u00020\u0007H\u0016J&\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0013H\'R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;",
        "",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "getAnimationInformation",
        "()Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "clear",
        "",
        "compressToFps",
        "fps",
        "",
        "getFrame",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;",
        "frameNumber",
        "width",
        "height",
        "onStop",
        "prepareFrames",
        "onAnimationLoaded",
        "Lkotlin/Function0;",
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

.method public abstract compressToFps(I)V
.end method

.method public abstract getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;
.end method

.method public abstract getFrame(III)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
.end method

.method public abstract onStop()V
.end method

.method public abstract prepareFrames(IILkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
