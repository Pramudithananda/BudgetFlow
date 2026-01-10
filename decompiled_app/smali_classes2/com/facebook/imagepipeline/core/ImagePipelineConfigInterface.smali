.class public interface abstract Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
.super Ljava/lang/Object;
.source "ImagePipelineConfigInterface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001R \u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0012\u0010\u0019\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u00020\u001eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u0004\u0018\u00010\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0012\u0010%\u001a\u00020&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0012\u0010)\u001a\u00020*X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0018\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0012\u00102\u001a\u000203X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R \u00106\u001a\u0010\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u000209\u0018\u000107X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0018\u0010<\u001a\u0008\u0012\u0004\u0012\u00020=0\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010\u0018R \u0010?\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020@\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010\u0007R\u0018\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010\u0018R\u0012\u0010D\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010\u001cR\u0014\u0010F\u001a\u0004\u0018\u00010GX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR\u0012\u0010J\u001a\u00020KX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010MR\u0012\u0010N\u001a\u00020OX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010QR\u0012\u0010R\u001a\u00020SX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0012\u0010V\u001a\u00020WX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010YR\u0014\u0010Z\u001a\u0004\u0018\u00010[X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010]R\u0014\u0010^\u001a\u0004\u0018\u00010_X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010aR\u0014\u0010b\u001a\u0004\u0018\u00010cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010eR\u0016\u0010f\u001a\u0004\u0018\u00010g8fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010iR\u0012\u0010j\u001a\u00020=X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010kR\u0018\u0010l\u001a\u0008\u0012\u0004\u0012\u00020=0\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010\u0018R\u0012\u0010m\u001a\u00020=X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010kR\u0012\u0010n\u001a\u000209X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010pR\u0014\u0010q\u001a\u00020g8fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010sR\u0012\u0010t\u001a\u00020uX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010wR\u0016\u0010x\u001a\u0006\u0012\u0002\u0008\u00030yX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010{R\u0014\u0010|\u001a\u0004\u0018\u00010}X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008~\u0010\u007fR\u0016\u0010\u0080\u0001\u001a\u00030\u0081\u0001X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u0016\u0010\u0084\u0001\u001a\u00030\u0085\u0001X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u001d\u0010\u0088\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0089\u00010.X\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008a\u0001\u00101R\u001d\u0010\u008b\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u008c\u00010.X\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008d\u0001\u00101R\u0014\u0010\u008e\u0001\u001a\u000209X\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008f\u0001\u0010p\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
        "",
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
        "",
        "getImageTranscoderType",
        "()Ljava/lang/Integer;",
        "isDiskCacheEnabled",
        "()Z",
        "isPrefetchEnabledSupplier",
        "isResizeAndRotateEnabledForNetwork",
        "mainDiskCacheConfig",
        "getMainDiskCacheConfig",
        "()Lcom/facebook/cache/disk/DiskCacheConfig;",
        "memoryChunkType",
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


# virtual methods
.method public abstract getBitmapCacheOverride()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBitmapConfig()Landroid/graphics/Bitmap$Config;
.end method

.method public abstract getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
.end method

.method public abstract getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
.end method

.method public abstract getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
.end method

.method public abstract getCallerContextVerifier()Lcom/facebook/callercontext/CallerContextVerifier;
.end method

.method public abstract getCloseableReferenceLeakTracker()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCustomProducerSequenceFactories()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;
.end method

.method public abstract getDynamicDiskCacheConfigMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnableEncodedImageColorSpaceUsage()Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEncodedMemoryCacheOverride()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEncodedMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
.end method

.method public abstract getExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/SerialExecutorService;
.end method

.method public abstract getExecutorSupplier()Lcom/facebook/imagepipeline/core/ExecutorSupplier;
.end method

.method public abstract getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.end method

.method public abstract getFileCacheFactory()Lcom/facebook/imagepipeline/core/FileCacheFactory;
.end method

.method public abstract getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
.end method

.method public abstract getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
.end method

.method public abstract getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
.end method

.method public abstract getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
.end method

.method public abstract getImageTranscoderType()Ljava/lang/Integer;
.end method

.method public abstract getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
.end method

.method public abstract getMemoryChunkType()I
.end method

.method public abstract getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
.end method

.method public abstract getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
.end method

.method public abstract getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;
.end method

.method public abstract getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
.end method

.method public abstract getRequestListener2s()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestListeners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
.end method

.method public abstract isDiskCacheEnabled()Z
.end method

.method public abstract isPrefetchEnabledSupplier()Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isResizeAndRotateEnabledForNetwork()Z
.end method
