.class final Lexpo/modules/print/PrintModule$printToFile$2;
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
    c = "expo.modules.print.PrintModule$printToFile$2"
    f = "PrintModule.kt"
    i = {}
    l = {}
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

.field final synthetic $filePath:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lexpo/modules/print/PrintModule;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/print/PrintModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lexpo/modules/print/PrintModule;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/print/PrintModule$printToFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lexpo/modules/print/PrintModule$printToFile$2;->this$0:Lexpo/modules/print/PrintModule;

    iput-object p3, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$fileDescriptor:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lexpo/modules/print/PrintModule$printToFile$2;

    iget-object v1, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lexpo/modules/print/PrintModule$printToFile$2;->this$0:Lexpo/modules/print/PrintModule;

    iget-object v3, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$fileDescriptor:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/print/PrintModule$printToFile$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/print/PrintModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/print/PrintModule$printToFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/print/PrintModule$printToFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/print/PrintModule$printToFile$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/print/PrintModule$printToFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 85
    iget v0, p0, Lexpo/modules/print/PrintModule$printToFile$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    :try_start_0
    iget-object p1, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lexpo/modules/print/FileUtils;->INSTANCE:Lexpo/modules/print/FileUtils;

    iget-object v1, p0, Lexpo/modules/print/PrintModule$printToFile$2;->this$0:Lexpo/modules/print/PrintModule;

    invoke-virtual {v1}, Lexpo/modules/print/PrintModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/print/FileUtils;->generateFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    iget-object p1, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 94
    iget-object p1, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$fileDescriptor:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lexpo/modules/print/PrintModule$printToFile$2;->$outputFile:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    const/high16 v1, 0x24000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_0
    move-exception p1

    .line 96
    new-instance v0, Lexpo/modules/print/FileNotFoundException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lexpo/modules/print/FileNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 89
    new-instance v0, Lexpo/modules/print/UnexpectedPrintException;

    const-string v1, "An unknown I/O exception occurred "

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lexpo/modules/print/UnexpectedPrintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
