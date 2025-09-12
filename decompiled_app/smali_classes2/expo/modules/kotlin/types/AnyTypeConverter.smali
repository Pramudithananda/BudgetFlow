.class public final Lexpo/modules/kotlin/types/AnyTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "AnyTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/types/AnyTypeConverter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/AnyTypeConverter;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "",
        "isOptional",
        "",
        "(Z)V",
        "convertFromAny",
        "value",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 0

    const-string/jumbo p2, "value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo p2, "value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object p2

    sget-object v0, Lexpo/modules/kotlin/types/AnyTypeConverter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 22
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 23
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown dynamic type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    .line 18
    :cond_4
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    :goto_0
    return-object p1
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 4

    .line 29
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v2, 0x0

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->ANY:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    return-object v0
.end method
