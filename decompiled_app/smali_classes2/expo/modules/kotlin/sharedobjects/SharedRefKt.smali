.class public final Lexpo/modules/kotlin/sharedobjects/SharedRefKt;
.super Ljava/lang/Object;
.source "SharedRef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u0001H\u0086\u0008\u00a8\u0006\u0003"
    }
    d2 = {
        "cast",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "RefType",
        "expo-modules-core_release"
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
.method public static final synthetic cast(Lexpo/modules/kotlin/sharedobjects/SharedRef;)Lexpo/modules/kotlin/sharedobjects/SharedRef;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RefType:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "*>;)",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "TRefType;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lexpo/modules/kotlin/sharedobjects/SharedRef;->getRef()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "RefType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v0, Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
