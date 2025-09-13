.class public final Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
.super Ljava/lang/Object;
.source "JavaScriptModuleObject.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0011\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0086 J\u0008\u0010\u0013\u001a\u00020\u000fH\u0004J\t\u0010\u0014\u001a\u00020\u000bH\u0082 J\u0008\u0010\u0015\u001a\u00020\u0005H\u0016R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u0010\u0010\n\u001a\u00020\u000b8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "jniDeallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "name",
        "",
        "(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V",
        "isValid",
        "",
        "()Z",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "getName",
        "()Ljava/lang/String;",
        "deallocate",
        "",
        "decorate",
        "decorator",
        "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
        "finalize",
        "initHybrid",
        "toString",
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
.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V
    .locals 1

    const-string v0, "jniDeallocator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->name:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object p2

    iput-object p2, p0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 27
    move-object p2, p0

    check-cast p2, Lexpo/modules/kotlin/jni/Destructible;

    invoke-virtual {p1, p2}, Lexpo/modules/kotlin/jni/JNIDeallocator;->addReference(Lexpo/modules/kotlin/jni/Destructible;)V

    return-void
.end method

.method private final native initHybrid()Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public deallocate()V
    .locals 1

    .line 41
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public final native decorate(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->deallocate()V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JavaScriptModuleObject_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
