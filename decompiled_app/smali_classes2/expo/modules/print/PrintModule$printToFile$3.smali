.class final Lexpo/modules/print/PrintModule$printToFile$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PrintModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/print/PrintModule;->printToFile(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lexpo/modules/print/FilePrintResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrintModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrintModule.kt\nexpo/modules/print/PrintModule$printToFile$3\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,174:1\n314#2,11:175\n*S KotlinDebug\n*F\n+ 1 PrintModule.kt\nexpo/modules/print/PrintModule$printToFile$3\n*L\n101#1:175,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/print/FilePrintResult;",
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
    c = "expo.modules.print.PrintModule$printToFile$3"
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
.field final synthetic $fileDescriptor:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $options:Lexpo/modules/print/PrintOptions;

.field final synthetic $outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/print/PrintModule;


# direct methods
.method constructor <init>(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/print/PrintModule;",
            "Lexpo/modules/print/PrintOptions;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/print/PrintModule$printToFile$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/print/PrintModule$printToFile$3;->this$0:Lexpo/modules/print/PrintModule;

    iput-object p2, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$options:Lexpo/modules/print/PrintOptions;

    iput-object p3, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$fileDescriptor:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lexpo/modules/print/PrintModule$printToFile$3;

    iget-object v1, p0, Lexpo/modules/print/PrintModule$printToFile$3;->this$0:Lexpo/modules/print/PrintModule;

    iget-object v2, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$options:Lexpo/modules/print/PrintOptions;

    iget-object v3, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$fileDescriptor:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/print/PrintModule$printToFile$3;-><init>(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/print/PrintModule$printToFile$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lexpo/modules/print/FilePrintResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/print/PrintModule$printToFile$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/print/PrintModule$printToFile$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/print/PrintModule$printToFile$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 100
    iget v1, p0, Lexpo/modules/print/PrintModule$printToFile$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lexpo/modules/print/PrintModule$printToFile$3;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lexpo/modules/print/PrintModule$printToFile$3;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lexpo/modules/print/PrintModule$printToFile$3;->L$1:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/print/PrintOptions;

    iget-object v0, p0, Lexpo/modules/print/PrintModule$printToFile$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/print/PrintModule;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lexpo/modules/print/PrintModule$printToFile$3;->this$0:Lexpo/modules/print/PrintModule;

    iget-object v1, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$options:Lexpo/modules/print/PrintOptions;

    iget-object v3, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lexpo/modules/print/PrintModule$printToFile$3;->$fileDescriptor:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 175
    iput-object p1, p0, Lexpo/modules/print/PrintModule$printToFile$3;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lexpo/modules/print/PrintModule$printToFile$3;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lexpo/modules/print/PrintModule$printToFile$3;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lexpo/modules/print/PrintModule$printToFile$3;->L$3:Ljava/lang/Object;

    iput v2, p0, Lexpo/modules/print/PrintModule$printToFile$3;->label:I

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 176
    new-instance v6, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 182
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 183
    move-object v2, v6

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 102
    new-instance v7, Lexpo/modules/print/PrintPDFRenderTask;

    invoke-virtual {p1}, Lexpo/modules/print/PrintModule;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lexpo/modules/print/PrintPDFRenderTask;-><init>(Landroid/content/Context;Lexpo/modules/print/PrintOptions;)V

    .line 104
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .line 105
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 106
    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v1, v2}, Lexpo/modules/print/PrintModule;->access$createPrintToFileCallbacks(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    move-result-object p1

    .line 103
    invoke-virtual {v7, v3, v4, p1}, Lexpo/modules/print/PrintPDFRenderTask;->render(Ljava/io/File;Landroid/os/ParcelFileDescriptor;Lexpo/modules/print/PrintPDFRenderTask$Callbacks;)V

    .line 184
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 175
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
