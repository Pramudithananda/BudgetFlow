.class final Lexpo/modules/fetch/NativeResponse$state$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NativeResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "expo.modules.fetch.NativeResponse$state$3"
    f = "NativeResponse.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $value:Lexpo/modules/fetch/ResponseState;

.field label:I

.field final synthetic this$0:Lexpo/modules/fetch/NativeResponse;


# direct methods
.method constructor <init>(Lexpo/modules/fetch/NativeResponse;Lexpo/modules/fetch/ResponseState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/fetch/NativeResponse;",
            "Lexpo/modules/fetch/ResponseState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/fetch/NativeResponse$state$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/fetch/NativeResponse$state$3;->this$0:Lexpo/modules/fetch/NativeResponse;

    iput-object p2, p0, Lexpo/modules/fetch/NativeResponse$state$3;->$value:Lexpo/modules/fetch/ResponseState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/fetch/NativeResponse$state$3;

    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse$state$3;->this$0:Lexpo/modules/fetch/NativeResponse;

    iget-object v1, p0, Lexpo/modules/fetch/NativeResponse$state$3;->$value:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/fetch/NativeResponse$state$3;-><init>(Lexpo/modules/fetch/NativeResponse;Lexpo/modules/fetch/ResponseState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/fetch/NativeResponse$state$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/fetch/NativeResponse$state$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/fetch/NativeResponse$state$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/fetch/NativeResponse$state$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 26
    iget v0, p0, Lexpo/modules/fetch/NativeResponse$state$3;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lexpo/modules/fetch/NativeResponse$state$3;->this$0:Lexpo/modules/fetch/NativeResponse;

    invoke-static {p1}, Lexpo/modules/fetch/NativeResponse;->access$getStateChangeOnceListeners$p(Lexpo/modules/fetch/NativeResponse;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lexpo/modules/fetch/NativeResponse$state$3$1;

    iget-object v1, p0, Lexpo/modules/fetch/NativeResponse$state$3;->$value:Lexpo/modules/fetch/ResponseState;

    invoke-direct {v0, v1}, Lexpo/modules/fetch/NativeResponse$state$3$1;-><init>(Lexpo/modules/fetch/ResponseState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
