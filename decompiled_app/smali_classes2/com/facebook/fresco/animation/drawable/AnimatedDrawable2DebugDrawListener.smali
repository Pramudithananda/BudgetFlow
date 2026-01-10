.class public Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;
.super Ljava/lang/Object;
.source "AnimatedDrawable2DebugDrawListener.java"

# interfaces
.implements Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mDrawCalls:I

.field private mDuplicateFrames:I

.field private mLastFrameNumber:I

.field private mSkippedFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;

    sput-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mLastFrameNumber:I

    return-void
.end method


# virtual methods
.method public onDraw(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;Lcom/facebook/fresco/animation/frame/FrameScheduler;IZZJJJJJJJ)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p3

    .line 42
    invoke-virtual {p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getAnimationBackend()Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getAnimationBackend()Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationBackend;->getFrameCount()I

    move-result v2

    sub-long v3, p8, p10

    .line 48
    iget v5, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mDrawCalls:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mDrawCalls:I

    .line 49
    iget v5, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mLastFrameNumber:I

    add-int/lit8 v6, v5, 0x1

    rem-int/2addr v6, v2

    if-eq v6, v1, :cond_3

    if-ne v5, v1, :cond_1

    .line 53
    iget v2, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mDuplicateFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mDuplicateFrames:I

    goto :goto_0

    :cond_1
    sub-int v5, v1, v6

    .line 55
    rem-int/2addr v5, v2

    if-gez v5, :cond_2

    add-int/2addr v5, v2

    .line 59
    :cond_2
    iget v2, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mSkippedFrames:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mSkippedFrames:I

    .line 62
    :cond_3
    :goto_0
    iput v1, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mLastFrameNumber:I

    .line 63
    sget-object v2, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->TAG:Ljava/lang/Class;

    .line 68
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 69
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 70
    invoke-interface {p2}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getLoopDurationMs()J

    move-result-wide v7

    rem-long v7, p8, v7

    .line 71
    invoke-interface/range {p2 .. p3}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getTargetRenderTimeMs(I)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 70
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sub-long v7, p14, p12

    .line 72
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mDuplicateFrames:I

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v8, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mSkippedFrames:I

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->mDrawCalls:I

    .line 76
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 77
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 78
    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 79
    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object p1, v5

    move-object p2, v6

    move-object/from16 p3, v1

    move-object/from16 p4, v7

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    filled-new-array/range {p1 .. p11}, [Ljava/lang/Object;

    move-result-object v1

    .line 63
    const-string v3, "draw: frame: %2d, drawn: %b, delay: %3d ms, rendering: %3d ms, prev: %3d ms ago, duplicates: %3d, skipped: %3d, draw calls: %4d, anim time: %6d ms, next start: %6d ms, next scheduled: %6d ms"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
