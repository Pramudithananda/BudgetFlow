.class public final Lexpo/modules/fetch/NativeRequest;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "NativeRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ(\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/fetch/NativeRequest;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "response",
        "Lexpo/modules/fetch/NativeResponse;",
        "(Lexpo/modules/kotlin/AppContext;Lexpo/modules/fetch/NativeResponse;)V",
        "requestHolder",
        "Lexpo/modules/fetch/RequestHolder;",
        "getResponse$expo_release",
        "()Lexpo/modules/fetch/NativeResponse;",
        "task",
        "Lokhttp3/Call;",
        "cancel",
        "",
        "start",
        "client",
        "Lokhttp3/OkHttpClient;",
        "url",
        "Ljava/net/URL;",
        "requestInit",
        "Lexpo/modules/fetch/NativeRequestInit;",
        "requestBody",
        "",
        "expo_release"
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
.field private final requestHolder:Lexpo/modules/fetch/RequestHolder;

.field private final response:Lexpo/modules/fetch/NativeResponse;

.field private task:Lokhttp3/Call;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/fetch/NativeResponse;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/AppContext;)V

    .line 17
    iput-object p2, p0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    .line 19
    new-instance p1, Lexpo/modules/fetch/RequestHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lexpo/modules/fetch/RequestHolder;-><init>(Lokhttp3/Request;)V

    iput-object p1, p0, Lexpo/modules/fetch/NativeRequest;->requestHolder:Lexpo/modules/fetch/RequestHolder;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/fetch/NativeRequest;->task:Lokhttp3/Call;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 46
    iget-object v0, p0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    invoke-virtual {v0}, Lexpo/modules/fetch/NativeResponse;->emitRequestCancelled()V

    return-void
.end method

.method public final getResponse$expo_release()Lexpo/modules/fetch/NativeResponse;
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    return-object v0
.end method

.method public final start(Lokhttp3/OkHttpClient;Ljava/net/URL;Lexpo/modules/fetch/NativeRequestInit;[B)V
    .locals 10

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestInit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3}, Lexpo/modules/fetch/NativeRequestInit;->getCredentials()Lexpo/modules/fetch/NativeRequestCredentials;

    move-result-object v0

    sget-object v1, Lexpo/modules/fetch/NativeRequestCredentials;->INCLUDE:Lexpo/modules/fetch/NativeRequestCredentials;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 29
    :goto_0
    invoke-virtual {p3}, Lexpo/modules/fetch/NativeRequestInit;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/fetch/RequestUtilsKt;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    move-result-object v0

    .line 30
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v3, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 31
    :goto_1
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 32
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {p3}, Lexpo/modules/fetch/NativeRequestInit;->getMethod()Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_2

    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p4

    invoke-static/range {v3 .. v9}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, p3, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 34
    sget-object p4, Lexpo/modules/fetch/OkHttpFileUrlInterceptor;->Companion:Lexpo/modules/fetch/OkHttpFileUrlInterceptor$Companion;

    invoke-virtual {p4, p2}, Lexpo/modules/fetch/OkHttpFileUrlInterceptor$Companion;->handleFileUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p3, p2}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 36
    iget-object p3, p0, Lexpo/modules/fetch/NativeRequest;->requestHolder:Lexpo/modules/fetch/RequestHolder;

    invoke-virtual {p3, p2}, Lexpo/modules/fetch/RequestHolder;->setRequest(Lokhttp3/Request;)V

    .line 38
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/fetch/NativeRequest;->task:Lokhttp3/Call;

    if-eqz p1, :cond_3

    .line 39
    iget-object p2, p0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    check-cast p2, Lokhttp3/Callback;

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 40
    :cond_3
    iget-object p1, p0, Lexpo/modules/fetch/NativeRequest;->response:Lexpo/modules/fetch/NativeResponse;

    invoke-virtual {p1}, Lexpo/modules/fetch/NativeResponse;->onStarted()V

    return-void
.end method
