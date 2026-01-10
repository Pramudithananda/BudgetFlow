.class public final Lcom/facebook/react/modules/fresco/FrescoModule$Companion;
.super Ljava/lang/Object;
.source "FrescoModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/fresco/FrescoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/modules/fresco/FrescoModule$Companion;",
        "",
        "()V",
        "NAME",
        "",
        "hasBeenInitialized",
        "",
        "getDefaultConfig",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig;",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getDefaultConfigBuilder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultConfig(Lcom/facebook/react/modules/fresco/FrescoModule$Companion;Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;->getDefaultConfig(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object p0

    return-object p0
.end method

.method private final getDefaultConfig(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;->getDefaultConfigBuilder(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getDefaultConfigBuilder(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 149
    new-instance v1, Lcom/facebook/react/modules/fresco/SystraceRequestListener;

    invoke-direct {v1}, Lcom/facebook/react/modules/fresco/SystraceRequestListener;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/facebook/react/modules/network/OkHttpCompat;->getCookieJarContainer(Lokhttp3/OkHttpClient;)Lcom/facebook/react/modules/network/CookieJarContainer;

    move-result-object v2

    .line 155
    new-instance v3, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v3, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 156
    new-instance v4, Lokhttp3/JavaNetCookieJar;

    check-cast v3, Ljava/net/CookieHandler;

    invoke-direct {v4, v3}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    check-cast v4, Lokhttp3/CookieJar;

    invoke-interface {v2, v4}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 157
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "getApplicationContext(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpImagePipelineConfigFactory;->newBuilder(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    .line 158
    new-instance v2, Lcom/facebook/react/modules/fresco/ReactOkHttpNetworkFetcher;

    invoke-direct {v2, v1}, Lcom/facebook/react/modules/fresco/ReactOkHttpNetworkFetcher;-><init>(Lokhttp3/OkHttpClient;)V

    check-cast v2, Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-virtual {p1, v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setNetworkFetcher(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    .line 159
    sget-object v1, Lcom/facebook/imagepipeline/core/DownsampleMode;->AUTO:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleMode(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    .line 160
    check-cast v0, Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setRequestListeners(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final hasBeenInitialized()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 135
    invoke-static {}, Lcom/facebook/react/modules/fresco/FrescoModule;->access$getHasBeenInitialized$cp()Z

    move-result v0

    return v0
.end method
