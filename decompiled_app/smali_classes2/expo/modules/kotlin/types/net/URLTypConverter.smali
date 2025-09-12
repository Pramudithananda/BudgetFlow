.class public final Lexpo/modules/kotlin/types/net/URLTypConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "URLTypConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/net/URLTypConverter;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "Ljava/net/URL;",
        "isOptional",
        "",
        "(Z)V",
        "convertFromAny",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "isTrivial",
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

    .line 10
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/net/URLTypConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/net/URL;
    .locals 0

    const-string/jumbo p2, "value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/net/URLTypConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/net/URL;
    .locals 0

    const-string/jumbo p2, "value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 4

    .line 21
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v2, 0x0

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->STRING:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
