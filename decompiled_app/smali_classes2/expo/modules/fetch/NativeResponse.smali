.class public final Lexpo/modules/fetch/NativeResponse;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "NativeResponse.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/fetch/NativeResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeResponse.kt\nexpo/modules/fetch/NativeResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,207:1\n1#2:208\n1549#3:209\n1620#3,3:210\n*S KotlinDebug\n*F\n+ 1 NativeResponse.kt\nexpo/modules/fetch/NativeResponse\n*L\n157#1:209\n157#1:210,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 @2\u00020\u00012\u00020\u0002:\u0001@B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010%\u001a\u00020&J\u0010\u0010\'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020&H\u0016J\u0006\u0010+\u001a\u00020&J!\u0010,\u001a\u00020\t2\u0012\u0010-\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001b0.\"\u00020\u001bH\u0002\u00a2\u0006\u0002\u0010/J\u0018\u00100\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0006\u0010(\u001a\u00020)H\u0016J\u0006\u00106\u001a\u00020&J\u0010\u00107\u001a\u00020&2\u0006\u00108\u001a\u000209H\u0002J\u0008\u0010:\u001a\u0004\u0018\u00010;J(\u0010<\u001a\u00020&2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u001b0>2\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020&0#R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u000f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u000e\u0010\u000c\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R&\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u001b8B@BX\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\t0#j\u0002`$0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lexpo/modules/fetch/NativeResponse;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "Lokhttp3/Callback;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lexpo/modules/kotlin/AppContext;Lkotlinx/coroutines/CoroutineScope;)V",
        "bodyUsed",
        "",
        "getBodyUsed",
        "()Z",
        "<set-?>",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "getError",
        "()Ljava/lang/Exception;",
        "Lexpo/modules/fetch/NativeResponseInit;",
        "responseInit",
        "getResponseInit",
        "()Lexpo/modules/fetch/NativeResponseInit;",
        "sink",
        "Lexpo/modules/fetch/ResponseSink;",
        "getSink",
        "()Lexpo/modules/fetch/ResponseSink;",
        "value",
        "Lexpo/modules/fetch/ResponseState;",
        "state",
        "getState",
        "()Lexpo/modules/fetch/ResponseState;",
        "setState",
        "(Lexpo/modules/fetch/ResponseState;)V",
        "stateChangeOnceListeners",
        "",
        "Lkotlin/Function1;",
        "Lexpo/modules/fetch/StateChangeListener;",
        "cancelStreaming",
        "",
        "createResponseInit",
        "response",
        "Lokhttp3/Response;",
        "deallocate",
        "emitRequestCancelled",
        "isInvalidState",
        "validStates",
        "",
        "([Lexpo/modules/fetch/ResponseState;)Z",
        "onFailure",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "onStarted",
        "pumpResponseBodyStream",
        "stream",
        "Lokio/BufferedSource;",
        "startStreaming",
        "",
        "waitForStates",
        "states",
        "",
        "callback",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/fetch/NativeResponse$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private error:Ljava/lang/Exception;

.field private responseInit:Lexpo/modules/fetch/NativeResponseInit;

.field private final sink:Lexpo/modules/fetch/ResponseSink;

.field private state:Lexpo/modules/fetch/ResponseState;

.field private final stateChangeOnceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lexpo/modules/fetch/ResponseState;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/fetch/NativeResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/fetch/NativeResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/fetch/NativeResponse;->Companion:Lexpo/modules/fetch/NativeResponse$Companion;

    .line 202
    const-string v0, "NativeResponse"

    sput-object v0, Lexpo/modules/fetch/NativeResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/AppContext;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/AppContext;)V

    .line 17
    iput-object p2, p0, Lexpo/modules/fetch/NativeResponse;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 19
    new-instance p1, Lexpo/modules/fetch/ResponseSink;

    invoke-direct {p1}, Lexpo/modules/fetch/ResponseSink;-><init>()V

    iput-object p1, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    .line 20
    sget-object p1, Lexpo/modules/fetch/ResponseState;->INITIALIZED:Lexpo/modules/fetch/ResponseState;

    iput-object p1, p0, Lexpo/modules/fetch/NativeResponse;->state:Lexpo/modules/fetch/ResponseState;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/fetch/NativeResponse;->stateChangeOnceListeners:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getState(Lexpo/modules/fetch/NativeResponse;)Lexpo/modules/fetch/ResponseState;
    .locals 0

    .line 17
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStateChangeOnceListeners$p(Lexpo/modules/fetch/NativeResponse;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lexpo/modules/fetch/NativeResponse;->stateChangeOnceListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$pumpResponseBodyStream(Lexpo/modules/fetch/NativeResponse;Lokio/BufferedSource;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lexpo/modules/fetch/NativeResponse;->pumpResponseBodyStream(Lokio/BufferedSource;)V

    return-void
.end method

.method public static final synthetic access$setState(Lexpo/modules/fetch/NativeResponse;Lexpo/modules/fetch/ResponseState;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    return-void
.end method

.method private final createResponseInit(Lokhttp3/Response;)Lexpo/modules/fetch/NativeResponseInit;
    .locals 6

    .line 155
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    .line 156
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 210
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 211
    check-cast v4, Lkotlin/Pair;

    .line 158
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 211
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 160
    invoke-virtual {p1}, Lokhttp3/Response;->isRedirect()Z

    move-result v5

    .line 161
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    new-instance p1, Lexpo/modules/fetch/NativeResponseInit;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lexpo/modules/fetch/NativeResponseInit;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method private final getState()Lexpo/modules/fetch/ResponseState;
    .locals 1

    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->state:Lexpo/modules/fetch/ResponseState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final varargs isInvalidState([Lexpo/modules/fetch/ResponseState;)Z
    .locals 10

    .line 145
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    const-string v0, ","

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v0, Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;->INSTANCE:Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 150
    sget-object v0, Lexpo/modules/fetch/NativeResponse;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/fetch/ResponseState;->getIntValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state - currentState["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] validStates["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method private final pumpResponseBodyStream(Lokio/BufferedSource;)V
    .locals 3

    .line 173
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 175
    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    sget-object v1, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 176
    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 177
    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_CANCELLED:Lexpo/modules/fetch/ResponseState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 174
    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v1, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/fetch/ResponseSink;->appendBufferBody$expo_release([B)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v1, :cond_3

    .line 185
    const-string v0, "didReceiveResponseData"

    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    move-object v0, p1

    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lexpo/modules/fetch/NativeResponse;->error:Ljava/lang/Exception;

    .line 192
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v1, :cond_2

    .line 193
    const-string v0, "didFailWithError"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_2
    sget-object p1, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, p1}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final setState(Lexpo/modules/fetch/ResponseState;)V
    .locals 7

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iput-object p1, p0, Lexpo/modules/fetch/NativeResponse;->state:Lexpo/modules/fetch/ResponseState;

    .line 25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 26
    iget-object v1, p0, Lexpo/modules/fetch/NativeResponse;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lexpo/modules/fetch/NativeResponse$state$3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lexpo/modules/fetch/NativeResponse$state$3;-><init>(Lexpo/modules/fetch/NativeResponse;Lexpo/modules/fetch/ResponseState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final cancelStreaming()V
    .locals 3

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    const/4 v1, 0x0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object v0, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_CANCELLED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    return-void
.end method

.method public deallocate()V
    .locals 1

    .line 41
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-virtual {v0}, Lexpo/modules/fetch/ResponseSink;->finalize()[B

    .line 42
    invoke-super {p0}, Lexpo/modules/kotlin/sharedobjects/SharedObject;->deallocate()V

    return-void
.end method

.method public final emitRequestCancelled()V
    .locals 3

    .line 75
    new-instance v0, Lexpo/modules/fetch/FetchRequestCancelledException;

    invoke-direct {v0}, Lexpo/modules/fetch/FetchRequestCancelledException;-><init>()V

    .line 76
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    iput-object v1, p0, Lexpo/modules/fetch/NativeResponse;->error:Ljava/lang/Exception;

    .line 77
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v1

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    if-ne v1, v2, :cond_0

    .line 78
    const-string v1, "didFailWithError"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_0
    sget-object v0, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    return-void
.end method

.method public final getBodyUsed()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-virtual {v0}, Lexpo/modules/fetch/ResponseSink;->getBodyUsed()Z

    move-result v0

    return v0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getResponseInit()Lexpo/modules/fetch/NativeResponseInit;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->responseInit:Lexpo/modules/fetch/NativeResponseInit;

    return-object v0
.end method

.method public final getSink()Lexpo/modules/fetch/ResponseSink;
    .locals 1

    .line 19
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    return-object v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Canceled"

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 106
    new-array p1, p1, [Lexpo/modules/fetch/ResponseState;

    sget-object v0, Lexpo/modules/fetch/ResponseState;->STARTED:Lexpo/modules/fetch/ResponseState;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    .line 107
    sget-object v2, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, p1, v0

    const/4 v0, 0x2

    .line 108
    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, p1, v0

    const/4 v0, 0x3

    .line 109
    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_CANCELLED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, p1, v0

    .line 105
    invoke-direct {p0, p1}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object p1

    sget-object v0, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    if-ne p1, v0, :cond_2

    .line 116
    const-string p1, "didFailWithError"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_2
    check-cast p2, Ljava/lang/Exception;

    iput-object p2, p0, Lexpo/modules/fetch/NativeResponse;->error:Ljava/lang/Exception;

    .line 119
    sget-object p1, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, p1}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 120
    const-string p1, "readyForJSFinalization"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p2}, Lexpo/modules/fetch/NativeResponse;->createResponseInit(Lokhttp3/Response;)Lexpo/modules/fetch/NativeResponseInit;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/fetch/NativeResponse;->responseInit:Lexpo/modules/fetch/NativeResponseInit;

    .line 125
    sget-object p1, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, p1}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 127
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lexpo/modules/fetch/NativeResponse$onResponse$1;

    const/4 v2, 0x0

    invoke-direct {p1, p2, p0, v2}, Lexpo/modules/fetch/NativeResponse$onResponse$1;-><init>(Lokhttp3/Response;Lexpo/modules/fetch/NativeResponse;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onStarted()V
    .locals 3

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    const/4 v1, 0x0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->INITIALIZED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    sget-object v0, Lexpo/modules/fetch/ResponseState;->STARTED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    return-void
.end method

.method public final startStreaming()[B
    .locals 3

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    const/4 v1, 0x0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_COMPLETED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 56
    :cond_0
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v2, :cond_1

    .line 57
    sget-object v0, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 58
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-virtual {v0}, Lexpo/modules/fetch/ResponseSink;->finalize()[B

    move-result-object v0

    .line 59
    const-string v2, "didReceiveResponseData"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_COMPLETED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v2, :cond_2

    .line 61
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-virtual {v0}, Lexpo/modules/fetch/ResponseSink;->finalize()[B

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final waitForStates(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/fetch/ResponseState;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/fetch/ResponseState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "states"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->stateChangeOnceListeners:Ljava/util/List;

    new-instance v1, Lexpo/modules/fetch/NativeResponse$waitForStates$1;

    invoke-direct {v1, p1, p2}, Lexpo/modules/fetch/NativeResponse$waitForStates$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
