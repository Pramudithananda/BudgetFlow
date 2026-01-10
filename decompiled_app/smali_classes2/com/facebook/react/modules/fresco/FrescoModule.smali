.class public Lcom/facebook/react/modules/fresco/FrescoModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FrescoModule.kt"

# interfaces
.implements Lcom/facebook/react/modules/common/ModuleDataCleaner$Cleanable;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "FrescoModule"
    needsEagerInit = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/fresco/FrescoModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0017\u0018\u0000 \u001d2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u001dB/\u0008\u0017\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000cB\'\u0008\u0007\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u0015H\u0016J\u0008\u0010\u001a\u001a\u00020\u0015H\u0016J\u0008\u0010\u001b\u001a\u00020\u0015H\u0016J\u0008\u0010\u001c\u001a\u00020\u0015H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/react/modules/fresco/FrescoModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "Lcom/facebook/react/modules/common/ModuleDataCleaner$Cleanable;",
        "Lcom/facebook/react/bridge/LifecycleEventListener;",
        "Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "imagePipeline",
        "Lcom/facebook/imagepipeline/core/ImagePipeline;",
        "clearOnDestroy",
        "",
        "hasBeenInitializedExternally",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;ZZ)V",
        "imagePipelineConfig",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;)V",
        "config",
        "getImagePipeline",
        "()Lcom/facebook/imagepipeline/core/ImagePipeline;",
        "pipeline",
        "clearSensitiveData",
        "",
        "getName",
        "",
        "initialize",
        "invalidate",
        "onHostDestroy",
        "onHostPause",
        "onHostResume",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/facebook/react/modules/fresco/FrescoModule$Companion;

.field public static final NAME:Ljava/lang/String; = "FrescoModule"

.field private static hasBeenInitialized:Z


# instance fields
.field private final clearOnDestroy:Z

.field private config:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

.field private pipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/modules/fresco/FrescoModule;->Companion:Lcom/facebook/react/modules/fresco/FrescoModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;Z)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;ZZ)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    iput-object p2, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->pipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 69
    sput-boolean p1, Lcom/facebook/react/modules/fresco/FrescoModule;->hasBeenInitialized:Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 61
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/imagepipeline/core/ImagePipeline;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Z)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 40
    iput-boolean p2, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->clearOnDestroy:Z

    .line 47
    iput-object p3, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 38
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    return-void
.end method

.method public static final synthetic access$getHasBeenInitialized$cp()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/facebook/react/modules/fresco/FrescoModule;->hasBeenInitialized:Z

    return v0
.end method

.method public static final getDefaultConfigBuilder(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/react/modules/fresco/FrescoModule;->Companion:Lcom/facebook/react/modules/fresco/FrescoModule$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;->getDefaultConfigBuilder(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->pipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->pipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->pipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    return-object v0
.end method

.method public static final hasBeenInitialized()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/react/modules/fresco/FrescoModule;->Companion:Lcom/facebook/react/modules/fresco/FrescoModule$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;->hasBeenInitialized()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearSensitiveData()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearCaches()V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "FrescoModule"

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 74
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->initialize()V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 76
    move-object v1, p0

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 77
    sget-object v1, Lcom/facebook/react/modules/fresco/FrescoModule;->Companion:Lcom/facebook/react/modules/fresco/FrescoModule$Companion;

    invoke-virtual {v1}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;->hasBeenInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    if-nez v2, :cond_0

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v1, v2}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;->access$getDefaultConfig(Lcom/facebook/react/modules/fresco/FrescoModule$Companion;Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-static {v0, v1}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    const/4 v0, 0x1

    .line 82
    sput-boolean v0, Lcom/facebook/react/modules/fresco/FrescoModule;->hasBeenInitialized:Z

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "ReactNative"

    .line 86
    const-string v1, "Fresco has already been initialized with a different config. The new Fresco configuration will be ignored!"

    .line 84
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 122
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->invalidate()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    .line 107
    sget-object v0, Lcom/facebook/react/modules/fresco/FrescoModule;->Companion:Lcom/facebook/react/modules/fresco/FrescoModule$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/modules/fresco/FrescoModule$Companion;->hasBeenInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/modules/fresco/FrescoModule;->clearOnDestroy:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/facebook/react/modules/fresco/FrescoModule;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    :cond_0
    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method
