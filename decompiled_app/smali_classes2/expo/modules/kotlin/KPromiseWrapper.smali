.class public final Lexpo/modules/kotlin/KPromiseWrapper;
.super Ljava/lang/Object;
.source "KPromiseWrapper.kt"

# interfaces
.implements Lexpo/modules/kotlin/Promise;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/kotlin/KPromiseWrapper;",
        "Lexpo/modules/kotlin/Promise;",
        "bridgePromise",
        "Lcom/facebook/react/bridge/Promise;",
        "(Lcom/facebook/react/bridge/Promise;)V",
        "reject",
        "",
        "code",
        "",
        "message",
        "cause",
        "",
        "resolve",
        "value",
        "",
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
.field private final bridgePromise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "bridgePromise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lexpo/modules/kotlin/KPromiseWrapper;->bridgePromise:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public reject(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->reject(Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lexpo/modules/kotlin/KPromiseWrapper;->bridgePromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public resolve()V
    .locals 0

    .line 5
    invoke-static {p0}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method public resolve(D)V
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;D)V

    return-void
.end method

.method public resolve(F)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;F)V

    return-void
.end method

.method public resolve(I)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;I)V

    return-void
.end method

.method public resolve(Ljava/lang/Object;)V
    .locals 7

    .line 10
    iget-object v0, p0, Lexpo/modules/kotlin/KPromiseWrapper;->bridgePromise:Lcom/facebook/react/bridge/Promise;

    .line 11
    sget-object v1, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public resolve(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Ljava/lang/String;)V

    return-void
.end method

.method public resolve(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Ljava/util/Collection;)V

    return-void
.end method

.method public resolve(Ljava/util/Map;)V
    .locals 0
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

    .line 5
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Ljava/util/Map;)V

    return-void
.end method

.method public resolve(Z)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Z)V

    return-void
.end method
