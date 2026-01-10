.class public Lcom/facebook/fresco/vito/options/EncodedImageOptions;
.super Ljava/lang/Object;
.source "EncodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0017B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0000H\u0004J\u0013\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0014R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions;",
        "",
        "builder",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V",
        "cacheChoice",
        "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "getCacheChoice",
        "()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "priority",
        "Lcom/facebook/imagepipeline/common/Priority;",
        "getPriority",
        "()Lcom/facebook/imagepipeline/common/Priority;",
        "equalEncodedOptions",
        "",
        "other",
        "equals",
        "hashCode",
        "",
        "toString",
        "",
        "toStringHelper",
        "Lcom/facebook/common/internal/Objects$ToStringHelper;",
        "Builder",
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
.field private final cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private final priority:Lcom/facebook/imagepipeline/common/Priority;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getPriority$options_release()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 16
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getCacheChoice$options_release()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-void
.end method


# virtual methods
.method protected final equalEncodedOptions(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    iget-object p1, p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    check-cast p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->equalEncodedOptions(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public final getPriority()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/Priority;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toStringHelper().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 3

    .line 40
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "priority"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cacheChoice"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "toStringHelper(this).add\u2026acheChoice\", cacheChoice)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
