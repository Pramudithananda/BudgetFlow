.class public final Lexpo/modules/kotlin/jni/JavaCallback;
.super Ljava/lang/Object;
.source "JavaCallback.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaCallback.kt\nexpo/modules/kotlin/jni/JavaCallback\n*L\n1#1,121:1\n99#1,12:122\n99#1,12:134\n99#1,12:146\n99#1,12:158\n99#1,12:170\n99#1,12:182\n99#1,12:194\n99#1,12:206\n99#1,12:218\n99#1,12:230\n*S KotlinDebug\n*F\n+ 1 JavaCallback.kt\nexpo/modules/kotlin/jni/JavaCallback\n*L\n16#1:122,12\n44#1:134,12\n48#1:146,12\n52#1:158,12\n56#1:170,12\n60#1:182,12\n64#1:194,12\n68#1:206,12\n72#1:218,12\n76#1:230,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0082\u0008J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0004J\t\u0010\u000b\u001a\u00020\u0006H\u0086\u0002J\u0013\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0010H\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0011H\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0012H\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0013H\u0086\u0002J\u0019\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0086\u0002J\u0019\u0010\u000b\u001a\u00020\u00062\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0016H\u0086\u0002J\u001f\u0010\u000b\u001a\u00020\u00062\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0017H\u0086\u0002J\u0011\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0019H\u0082 J\u0011\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u001bH\u0082 J\u0011\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u001dH\u0082 J\u0011\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u001fH\u0082 J\t\u0010 \u001a\u00020\u0006H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020!H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\"H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020#H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0010H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0011H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0012H\u0082 J\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0013H\u0082 J\u0019\u0010 \u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0082 J\u0019\u0010 \u001a\u00020\u00062\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0016H\u0082 J\u001f\u0010 \u001a\u00020\u00062\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0017H\u0082 R\u0010\u0010\u0002\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JavaCallback;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "(Lcom/facebook/jni/HybridData;)V",
        "checkIfValid",
        "",
        "body",
        "Lkotlin/Function0;",
        "deallocate",
        "finalize",
        "invoke",
        "value",
        "",
        "result",
        "",
        "",
        "",
        "",
        "",
        "code",
        "errorMessage",
        "",
        "",
        "invokeDoubleArray",
        "",
        "invokeFloatArray",
        "",
        "invokeIntArray",
        "",
        "invokeLongArray",
        "",
        "invokeNative",
        "Lcom/facebook/react/bridge/WritableNativeArray;",
        "Lcom/facebook/react/bridge/WritableNativeMap;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 1

    const-string v0, "mHybridData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private final checkIfValid(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 100
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 102
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "Invalidated JavaCallback was invoked"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 108
    :cond_0
    throw p1
.end method

.method private final native invokeDoubleArray([D)V
.end method

.method private final native invokeFloatArray([F)V
.end method

.method private final native invokeIntArray([I)V
.end method

.method private final native invokeLongArray([J)V
.end method

.method private final native invokeNative()V
.end method

.method private final native invokeNative(D)V
.end method

.method private final native invokeNative(F)V
.end method

.method private final native invokeNative(I)V
.end method

.method private final native invokeNative(Lcom/facebook/react/bridge/WritableNativeArray;)V
.end method

.method private final native invokeNative(Lcom/facebook/react/bridge/WritableNativeMap;)V
.end method

.method private final native invokeNative(Lexpo/modules/kotlin/sharedobjects/SharedObject;)V
.end method

.method private final native invokeNative(Ljava/lang/String;)V
.end method

.method private final native invokeNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native invokeNative(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native invokeNative(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native invokeNative(Z)V
.end method


# virtual methods
.method public deallocate()V
    .locals 1

    .line 118
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JavaCallback;->deallocate()V

    return-void
.end method

.method public final invoke()V
    .locals 3

    .line 45
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v1}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v1

    const-string v2, "Invalidated JavaCallback was invoked"

    invoke-virtual {v1, v2, v0}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 143
    :cond_0
    throw v0
.end method

.method public final invoke(D)V
    .locals 1

    .line 57
    :try_start_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 173
    iget-object p2, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {p2}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result p2

    if-nez p2, :cond_0

    .line 176
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p2

    const-string v0, "Invalidated JavaCallback was invoked"

    invoke-virtual {p2, v0, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 179
    :cond_0
    throw p1
.end method

.method public final invoke(F)V
    .locals 2

    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 185
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "Invalidated JavaCallback was invoked"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 191
    :cond_0
    throw p1
.end method

.method public final invoke(I)V
    .locals 2

    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 149
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "Invalidated JavaCallback was invoked"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 155
    :cond_0
    throw p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "Unknown type: "

    .line 17
    :try_start_0
    sget-object v1, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 19
    invoke-direct {p0}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative()V

    return-void

    .line 24
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(I)V

    goto/16 :goto_0

    .line 25
    :cond_1
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Z)V

    goto/16 :goto_0

    .line 26
    :cond_2
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(D)V

    goto/16 :goto_0

    .line 27
    :cond_3
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(F)V

    goto/16 :goto_0

    .line 28
    :cond_4
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_5

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
    :cond_5
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 30
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 32
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 33
    :cond_7
    instance-of v1, p1, Lcom/facebook/react/bridge/WritableNativeArray;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Lcom/facebook/react/bridge/WritableNativeArray;)V

    goto :goto_0

    .line 34
    :cond_8
    instance-of v1, p1, Lcom/facebook/react/bridge/WritableNativeMap;

    if-eqz v1, :cond_9

    check-cast p1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Lcom/facebook/react/bridge/WritableNativeMap;)V

    goto :goto_0

    .line 35
    :cond_9
    instance-of v1, p1, Lexpo/modules/kotlin/sharedobjects/SharedObject;

    if-eqz v1, :cond_a

    check-cast p1, Lexpo/modules/kotlin/sharedobjects/SharedObject;

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Lexpo/modules/kotlin/sharedobjects/SharedObject;)V

    goto :goto_0

    .line 36
    :cond_a
    instance-of v1, p1, [I

    if-eqz v1, :cond_b

    check-cast p1, [I

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeIntArray([I)V

    goto :goto_0

    .line 37
    :cond_b
    instance-of v1, p1, [J

    if-eqz v1, :cond_c

    check-cast p1, [J

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeLongArray([J)V

    goto :goto_0

    .line 38
    :cond_c
    instance-of v1, p1, [F

    if-eqz v1, :cond_d

    check-cast p1, [F

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeFloatArray([F)V

    goto :goto_0

    .line 39
    :cond_d
    instance-of v1, p1, [D

    if-eqz v1, :cond_e

    check-cast p1, [D

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeDoubleArray([D)V

    goto :goto_0

    .line 40
    :cond_e
    new-instance v1, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 125
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-nez v0, :cond_f

    .line 128
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "Invalidated JavaCallback was invoked"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 131
    :cond_f
    throw p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 197
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "Invalidated JavaCallback was invoked"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 203
    :cond_0
    throw p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 233
    iget-object p2, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {p2}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result p2

    if-nez p2, :cond_0

    .line 236
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object p2

    const-string v0, "Invalidated JavaCallback was invoked"

    invoke-virtual {p2, v0, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 239
    :cond_0
    throw p1
.end method

.method public final invoke(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 209
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "Invalidated JavaCallback was invoked"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 215
    :cond_0
    throw p1
.end method

.method public final invoke(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 221
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "Invalidated JavaCallback was invoked"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 227
    :cond_0
    throw p1
.end method

.method public final invoke(Z)V
    .locals 2

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invokeNative(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 161
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaCallback;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "Invalidated JavaCallback was invoked"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 167
    :cond_0
    throw p1
.end method
