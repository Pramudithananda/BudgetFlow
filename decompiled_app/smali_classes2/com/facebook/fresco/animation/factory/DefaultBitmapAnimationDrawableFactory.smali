.class public Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;
.super Ljava/lang/Object;
.source "DefaultBitmapAnimationDrawableFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/drawable/DrawableFactory;
.implements Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;


# static fields
.field public static final CACHING_STRATEGY_FRESCO_CACHE:I = 0x1

.field public static final CACHING_STRATEGY_FRESCO_CACHE_NO_REUSING:I = 0x2

.field public static final CACHING_STRATEGY_KEEP_LAST_CACHE:I = 0x3

.field public static final CACHING_STRATEGY_NO_CACHE:I


# instance fields
.field private final mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

.field private final mAnimationFpsLimit:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachingStrategySupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownscaleFrameToDrawableDimensions:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorServiceForFramePreparing:Ljava/util/concurrent/ExecutorService;

.field private final mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mNumberOfFramesToPrepareSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private final mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mUseDeepEqualsForCacheKey:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseNewBitmapRender:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final useRendererAnimatedDrawable:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/imagepipeline/cache/CountingMemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_FALSE:Lcom/facebook/common/internal/Supplier;

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->useRendererAnimatedDrawable:Lcom/facebook/common/internal/Supplier;

    .line 97
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 98
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mExecutorServiceForFramePreparing:Ljava/util/concurrent/ExecutorService;

    .line 100
    iput-object p4, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 101
    iput-object p5, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 102
    iput-object p6, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    .line 103
    iput-object p7, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mCachingStrategySupplier:Lcom/facebook/common/internal/Supplier;

    .line 104
    iput-object p8, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mNumberOfFramesToPrepareSupplier:Lcom/facebook/common/internal/Supplier;

    .line 105
    iput-object p9, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mUseDeepEqualsForCacheKey:Lcom/facebook/common/internal/Supplier;

    .line 106
    iput-object p10, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mUseNewBitmapRender:Lcom/facebook/common/internal/Supplier;

    .line 107
    iput-object p12, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mAnimationFpsLimit:Lcom/facebook/common/internal/Supplier;

    .line 108
    iput-object p11, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mDownscaleFrameToDrawableDimensions:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method private createAnimatedDrawableBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    .locals 4

    .line 213
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v2

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;->get(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object p1

    return-object p1
.end method

.method private createAnimatedFrameCache(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;
    .locals 3

    .line 234
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    new-instance v1, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mUseDeepEqualsForCacheKey:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v2}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;-><init>(IZ)V

    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;-><init>(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V

    return-object v0
.end method

.method private createAnimationBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Bitmap$Config;Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .locals 10
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/fresco/vito/options/ImageOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 154
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->createAnimatedDrawableBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object v0

    .line 155
    new-instance v7, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;

    invoke-direct {v7, v0}, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->createBitmapFrameCache(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    move-result-object v8

    .line 159
    new-instance v9, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mUseNewBitmapRender:Lcom/facebook/common/internal/Supplier;

    .line 161
    invoke-interface {v1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v9, v8, v0, v1}, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;-><init>(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Z)V

    .line 163
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mNumberOfFramesToPrepareSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 167
    new-instance v2, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;

    invoke-direct {v2, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;-><init>(I)V

    .line 169
    invoke-direct {p0, v9, p2}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->createBitmapFramePreparer(Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    move-object v2, p2

    :goto_0
    if-eqz p3, :cond_1

    .line 174
    invoke-virtual {p3}, Lcom/facebook/fresco/vito/options/ImageOptions;->getRoundingOptions()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v1

    .line 177
    :goto_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mUseNewBitmapRender:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 180
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getSource()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;

    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mAnimationFpsLimit:Lcom/facebook/common/internal/Supplier;

    .line 183
    invoke-interface {v1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v5, p1, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;-><init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;I)V

    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mDownscaleFrameToDrawableDimensions:Lcom/facebook/common/internal/Supplier;

    .line 184
    invoke-interface {p1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, v0

    move-object v3, v7

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;-><init>(Ljava/lang/String;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;Z)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 187
    :goto_2
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mUseNewBitmapRender:Lcom/facebook/common/internal/Supplier;

    .line 193
    invoke-interface {v1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, p1

    move-object v3, v8

    move-object v4, v7

    move-object v5, v9

    move-object v7, v0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;-><init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V

    .line 198
    iget-object p2, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    iget-object p3, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, p2, p3}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->createForBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/common/time/MonotonicClock;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;

    move-result-object p1

    return-object p1
.end method

.method private createBitmapFrameCache(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mCachingStrategySupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 228
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/cache/NoOpCache;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/cache/NoOpCache;-><init>()V

    return-object p1

    .line 225
    :cond_0
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;-><init>()V

    return-object p1

    .line 223
    :cond_1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->createAnimatedFrameCache(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;Z)V

    return-object v0

    .line 221
    :cond_2
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->createAnimatedFrameCache(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;Z)V

    return-object v0
.end method

.method private createBitmapFramePreparer(Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;
    .locals 3
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 204
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->mExecutorServiceForFramePreparing:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;-><init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public createDrawable(Landroid/content/res/Resources;Lcom/facebook/imagepipeline/image/CloseableImage;Lcom/facebook/fresco/vito/options/ImageOptions;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 135
    check-cast p2, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    .line 136
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->getImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getAnimatedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    :goto_0
    invoke-direct {p0, p2, p1, p3}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->createAnimationBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Bitmap$Config;Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->useRendererAnimatedDrawable:Lcom/facebook/common/internal/Supplier;

    invoke-interface {p2}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 143
    new-instance p2, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;

    invoke-direct {p2, p1}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    return-object p2

    .line 145
    :cond_1
    new-instance p2, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-direct {p2, p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    return-object p2
.end method

.method public createDrawable(Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 118
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    .line 119
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->getImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getAnimatedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 121
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->createAnimationBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Bitmap$Config;Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;->useRendererAnimatedDrawable:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;

    invoke-direct {v0, p1}, Lcom/facebook/fresco/animation/drawable/KAnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    return-object v0

    .line 128
    :cond_1
    new-instance v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-direct {v0, p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    return-object v0
.end method

.method public supportsImageType(Lcom/facebook/imagepipeline/image/CloseableImage;)Z
    .locals 0

    .line 113
    instance-of p1, p1, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    return p1
.end method
