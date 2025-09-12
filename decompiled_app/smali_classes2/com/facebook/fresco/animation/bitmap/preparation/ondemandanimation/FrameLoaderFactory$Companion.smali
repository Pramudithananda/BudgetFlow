.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;
.super Ljava/lang/Object;
.source "AnimationLoaderFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationLoaderFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationLoaderFactory.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,63:1\n515#2:64\n500#2,6:65\n215#3,2:71\n*S KotlinDebug\n*F\n+ 1 AnimationLoaderFactory.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion\n*L\n51#1:64\n51#1:65,6\n53#1:71,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;",
        "",
        "()V",
        "UNUSED_FRAME_LOADERS",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;",
        "clearUnusedUntil",
        "",
        "until",
        "Ljava/util/Date;",
        "saveUnusedFrame",
        "cacheKey",
        "frameLoader",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;",
        "animated-drawable_release"
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearUnusedUntil(Ljava/util/Date;)V
    .locals 5

    const-string/jumbo v0, "until"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 64
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 65
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    invoke-virtual {v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;->getInsertedTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gez v4, :cond_0

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    invoke-virtual {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;->clear()V

    .line 55
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final saveUnusedFrame(Ljava/lang/String;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;)V
    .locals 3

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, p2, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;Ljava/util/Date;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
