.class public final Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/next/FileSystemNextModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemNextModule.kt\nexpo/modules/filesystem/next/FileSystemNextModule\n+ 4 OkHttpExtensions.kt\nexpo/modules/kotlin/devtools/OkHttpExtensionsKt\n+ 5 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,265:1\n15#2,4:266\n36#3,4:270\n41#3,25:288\n33#4:274\n34#4:284\n46#4:285\n314#5,9:275\n323#5,2:286\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5\n+ 2 FileSystemNextModule.kt\nexpo/modules/filesystem/next/FileSystemNextModule\n*L\n33#1:266,4\n39#2:274\n39#2:284\n39#2:285\n39#2:275,9\n39#2:286,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001*\u00020\u00052\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007H\u008a@\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<name for destructuring parameter 0>",
        "",
        "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.filesystem.next.FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3"
    f = "FileSystemNextModule.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x113
    }
    m = "invokeSuspend"
    n = {
        "to",
        "url",
        "client",
        "$this$await$iv",
        "$completion$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;

    invoke-direct {p1, p3}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$4:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;

    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$3:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Request;

    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$2:Ljava/lang/Object;

    check-cast v0, Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/net/URI;

    iget-object v1, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lexpo/modules/filesystem/next/FileSystemPath;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 32
    aget-object v1, p1, v2

    aget-object p1, p1, v3

    .line 34
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    check-cast p1, Lexpo/modules/filesystem/next/FileSystemPath;

    check-cast v1, Ljava/net/URI;

    .line 270
    sget-object v5, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p1, v5}, Lexpo/modules/filesystem/next/FileSystemPath;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 271
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    const-string v7, "toURL(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 272
    new-instance v6, Lokhttp3/OkHttpClient;

    invoke-direct {v6}, Lokhttp3/OkHttpClient;-><init>()V

    .line 275
    iput-object p1, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$3:Ljava/lang/Object;

    iput-object p0, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->L$4:Ljava/lang/Object;

    iput v3, p0, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$$inlined$Coroutine$3;->label:I

    .line 276
    new-instance v7, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 282
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 283
    move-object v3, v7

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    .line 284
    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$2$$inlined$await$1;

    invoke-direct {v6, v3}, Lexpo/modules/filesystem/next/FileSystemNextModule$definition$lambda$40$lambda$2$$inlined$await$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v6, Lokhttp3/Callback;

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 286
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 275
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_2

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v1

    move-object v1, p1

    move-object p1, v3

    .line 273
    :goto_0
    check-cast p1, Lokhttp3/Response;

    .line 288
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 292
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    const-string v4, "content-disposition"

    invoke-virtual {v3, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    const-string v5, "content-type"

    invoke-virtual {v4, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    instance-of v3, v1, Lexpo/modules/filesystem/next/FileSystemDirectory;

    if-eqz v3, :cond_4

    .line 297
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lexpo/modules/filesystem/next/FileSystemPath;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_4
    invoke-virtual {v1}, Lexpo/modules/filesystem/next/FileSystemPath;->getFile()Ljava/io/File;

    move-result-object v3

    .line 302
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 306
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 307
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    .line 308
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v4, v1

    check-cast v4, Ljava/io/FileOutputStream;

    .line 309
    check-cast v4, Ljava/io/OutputStream;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v4, v2, v5, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 307
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 312
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 308
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 307
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 306
    :cond_5
    new-instance p1, Lexpo/modules/filesystem/next/UnableToDownloadException;

    const-string v0, "response body is null"

    invoke-direct {p1, v0}, Lexpo/modules/filesystem/next/UnableToDownloadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_6
    new-instance p1, Lexpo/modules/filesystem/next/DestinationAlreadyExistsException;

    invoke-direct {p1}, Lexpo/modules/filesystem/next/DestinationAlreadyExistsException;-><init>()V

    throw p1

    .line 289
    :cond_7
    new-instance v0, Lexpo/modules/filesystem/next/UnableToDownloadException;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response has status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lexpo/modules/filesystem/next/UnableToDownloadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
