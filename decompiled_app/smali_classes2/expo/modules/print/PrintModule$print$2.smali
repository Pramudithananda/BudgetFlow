.class final Lexpo/modules/print/PrintModule$print$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PrintModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/print/PrintModule;->print(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrintModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrintModule.kt\nexpo/modules/print/PrintModule$print$2\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,174:1\n314#2,11:175\n*S KotlinDebug\n*F\n+ 1 PrintModule.kt\nexpo/modules/print/PrintModule$print$2\n*L\n52#1:175,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
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
    c = "expo.modules.print.PrintModule$print$2"
    f = "PrintModule.kt"
    i = {}
    l = {
        0xaf
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $options:Lexpo/modules/print/PrintOptions;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/print/PrintModule;


# direct methods
.method constructor <init>(Lexpo/modules/print/PrintOptions;Lexpo/modules/print/PrintModule;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/print/PrintOptions;",
            "Lexpo/modules/print/PrintModule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/print/PrintModule$print$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/print/PrintModule$print$2;->$options:Lexpo/modules/print/PrintOptions;

    iput-object p2, p0, Lexpo/modules/print/PrintModule$print$2;->this$0:Lexpo/modules/print/PrintModule;

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

    new-instance p1, Lexpo/modules/print/PrintModule$print$2;

    iget-object v0, p0, Lexpo/modules/print/PrintModule$print$2;->$options:Lexpo/modules/print/PrintOptions;

    iget-object v1, p0, Lexpo/modules/print/PrintModule$print$2;->this$0:Lexpo/modules/print/PrintModule;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/print/PrintModule$print$2;-><init>(Lexpo/modules/print/PrintOptions;Lexpo/modules/print/PrintModule;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/print/PrintModule$print$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/print/PrintModule$print$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/print/PrintModule$print$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/print/PrintModule$print$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 51
    iget v1, p0, Lexpo/modules/print/PrintModule$print$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lexpo/modules/print/PrintModule$print$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/print/PrintModule;

    iget-object v0, p0, Lexpo/modules/print/PrintModule$print$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/print/PrintOptions;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lexpo/modules/print/PrintModule$print$2;->$options:Lexpo/modules/print/PrintOptions;

    iget-object v1, p0, Lexpo/modules/print/PrintModule$print$2;->this$0:Lexpo/modules/print/PrintModule;

    .line 175
    iput-object p1, p0, Lexpo/modules/print/PrintModule$print$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lexpo/modules/print/PrintModule$print$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lexpo/modules/print/PrintModule$print$2;->label:I

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 176
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 182
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 183
    move-object v2, v4

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 53
    invoke-virtual {p1}, Lexpo/modules/print/PrintOptions;->getHtml()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 56
    :try_start_0
    new-instance v5, Lexpo/modules/print/PrintPDFRenderTask;

    invoke-virtual {v1}, Lexpo/modules/print/PrintModule;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, p1}, Lexpo/modules/print/PrintPDFRenderTask;-><init>(Landroid/content/Context;Lexpo/modules/print/PrintOptions;)V

    .line 60
    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v1, p1, v7}, Lexpo/modules/print/PrintModule;->access$createPrintCallbacks(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    move-result-object p1

    .line 57
    invoke-virtual {v5, v6, v6, p1}, Lexpo/modules/print/PrintPDFRenderTask;->render(Ljava/io/File;Landroid/os/ParcelFileDescriptor;Lexpo/modules/print/PrintPDFRenderTask$Callbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    check-cast v2, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lexpo/modules/print/UnexpectedPrintException;

    const-string v5, "There was an error while trying to print HTML "

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, v5, p1}, Lexpo/modules/print/UnexpectedPrintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_2
    :try_start_1
    new-instance v5, Lexpo/modules/print/PrintDocumentAdapter;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Lexpo/modules/print/PrintModule;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1}, Lexpo/modules/print/PrintOptions;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Lexpo/modules/print/PrintDocumentAdapter;-><init>(Ljava/lang/ref/WeakReference;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    .line 69
    check-cast v5, Landroid/print/PrintDocumentAdapter;

    invoke-static {v1, v5, p1}, Lexpo/modules/print/PrintModule;->access$printDocumentToPrinter(Lexpo/modules/print/PrintModule;Landroid/print/PrintDocumentAdapter;Lexpo/modules/print/PrintOptions;)V

    .line 70
    move-object p1, v2

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 72
    check-cast v2, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lexpo/modules/print/UnexpectedPrintException;

    const-string v5, "There was an error while trying to print file "

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, v5, p1}, Lexpo/modules/print/UnexpectedPrintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 184
    :goto_0
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 175
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    return-object p1
.end method
