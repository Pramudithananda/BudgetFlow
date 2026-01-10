.class public Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;
.super Lcom/facebook/fresco/ui/common/BaseControllerListener2;
.source "ImagePerfControllerListener2.java"

# interfaces
.implements Lcom/facebook/fresco/ui/common/ImagePerfNotifierHolder;
.implements Lcom/facebook/fresco/ui/common/OnDrawControllerListener;
.implements Ljava/io/Closeable;
.implements Lcom/facebook/drawee/drawable/VisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/fresco/ui/common/BaseControllerListener2<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;",
        "Lcom/facebook/fresco/ui/common/ImagePerfNotifierHolder;",
        "Lcom/facebook/fresco/ui/common/OnDrawControllerListener<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;",
        "Ljava/io/Closeable;",
        "Lcom/facebook/drawee/drawable/VisibilityCallback;"
    }
.end annotation


# static fields
.field private static final WHAT_STATUS:I = 0x1

.field private static final WHAT_VISIBILITY:I = 0x2

.field private static sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mAsyncLogging:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

.field private final mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

.field private mLocalImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReportVisibleOnSubmitAndRelease:Z


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;Lcom/facebook/common/internal/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Lcom/facebook/fresco/ui/common/ImagePerfState;",
            "Lcom/facebook/fresco/ui/common/ImagePerfNotifier;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;-><init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;Lcom/facebook/common/internal/Supplier;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;Lcom/facebook/common/internal/Supplier;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Lcom/facebook/fresco/ui/common/ImagePerfState;",
            "Lcom/facebook/fresco/ui/common/ImagePerfNotifier;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/BaseControllerListener2;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mLocalImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 118
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    .line 119
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 120
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 121
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mAsyncLogging:Lcom/facebook/common/internal/Supplier;

    .line 122
    iput-boolean p5, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mReportVisibleOnSubmitAndRelease:Z

    return-void
.end method

.method private declared-synchronized initHandler()V
    .locals 4

    monitor-enter p0

    .line 296
    :try_start_0
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 297
    monitor-exit p0

    return-void

    .line 299
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImagePerfControllerListener2Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 301
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    .line 302
    new-instance v1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mLocalImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;-><init>(Landroid/os/Looper;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;)V

    sput-object v1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private reportViewInvisible(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setVisible(Z)V

    .line 255
    invoke-virtual {p1, p2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setInvisibilityEventTimeMs(J)V

    .line 257
    sget-object p2, Lcom/facebook/fresco/ui/common/VisibilityState;->INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateVisibility(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    return-void
.end method

.method private shouldDispatchAsync()Z
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mAsyncLogging:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    sget-object v1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    if-nez v1, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->initHandler()V

    :cond_0
    return v0
.end method

.method private updateStatus(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V
    .locals 2

    .line 261
    invoke-virtual {p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageLoadStatus(Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 263
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->shouldDispatchAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 265
    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    invoke-virtual {p2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->getValue()I

    move-result p2

    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 267
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    sget-object p1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    invoke-interface {v0, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 271
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mLocalImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    if-eqz v0, :cond_1

    .line 273
    invoke-interface {v0, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateVisibility(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V
    .locals 2

    .line 279
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->shouldDispatchAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 281
    iput v1, v0, Landroid/os/Message;->what:I

    .line 282
    invoke-virtual {p2}, Lcom/facebook/fresco/ui/common/VisibilityState;->getValue()I

    move-result p2

    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 283
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    sget-object p1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    invoke-interface {v0, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyListenersOfVisibilityStateUpdate(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    .line 288
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mLocalImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    if-eqz v0, :cond_1

    .line 290
    invoke-interface {v0, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyListenersOfVisibilityStateUpdate(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->resetState()V

    return-void
.end method

.method public onDraw()V
    .locals 0

    return-void
.end method

.method public onEmptyEvent(Ljava/lang/Object;)V
    .locals 2

    .line 315
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 316
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-virtual {p1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageLoadStatus(Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 317
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-interface {v0, p1, v1}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 318
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mLocalImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    if-eqz v0, :cond_0

    .line 320
    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-interface {v0, p1, v1}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 188
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 190
    invoke-virtual {v2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 192
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerFailureTimeMs(J)V

    .line 193
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setErrorThrowable(Ljava/lang/Throwable;)V

    .line 196
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateStatus(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 198
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->reportViewInvisible(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 169
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 171
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 173
    invoke-virtual {v2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 175
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerFinalImageSetTimeMs(J)V

    .line 176
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequestEndTimeMs(J)V

    .line 177
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageInfo(Ljava/lang/Object;)V

    .line 180
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateStatus(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    return-void
.end method

.method public onImageDrawn(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Lcom/facebook/fresco/ui/common/DimensionsInfo;)V
    .locals 2

    .line 227
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 229
    invoke-virtual {p2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {p1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageDrawTimeMs(J)V

    .line 231
    invoke-virtual {p2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setDimensionsInfo(Lcom/facebook/fresco/ui/common/DimensionsInfo;)V

    .line 232
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->DRAW:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-direct {p0, p2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateStatus(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    return-void
.end method

.method public bridge synthetic onImageDrawn(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/DimensionsInfo;)V
    .locals 0

    .line 34
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->onImageDrawn(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Lcom/facebook/fresco/ui/common/DimensionsInfo;)V

    return-void
.end method

.method public onIntermediateImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 157
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 159
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerIntermediateImageSetTimeMs(J)V

    .line 160
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageInfo(Ljava/lang/Object;)V

    .line 163
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateStatus(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    return-void
.end method

.method public bridge synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->onIntermediateImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;)V

    return-void
.end method

.method public onRelease(Ljava/lang/String;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3
    .param p2    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 203
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 205
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 207
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 208
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->getImageLoadStatus()Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    move-result-object p1

    .line 211
    sget-object p2, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->DRAW:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    if-eq p1, p2, :cond_0

    .line 214
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerCancelTimeMs(J)V

    .line 216
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->CANCELED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateStatus(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 218
    :cond_0
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateStatus(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 220
    iget-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mReportVisibleOnSubmitAndRelease:Z

    if-eqz p1, :cond_1

    .line 221
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->reportViewInvisible(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    :cond_1
    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 138
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 139
    invoke-virtual {v2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->resetPointsTimestamps()V

    .line 141
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerSubmitTimeMs(J)V

    .line 142
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setCallerContext(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 147
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateStatus(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 148
    iget-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mReportVisibleOnSubmitAndRelease:Z

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->reportViewVisible(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    :cond_0
    return-void
.end method

.method public onVisibilityChange(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->reportViewVisible(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->reportViewInvisible(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    :goto_0
    return-void
.end method

.method public reportViewVisible(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V
    .locals 1

    const/4 v0, 0x1

    .line 237
    invoke-virtual {p1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setVisible(Z)V

    .line 238
    invoke-virtual {p1, p2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setVisibilityEventTimeMs(J)V

    .line 240
    sget-object p2, Lcom/facebook/fresco/ui/common/VisibilityState;->VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->updateVisibility(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    return-void
.end method

.method public resetState()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mImagePerfState:Lcom/facebook/fresco/ui/common/ImagePerfState;

    invoke-virtual {v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->reset()V

    return-void
.end method

.method public setImagePerfNotifier(Lcom/facebook/fresco/ui/common/ImagePerfNotifier;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/ui/common/ImagePerfNotifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->mLocalImagePerfNotifier:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 128
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->sHandler:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;->setImagePerfNotifier(Lcom/facebook/fresco/ui/common/ImagePerfNotifier;)V

    :cond_0
    return-void
.end method
