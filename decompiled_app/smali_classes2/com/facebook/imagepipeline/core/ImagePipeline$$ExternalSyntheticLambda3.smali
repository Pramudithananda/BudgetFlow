.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/common/internal/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/facebook/cache/common/CacheKey;

    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->$r8$lambda$5B6wUGVTchTEs_rgu4p_wngo1Ro(Lcom/facebook/cache/common/CacheKey;)Z

    move-result p1

    return p1
.end method
