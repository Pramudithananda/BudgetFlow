.class public final Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;
.super Ljava/lang/Object;
.source "AnimatedFactoryProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JZ\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0018\u0010\u000c\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;",
        "",
        "()V",
        "impl",
        "Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;",
        "implLoaded",
        "",
        "getAnimatedFactory",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "executorSupplier",
        "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "backingCache",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache;",
        "Lcom/facebook/cache/common/CacheKey;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "downscaleFrameToDrawableDimensions",
        "useBalancedAnimationStrategy",
        "animationFpsLimit",
        "",
        "serialExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;

.field private static impl:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

.field private static implLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->INSTANCE:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAnimatedFactory(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/imagepipeline/core/ExecutorSupplier;Lcom/facebook/imagepipeline/cache/CountingMemoryCache;ZZILjava/util/concurrent/ExecutorService;)Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;ZZI",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 32
    sget-boolean v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->implLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 34
    :try_start_0
    const-string v1, "com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x7

    .line 37
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    aput-object v3, v2, v0

    const-class v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 40
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 41
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 42
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 37
    const-class v3, Lcom/facebook/common/executors/SerialExecutorService;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 49
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 50
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 51
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p6

    .line 52
    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.facebook.imagepipeline.animated.factory.AnimatedFactory"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    .line 44
    sput-object p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->impl:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :catchall_0
    sget-object p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->impl:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    if-eqz p0, :cond_0

    .line 57
    sput-boolean v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->implLoaded:Z

    .line 60
    :cond_0
    sget-object p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->impl:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    return-object p0
.end method
