.class final Lcom/facebook/react/bridge/DynamicNative;
.super Ljava/lang/Object;
.source "DynamicNative.kt"

# interfaces
.implements Lcom/facebook/react/bridge/Dynamic;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u000c\u001a\u00020\rH\u0096 J\t\u0010\u000e\u001a\u00020\u0006H\u0096 J\t\u0010\u000f\u001a\u00020\u0010H\u0096 J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\t\u0010\u0013\u001a\u00020\u0014H\u0096 J\t\u0010\u0015\u001a\u00020\u0016H\u0096 J\t\u0010\u0017\u001a\u00020\tH\u0082 J\t\u0010\u0018\u001a\u00020\u0006H\u0082 J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/facebook/react/bridge/DynamicNative;",
        "Lcom/facebook/react/bridge/Dynamic;",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "(Lcom/facebook/jni/HybridData;)V",
        "isNull",
        "",
        "()Z",
        "type",
        "Lcom/facebook/react/bridge/ReadableType;",
        "getType",
        "()Lcom/facebook/react/bridge/ReadableType;",
        "asArray",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "asBoolean",
        "asDouble",
        "",
        "asInt",
        "",
        "asMap",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "asString",
        "",
        "getTypeNative",
        "isNullNative",
        "recycle",
        "",
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


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method public constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/react/bridge/DynamicNative;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private final native getTypeNative()Lcom/facebook/react/bridge/ReadableType;
.end method

.method private final native isNullNative()Z
.end method


# virtual methods
.method public native asArray()Lcom/facebook/react/bridge/ReadableArray;
.end method

.method public native asBoolean()Z
.end method

.method public native asDouble()D
.end method

.method public asInt()I
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/facebook/react/bridge/DynamicNative;->asDouble()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public native asMap()Lcom/facebook/react/bridge/ReadableMap;
.end method

.method public native asString()Ljava/lang/String;
.end method

.method public getType()Lcom/facebook/react/bridge/ReadableType;
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/facebook/react/bridge/DynamicNative;->getTypeNative()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/facebook/react/bridge/DynamicNative;->isNullNative()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 0

    return-void
.end method
