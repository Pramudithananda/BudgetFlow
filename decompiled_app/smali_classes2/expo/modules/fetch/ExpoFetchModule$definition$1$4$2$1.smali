.class final Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoFetchModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1\n+ 2 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,150:1\n11#2,6:151\n*S KotlinDebug\n*F\n+ 1 ExpoFetchModule.kt\nexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1\n*L\n135#1:151,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
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

.field final synthetic $request:Lexpo/modules/fetch/NativeRequest;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/fetch/NativeRequest;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;->$promise:Lexpo/modules/kotlin/Promise;

    iput-object p2, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;->$request:Lexpo/modules/fetch/NativeRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, Lexpo/modules/fetch/ResponseState;

    invoke-virtual {p0, p1}, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;->invoke(Lexpo/modules/fetch/ResponseState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/fetch/ResponseState;)V
    .locals 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    if-ne p1, v0, :cond_0

    .line 133
    iget-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {p1}, Lexpo/modules/kotlin/Promise;->resolve()V

    goto :goto_1

    .line 134
    :cond_0
    sget-object v0, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    if-ne p1, v0, :cond_4

    .line 135
    iget-object p1, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-object v0, p0, Lexpo/modules/fetch/ExpoFetchModule$definition$1$4$2$1;->$request:Lexpo/modules/fetch/NativeRequest;

    invoke-virtual {v0}, Lexpo/modules/fetch/NativeRequest;->getResponse$expo_release()Lexpo/modules/fetch/NativeResponse;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/fetch/NativeResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Throwable;

    .line 153
    instance-of v1, v0, Lexpo/modules/kotlin/exception/CodedException;

    if-eqz v1, :cond_1

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 154
    :cond_1
    instance-of v1, v0, Lexpo/modules/core/errors/CodedException;

    if-eqz v1, :cond_2

    new-instance v1, Lexpo/modules/kotlin/exception/CodedException;

    move-object v2, v0

    check-cast v2, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v2}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCode(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 155
    :cond_2
    new-instance v1, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 135
    :cond_3
    new-instance v0, Lexpo/modules/fetch/FetchUnknownException;

    invoke-direct {v0}, Lexpo/modules/fetch/FetchUnknownException;-><init>()V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    :goto_0
    invoke-interface {p1, v0}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    :cond_4
    :goto_1
    return-void
.end method
