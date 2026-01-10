.class public final Lexpo/modules/kotlin/views/FilteredReadableMap;
.super Ljava/lang/Object;
.source "FilteredReadableMap.kt"

# interfaces
.implements Lcom/facebook/react/bridge/ReadableMap;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0011\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0001J\u0008\u0010 \u001a\u00020!H\u0016J\u0015\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0#H\u0096\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t0\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/FilteredReadableMap;",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "backingMap",
        "filteredKeys",
        "",
        "",
        "(Lcom/facebook/react/bridge/ReadableMap;Ljava/util/List;)V",
        "entryIterator",
        "Lexpo/modules/kotlin/FilteredIterator;",
        "",
        "",
        "getEntryIterator",
        "()Lexpo/modules/kotlin/FilteredIterator;",
        "getArray",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "name",
        "getBoolean",
        "",
        "getDouble",
        "",
        "getDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "getInt",
        "",
        "getLong",
        "",
        "getMap",
        "getString",
        "getType",
        "Lcom/facebook/react/bridge/ReadableType;",
        "hasKey",
        "isNull",
        "keySetIterator",
        "Lcom/facebook/react/bridge/ReadableMapKeySetIterator;",
        "toHashMap",
        "Ljava/util/HashMap;",
        "expo-modules-core_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final backingMap:Lcom/facebook/react/bridge/ReadableMap;

.field private final entryIterator:Lexpo/modules/kotlin/FilteredIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/FilteredIterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final filteredKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$oMCR9J_SEB3DrZbxXPRYOLhxNiw(Lexpo/modules/kotlin/views/FilteredReadableMap;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/views/FilteredReadableMap;->entryIterator$lambda$0(Lexpo/modules/kotlin/views/FilteredReadableMap;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pn6PnsRZO2lw0367DW-B2T2-KwA(Lexpo/modules/kotlin/views/FilteredReadableMap;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/views/FilteredReadableMap;->keySetIterator$lambda$1(Lexpo/modules/kotlin/views/FilteredReadableMap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "backingMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filteredKeys"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    .line 42
    iput-object p2, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->filteredKeys:Ljava/util/List;

    .line 45
    new-instance p2, Lexpo/modules/kotlin/FilteredIterator;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->getEntryIterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lexpo/modules/kotlin/views/FilteredReadableMap$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/views/FilteredReadableMap$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/views/FilteredReadableMap;)V

    invoke-direct {p2, p1, v0}, Lexpo/modules/kotlin/FilteredIterator;-><init>(Ljava/util/Iterator;Lexpo/modules/kotlin/Filter;)V

    iput-object p2, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->entryIterator:Lexpo/modules/kotlin/FilteredIterator;

    return-void
.end method

.method private static final entryIterator$lambda$0(Lexpo/modules/kotlin/views/FilteredReadableMap;Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->filteredKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final keySetIterator$lambda$1(Lexpo/modules/kotlin/views/FilteredReadableMap;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->filteredKeys:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object p1

    return-object p1
.end method

.method public getEntryIterator()Lexpo/modules/kotlin/FilteredIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/FilteredIterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->entryIterator:Lexpo/modules/kotlin/FilteredIterator;

    return-object v0
.end method

.method public bridge synthetic getEntryIterator()Ljava/util/Iterator;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/FilteredReadableMap;->getEntryIterator()Lexpo/modules/kotlin/FilteredIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .locals 3

    .line 50
    new-instance v0, Lexpo/modules/kotlin/views/FilteredReadableMapKeySetIterator;

    iget-object v1, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    new-instance v2, Lexpo/modules/kotlin/views/FilteredReadableMap$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lexpo/modules/kotlin/views/FilteredReadableMap$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/views/FilteredReadableMap;)V

    invoke-direct {v0, v1, v2}, Lexpo/modules/kotlin/views/FilteredReadableMapKeySetIterator;-><init>(Lcom/facebook/react/bridge/ReadableMapKeySetIterator;Lexpo/modules/kotlin/Filter;)V

    check-cast v0, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    return-object v0
.end method

.method public toHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/kotlin/views/FilteredReadableMap;->backingMap:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
