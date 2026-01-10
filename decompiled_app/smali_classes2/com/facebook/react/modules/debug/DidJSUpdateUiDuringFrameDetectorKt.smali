.class public final Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt;
.super Ljava/lang/Object;
.source "DidJSUpdateUiDuringFrameDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDidJSUpdateUiDuringFrameDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DidJSUpdateUiDuringFrameDetector.kt\ncom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1747#2,3:148\n*S KotlinDebug\n*F\n+ 1 DidJSUpdateUiDuringFrameDetector.kt\ncom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt\n*L\n114#1:148,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u001a(\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u00052\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u001a0\u0010\u0007\u001a\u00020\u00042\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u00052\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u001a0\u0010\t\u001a\u00020\n2\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u00052\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "cleanUp",
        "",
        "eventArray",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "endTime",
        "getLastEventBetweenTimestamps",
        "startTime",
        "hasEventBetweenTimestamps",
        "",
        "ReactAndroid_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$cleanUp(Ljava/util/ArrayList;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt;->cleanUp(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static final synthetic access$getLastEventBetweenTimestamps(Ljava/util/ArrayList;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt;->getLastEventBetweenTimestamps(Ljava/util/ArrayList;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$hasEventBetweenTimestamps(Ljava/util/ArrayList;JJ)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/react/modules/debug/DidJSUpdateUiDuringFrameDetectorKt;->hasEventBetweenTimestamps(Ljava/util/ArrayList;JJ)Z

    move-result p0

    return p0
.end method

.method private static final cleanUp(Ljava/util/ArrayList;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "get(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_3

    sub-int/2addr v0, v3

    :goto_1
    if-ge v1, v0, :cond_2

    add-int p1, v1, v3

    .line 142
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_2
    check-cast p0, Ljava/util/List;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    :cond_3
    return-void
.end method

.method private static final getLastEventBetweenTimestamps(Ljava/util/ArrayList;JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;JJ)J"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, -0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 123
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gtz v5, :cond_1

    cmp-long v3, v3, p3

    if-gez v3, :cond_1

    .line 124
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-ltz v2, :cond_0

    :cond_2
    return-wide v0
.end method

.method private static final hasEventBetweenTimestamps(Ljava/util/ArrayList;JJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    .line 114
    check-cast p0, Ljava/lang/Iterable;

    .line 148
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    cmp-long v0, v2, p3

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
