.class public Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
.super Ljava/lang/Object;
.source "EncodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/EncodedImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncodedImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodedImageOptions.kt\ncom/facebook/fresco/vito/options/EncodedImageOptions$Builder\n*L\n1#1,67:1\n62#1,2:68\n62#1,2:70\n*S KotlinDebug\n*F\n+ 1 EncodedImageOptions.kt\ncom/facebook/fresco/vito/options/EncodedImageOptions$Builder\n*L\n53#1:68,2\n55#1:70,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002B\u0007\u0008\u0014\u00a2\u0006\u0002\u0010\u0003B\u000f\u0008\u0014\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0005H\u0016J\u0015\u0010\u0007\u001a\u00028\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0014J\r\u0010\u0015\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u0016J-\u0010\u0017\u001a\u00028\u00002\u001d\u0010\u0018\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u001a0\u0019\u00a2\u0006\u0002\u0008\u001bH\u0082\u0008\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010\r\u001a\u00028\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u001dR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "T",
        "",
        "()V",
        "defaultOptions",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions;",
        "(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)V",
        "cacheChoice",
        "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "getCacheChoice$options_release",
        "()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "setCacheChoice$options_release",
        "(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)V",
        "priority",
        "Lcom/facebook/imagepipeline/common/Priority;",
        "getPriority$options_release",
        "()Lcom/facebook/imagepipeline/common/Priority;",
        "setPriority$options_release",
        "(Lcom/facebook/imagepipeline/common/Priority;)V",
        "build",
        "(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "getThis",
        "()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "modify",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "options_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private priority:Lcom/facebook/imagepipeline/common/Priority;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)V
    .locals 1

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .line 62
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .locals 1

    .line 57
    new-instance v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V

    return-object v0
.end method

.method public final cacheChoice(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
            ")TT;"
        }
    .end annotation

    .line 70
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 55
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 71
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final getCacheChoice$options_release()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public final getPriority$options_release()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method protected final getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    const-string v0, "null cannot be cast to non-null type T of com.facebook.fresco.vito.options.EncodedImageOptions.Builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    return-object p0
.end method

.method public final priority(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")TT;"
        }
    .end annotation

    .line 68
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 53
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 69
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setCacheChoice$options_release(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-void
.end method

.method public final setPriority$options_release(Lcom/facebook/imagepipeline/common/Priority;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    return-void
.end method
