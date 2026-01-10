.class public final Lcom/facebook/fresco/vito/options/ImageOptions$Companion;
.super Ljava/lang/Object;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/ImageOptions$Companion;",
        "",
        "()V",
        "defaultImageOptions",
        "Lcom/facebook/fresco/vito/options/ImageOptions;",
        "create",
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        "defaults",
        "extend",
        "imageOptions",
        "setDefaults",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 479
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final defaults()Lcom/facebook/fresco/vito/options/ImageOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 470
    invoke-static {}, Lcom/facebook/fresco/vito/options/ImageOptions;->access$getDefaultImageOptions$cp()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    invoke-direct {v0, p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    return-object v0
.end method

.method public final setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-static {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->access$setDefaultImageOptions$cp(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    return-void
.end method
