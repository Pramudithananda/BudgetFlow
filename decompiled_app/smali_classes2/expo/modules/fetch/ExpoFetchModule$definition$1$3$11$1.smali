.class final Lexpo/modules/fetch/ExpoFetchModule$definition$1$3$11$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoFetchModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/ExpoFetchModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lexpo/modules/fetch/ResponseState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lexpo/modules/fetch/ResponseState;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $response:Lexpo/modules/fetch/NativeResponse;


# direct methods
.method constructor <init>(Lexpo/modules/fetch/NativeResponse;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$3$11$1;->$response:Lexpo/modules/fetch/NativeResponse;

    iput-object p2, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$3$11$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Lexpo/modules/fetch/ResponseState;

    invoke-virtual {p0, p1}, Lexpo/modules/fetch/ExpoFetchModule$definition$1$3$11$1;->invoke(Lexpo/modules/fetch/ResponseState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/fetch/ResponseState;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$3$11$1;->$response:Lexpo/modules/fetch/NativeResponse;

    invoke-virtual {p1}, Lexpo/modules/fetch/NativeResponse;->getSink()Lexpo/modules/fetch/ResponseSink;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/fetch/ResponseSink;->finalize()[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    .line 108
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 109
    iget-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$3$11$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/String;)V

    return-void
.end method
