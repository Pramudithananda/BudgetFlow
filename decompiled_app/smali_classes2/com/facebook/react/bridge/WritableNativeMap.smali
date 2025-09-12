.class public final Lcom/facebook/react/bridge/WritableNativeMap;
.super Lcom/facebook/react/bridge/ReadableNativeMap;
.source "WritableNativeMap.kt"

# interfaces
.implements Lcom/facebook/react/bridge/WritableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/WritableNativeMap$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0011\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0082 J\u001a\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0019\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0010H\u0096 J\u0019\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0012H\u0096 J\u0019\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0014H\u0096 J\u0019\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0016H\u0096 J\u001a\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008H\u0016J\u001b\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0019H\u0082 J\u001b\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0082 J\u0011\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0096 J\u001b\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0096 \u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/react/bridge/WritableNativeMap;",
        "Lcom/facebook/react/bridge/ReadableNativeMap;",
        "Lcom/facebook/react/bridge/WritableMap;",
        "()V",
        "copy",
        "merge",
        "",
        "source",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "mergeNativeMap",
        "putArray",
        "key",
        "",
        "value",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "putBoolean",
        "",
        "putDouble",
        "",
        "putInt",
        "",
        "putLong",
        "",
        "putMap",
        "putNativeArray",
        "Lcom/facebook/react/bridge/ReadableNativeArray;",
        "putNativeMap",
        "putNull",
        "putString",
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
.field private static final Companion:Lcom/facebook/react/bridge/WritableNativeMap$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/bridge/WritableNativeMap;->Companion:Lcom/facebook/react/bridge/WritableNativeMap$Companion;

    .line 64
    invoke-static {}, Lcom/facebook/react/bridge/ReactBridge;->staticInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    sget-object v0, Lcom/facebook/react/bridge/WritableNativeMap;->Companion:Lcom/facebook/react/bridge/WritableNativeMap$Companion;

    invoke-static {v0}, Lcom/facebook/react/bridge/WritableNativeMap$Companion;->access$initHybrid(Lcom/facebook/react/bridge/WritableNativeMap$Companion;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/ReadableNativeMap;-><init>(Lcom/facebook/jni/HybridData;)V

    return-void
.end method

.method public static final synthetic access$initHybrid()Lcom/facebook/jni/HybridData;
    .locals 1

    .line 18
    invoke-static {}, Lcom/facebook/react/bridge/WritableNativeMap;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    return-object v0
.end method

.method private static final native initHybrid()Lcom/facebook/jni/HybridData;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private final native mergeNativeMap(Lcom/facebook/react/bridge/ReadableNativeMap;)V
.end method

.method private final native putNativeArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableNativeArray;)V
.end method

.method private final native putNativeMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableNativeMap;)V
.end method


# virtual methods
.method public copy()Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 51
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 52
    move-object v1, p0

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 53
    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    return-object v0
.end method

.method public merge(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    instance-of v0, p1, Lcom/facebook/react/bridge/ReadableNativeMap;

    const-string v1, "Illegal type provided"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 47
    check-cast p1, Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->mergeNativeMap(Lcom/facebook/react/bridge/ReadableNativeMap;)V

    return-void
.end method

.method public putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 40
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableNativeArray;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Illegal type provided"

    .line 39
    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 41
    check-cast p2, Lcom/facebook/react/bridge/ReadableNativeArray;

    invoke-direct {p0, p1, p2}, Lcom/facebook/react/bridge/WritableNativeMap;->putNativeArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableNativeArray;)V

    return-void
.end method

.method public native putBoolean(Ljava/lang/String;Z)V
.end method

.method public native putDouble(Ljava/lang/String;D)V
.end method

.method public native putInt(Ljava/lang/String;I)V
.end method

.method public native putLong(Ljava/lang/String;J)V
.end method

.method public putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 33
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableNativeMap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Illegal type provided"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 34
    check-cast p2, Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-direct {p0, p1, p2}, Lcom/facebook/react/bridge/WritableNativeMap;->putNativeMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableNativeMap;)V

    return-void
.end method

.method public native putNull(Ljava/lang/String;)V
.end method

.method public native putString(Ljava/lang/String;Ljava/lang/String;)V
.end method
