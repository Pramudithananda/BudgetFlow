.class public final Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;,
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;,
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,571:1\n40#2,9:572\n*S KotlinDebug\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig\n*L\n161#1:572,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u0099\u00012\u00020\u0001:\u0006\u0098\u0001\u0099\u0001\u009a\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\"\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001dX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020!X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0016\u0010$\u001a\u0004\u0018\u00010%X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020)X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0014\u0010,\u001a\u00020-X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u001a\u00100\u001a\u0008\u0012\u0004\u0012\u00020201X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0014\u00105\u001a\u000206X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\"\u00109\u001a\u0010\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0018\u00010:X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R\u001a\u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010\u001bR\"\u0010B\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020C\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010\nR\u001a\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010\u001bR\u0014\u0010G\u001a\u00020\u001dX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010\u001fR\u0016\u0010I\u001a\u0004\u0018\u00010JX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010LR\u0014\u0010M\u001a\u00020NX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010PR\u0014\u0010Q\u001a\u00020RX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010TR\u0014\u0010U\u001a\u00020VX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010XR\u000e\u0010Y\u001a\u00020ZX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010[\u001a\u00020\\X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u0010^R\u0016\u0010_\u001a\u0004\u0018\u00010`X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010bR\u0016\u0010c\u001a\u0004\u0018\u00010dX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010fR\u0016\u0010g\u001a\u0004\u0018\u00010hX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008i\u0010jR \u0010k\u001a\u0004\u0018\u00010Z8VX\u0096\u0004\u00a2\u0006\u0010\n\u0002\u0010p\u0012\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010oR\u0014\u0010q\u001a\u00020@X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008q\u0010rR\u001a\u0010s\u001a\u0008\u0012\u0004\u0012\u00020@0\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008s\u0010\u001bR\u0014\u0010t\u001a\u00020@X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008t\u0010rR\u0014\u0010u\u001a\u00020<X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008v\u0010wR\u001c\u0010x\u001a\u00020Z8VX\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008y\u0010m\u001a\u0004\u0008z\u0010{R\u0014\u0010|\u001a\u00020}X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008~\u0010\u007fR\u001c\u0010\u0080\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0081\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u001a\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u0018\u0010\u0088\u0001\u001a\u00030\u0089\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u0018\u0010\u008c\u0001\u001a\u00030\u008d\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u001d\u0010\u0090\u0001\u001a\t\u0012\u0005\u0012\u00030\u0091\u000101X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0092\u0001\u00104R\u001d\u0010\u0093\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u000101X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0095\u0001\u00104R\u0016\u0010\u0096\u0001\u001a\u00020<X\u0096\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0097\u0001\u0010w\u00a8\u0006\u009b\u0001"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig;",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
        "builder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;",
        "(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V",
        "bitmapCacheOverride",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/cache/common/CacheKey;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "getBitmapCacheOverride",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "getBitmapConfig",
        "()Landroid/graphics/Bitmap$Config;",
        "bitmapMemoryCacheEntryStateObserver",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;",
        "getBitmapMemoryCacheEntryStateObserver",
        "()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;",
        "bitmapMemoryCacheFactory",
        "Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;",
        "getBitmapMemoryCacheFactory",
        "()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;",
        "bitmapMemoryCacheParamsSupplier",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        "getBitmapMemoryCacheParamsSupplier",
        "()Lcom/facebook/common/internal/Supplier;",
        "bitmapMemoryCacheTrimStrategy",
        "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
        "getBitmapMemoryCacheTrimStrategy",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
        "cacheKeyFactory",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "getCacheKeyFactory",
        "()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "callerContextVerifier",
        "Lcom/facebook/callercontext/CallerContextVerifier;",
        "getCallerContextVerifier",
        "()Lcom/facebook/callercontext/CallerContextVerifier;",
        "closeableReferenceLeakTracker",
        "Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;",
        "getCloseableReferenceLeakTracker",
        "()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "customProducerSequenceFactories",
        "",
        "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
        "getCustomProducerSequenceFactories",
        "()Ljava/util/Set;",
        "downsampleMode",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "getDownsampleMode",
        "()Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "dynamicDiskCacheConfigMap",
        "",
        "",
        "Lcom/facebook/cache/disk/DiskCacheConfig;",
        "getDynamicDiskCacheConfigMap",
        "()Ljava/util/Map;",
        "enableEncodedImageColorSpaceUsage",
        "",
        "getEnableEncodedImageColorSpaceUsage",
        "encodedMemoryCacheOverride",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "getEncodedMemoryCacheOverride",
        "encodedMemoryCacheParamsSupplier",
        "getEncodedMemoryCacheParamsSupplier",
        "encodedMemoryCacheTrimStrategy",
        "getEncodedMemoryCacheTrimStrategy",
        "executorServiceForAnimatedImages",
        "Lcom/facebook/common/executors/SerialExecutorService;",
        "getExecutorServiceForAnimatedImages",
        "()Lcom/facebook/common/executors/SerialExecutorService;",
        "executorSupplier",
        "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "getExecutorSupplier",
        "()Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "experiments",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;",
        "getExperiments",
        "()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;",
        "fileCacheFactory",
        "Lcom/facebook/imagepipeline/core/FileCacheFactory;",
        "getFileCacheFactory",
        "()Lcom/facebook/imagepipeline/core/FileCacheFactory;",
        "httpNetworkTimeout",
        "",
        "imageCacheStatsTracker",
        "Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "getImageCacheStatsTracker",
        "()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "imageDecoder",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "getImageDecoder",
        "()Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "imageDecoderConfig",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;",
        "getImageDecoderConfig",
        "()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;",
        "imageTranscoderFactory",
        "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "getImageTranscoderFactory",
        "()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "imageTranscoderType",
        "getImageTranscoderType$annotations",
        "()V",
        "getImageTranscoderType",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "isDiskCacheEnabled",
        "()Z",
        "isPrefetchEnabledSupplier",
        "isResizeAndRotateEnabledForNetwork",
        "mainDiskCacheConfig",
        "getMainDiskCacheConfig",
        "()Lcom/facebook/cache/disk/DiskCacheConfig;",
        "memoryChunkType",
        "getMemoryChunkType$annotations",
        "getMemoryChunkType",
        "()I",
        "memoryTrimmableRegistry",
        "Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "getMemoryTrimmableRegistry",
        "()Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "networkFetcher",
        "Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "getNetworkFetcher",
        "()Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "getPlatformBitmapFactory",
        "()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "poolFactory",
        "Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "getPoolFactory",
        "()Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "progressiveJpegConfig",
        "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "getProgressiveJpegConfig",
        "()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "requestListener2s",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "getRequestListener2s",
        "requestListeners",
        "Lcom/facebook/imagepipeline/listener/RequestListener;",
        "getRequestListeners",
        "smallImageDiskCacheConfig",
        "getSmallImageDiskCacheConfig",
        "Builder",
        "Companion",
        "DefaultImageRequestConfig",
        "imagepipeline_release"
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
.field public static final Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

.field private static defaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;


# instance fields
.field private final bitmapCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

.field private final bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private final cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

.field private final closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

.field private final context:Landroid/content/Context;

.field private final customProducerSequenceFactories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field private final dynamicDiskCacheConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedMemoryCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private final executorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

.field private final executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field private final experiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

.field private final fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

.field private final httpNetworkTimeout:I

.field private final imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

.field private final imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field private final imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

.field private final imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

.field private final imageTranscoderType:Ljava/lang/Integer;

.field private final isDiskCacheEnabled:Z

.field private final isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isResizeAndRotateEnabledForNetwork:Z

.field private final mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

.field private final memoryChunkType:I

.field private final memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field private final networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private final platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private final poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

.field private final progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field private final requestListener2s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end field

.field private final requestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    .line 506
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->defaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "ImagePipelineConfig()"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getExperimentsBuilder()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->experiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    .line 127
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    const-string v1, "Required value was null."

    if-nez v0, :cond_2

    .line 128
    new-instance v0, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;

    .line 129
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/ActivityManager;

    .line 128
    invoke-direct {v0, v2}, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;-><init>(Landroid/app/ActivityManager;)V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    goto :goto_0

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 132
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;-><init>()V

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 131
    :cond_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 134
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getEncodedMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy;-><init>()V

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 133
    :cond_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 135
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 136
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_5
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 137
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-result-object v0

    const-string v2, "getInstance()"

    if-nez v0, :cond_6

    invoke-static {}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->getInstance()Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    :cond_6
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 138
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->context:Landroid/content/Context;

    .line 140
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getFileCacheFactory()Lcom/facebook/imagepipeline/core/FileCacheFactory;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;

    new-instance v1, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;-><init>()V

    check-cast v1, Lcom/facebook/imagepipeline/core/DiskStorageFactory;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;-><init>(Lcom/facebook/imagepipeline/core/DiskStorageFactory;)V

    check-cast v0, Lcom/facebook/imagepipeline/core/FileCacheFactory;

    .line 139
    :cond_7
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    .line 141
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 143
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;-><init>()V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    .line 142
    :cond_8
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 145
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->getInstance()Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 144
    :cond_9
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 146
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 148
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getEnableEncodedImageColorSpaceUsage()Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_FALSE:Lcom/facebook/common/internal/Supplier;

    const-string v1, "BOOLEAN_FALSE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :cond_a
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    .line 149
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->access$getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 150
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageTranscoderType()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageTranscoderType:Ljava/lang/Integer;

    .line 151
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->isPrefetchEnabledSupplier()Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_TRUE:Lcom/facebook/common/internal/Supplier;

    const-string v3, "BOOLEAN_TRUE"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    .line 153
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->access$getDefaultMainDiskCacheConfig(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    .line 152
    :cond_c
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 155
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->getInstance()Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 154
    :cond_d
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 156
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->access$getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->memoryChunkType:I

    .line 158
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getHttpConnectionTimeout()I

    move-result v1

    if-gez v1, :cond_e

    const/16 v1, 0x7530

    goto :goto_1

    .line 159
    :cond_e
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getHttpConnectionTimeout()I

    move-result v1

    .line 157
    :goto_1
    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->httpNetworkTimeout:I

    .line 161
    sget-object v2, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 572
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v2

    if-nez v2, :cond_f

    .line 162
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    move-result-object v2

    if-nez v2, :cond_11

    new-instance v2, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;-><init>(I)V

    check-cast v2, Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    goto :goto_2

    .line 576
    :cond_f
    const-string v2, "ImagePipelineConfig->mNetworkFetcher"

    invoke-static {v2}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 162
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    move-result-object v2

    if-nez v2, :cond_10

    new-instance v2, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;-><init>(I)V

    check-cast v2, Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :cond_10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 160
    :cond_11
    :goto_2
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 164
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 165
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v1

    if-nez v1, :cond_12

    new-instance v1, Lcom/facebook/imagepipeline/memory/PoolFactory;

    invoke-static {}, Lcom/facebook/imagepipeline/memory/PoolConfig;->newBuilder()Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->build()Lcom/facebook/imagepipeline/memory/PoolConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/memory/PoolFactory;-><init>(Lcom/facebook/imagepipeline/memory/PoolConfig;)V

    :cond_12
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    .line 166
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    move-result-object v1

    if-nez v1, :cond_13

    new-instance v1, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;-><init>()V

    check-cast v1, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    :cond_13
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    .line 167
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getRequestListeners()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :cond_14
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->requestListeners:Ljava/util/Set;

    .line 168
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getRequestListener2s()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :cond_15
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->requestListener2s:Ljava/util/Set;

    .line 169
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getCustomProducerSequenceFactories()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_16

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :cond_16
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->customProducerSequenceFactories:Ljava/util/Set;

    .line 170
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getResizeAndRotateEnabledForNetwork()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isResizeAndRotateEnabledForNetwork:Z

    .line 171
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    :cond_17
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 172
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    .line 174
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getFlexByteArrayPoolMaxNumThreads()I

    move-result v1

    .line 175
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v2

    if-nez v2, :cond_18

    new-instance v2, Lcom/facebook/imagepipeline/core/DefaultExecutorSupplier;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/core/DefaultExecutorSupplier;-><init>(I)V

    check-cast v2, Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    :cond_18
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 176
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getDiskCacheEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isDiskCacheEnabled:Z

    .line 177
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getCallerContextVerifier()Lcom/facebook/callercontext/CallerContextVerifier;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    .line 178
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getCloseableReferenceLeakTracker()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 179
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 181
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    move-result-object v1

    if-nez v1, :cond_19

    new-instance v1, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;-><init>()V

    check-cast v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    .line 180
    :cond_19
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    .line 182
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getEncodedMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 183
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getSerialExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/SerialExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->executorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    .line 184
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getDynamicDiskCacheConfigMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->dynamicDiskCacheConfigMap:Ljava/util/Map;

    .line 186
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getWebpBitmapFactory()Lcom/facebook/common/webp/WebpBitmapFactory;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 188
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;-><init>(Lcom/facebook/imagepipeline/memory/PoolFactory;)V

    check-cast v1, Lcom/facebook/common/webp/BitmapCreator;

    .line 189
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v2

    invoke-static {v0, p1, v2, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->access$setWebpBitmapFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/common/webp/WebpBitmapFactory;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;Lcom/facebook/common/webp/BitmapCreator;)V

    .line 191
    :cond_1a
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 192
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_1b
    return-void

    :catchall_0
    move-exception p1

    .line 580
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1

    .line 138
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-void
.end method

.method public static final synthetic access$getDefaultImageRequestConfig$cp()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    .locals 1

    .line 72
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->defaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-object v0
.end method

.method public static final synthetic access$setDefaultImageRequestConfig$cp(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;)V
    .locals 0

    .line 72
    sput-object p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->defaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method public static final getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getImageTranscoderType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMemoryChunkType$annotations()V
    .locals 0

    return-void
.end method

.method public static final newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final resetDefaultRequestConfig()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->resetDefaultRequestConfig()V

    return-void
.end method


# virtual methods
.method public getBitmapCacheOverride()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-object v0
.end method

.method public getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object v0
.end method

.method public getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method public getCallerContextVerifier()Lcom/facebook/callercontext/CallerContextVerifier;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    return-object v0
.end method

.method public getCloseableReferenceLeakTracker()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomProducerSequenceFactories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->customProducerSequenceFactories:Ljava/util/Set;

    return-object v0
.end method

.method public getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-object v0
.end method

.method public getDynamicDiskCacheConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->dynamicDiskCacheConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getEnableEncodedImageColorSpaceUsage()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getEncodedMemoryCacheOverride()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getEncodedMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public getExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/SerialExecutorService;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->executorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    return-object v0
.end method

.method public getExecutorSupplier()Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object v0
.end method

.method public getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->experiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    return-object v0
.end method

.method public getFileCacheFactory()Lcom/facebook/imagepipeline/core/FileCacheFactory;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object v0
.end method

.method public getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object v0
.end method

.method public getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object v0
.end method

.method public getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    return-object v0
.end method

.method public getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object v0
.end method

.method public getImageTranscoderType()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageTranscoderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public getMemoryChunkType()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->memoryChunkType:I

    return v0
.end method

.method public getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method public getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object v0
.end method

.method public getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object v0
.end method

.method public getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object v0
.end method

.method public getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object v0
.end method

.method public getRequestListener2s()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->requestListener2s:Ljava/util/Set;

    return-object v0
.end method

.method public getRequestListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->requestListeners:Ljava/util/Set;

    return-object v0
.end method

.method public getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public isDiskCacheEnabled()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isDiskCacheEnabled:Z

    return v0
.end method

.method public isPrefetchEnabledSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public isResizeAndRotateEnabledForNetwork()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isResizeAndRotateEnabledForNetwork:Z

    return v0
.end method
