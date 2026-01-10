.class public final Lexpo/modules/print/PrintModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "PrintModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrintModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrintModule.kt\nexpo/modules/print/PrintModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilderKt\n+ 6 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,174:1\n58#2:175\n14#3:176\n25#3:177\n27#4,3:178\n31#4:241\n257#5:181\n257#5:211\n23#6:182\n26#6,3:208\n23#6:212\n26#6,3:238\n161#7,5:183\n157#7:188\n148#7,17:191\n161#7,5:213\n157#7:218\n148#7,17:221\n143#8,2:189\n143#8,2:219\n*S KotlinDebug\n*F\n+ 1 PrintModule.kt\nexpo/modules/print/PrintModule\n*L\n28#1:175\n28#1:176\n28#1:177\n28#1:178,3\n28#1:241\n31#1:181\n35#1:211\n31#1:182\n31#1:208,3\n35#1:212\n35#1:238,3\n31#1:183,5\n31#1:188\n31#1:191,17\n35#1:213,5\n35#1:218\n35#1:221,17\n31#1:189,2\n35#1:219,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u001e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0016\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082@\u00a2\u0006\u0002\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\u000cH\u0082@\u00a2\u0006\u0002\u0010\u0017R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/print/PrintModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "jobName",
        "",
        "createPrintCallbacks",
        "Lexpo/modules/print/PrintPDFRenderTask$Callbacks;",
        "options",
        "Lexpo/modules/print/PrintOptions;",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "",
        "createPrintToFileCallbacks",
        "Lexpo/modules/print/FilePrintResult;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "getAttributesFromOptions",
        "Landroid/print/PrintAttributes$Builder;",
        "print",
        "(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "printDocumentToPrinter",
        "document",
        "Landroid/print/PrintDocumentAdapter;",
        "printToFile",
        "expo-print_release"
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
.field private final jobName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 27
    const-string v0, "Printing"

    iput-object v0, p0, Lexpo/modules/print/PrintModule;->jobName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$createPrintCallbacks(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lexpo/modules/print/PrintModule;->createPrintCallbacks(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPrintToFileCallbacks(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lexpo/modules/print/PrintModule;->createPrintToFileCallbacks(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$print(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lexpo/modules/print/PrintModule;->print(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$printDocumentToPrinter(Lexpo/modules/print/PrintModule;Landroid/print/PrintDocumentAdapter;Lexpo/modules/print/PrintOptions;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lexpo/modules/print/PrintModule;->printDocumentToPrinter(Landroid/print/PrintDocumentAdapter;Lexpo/modules/print/PrintOptions;)V

    return-void
.end method

.method public static final synthetic access$printToFile(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lexpo/modules/print/PrintModule;->printToFile(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final createPrintCallbacks(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/print/PrintOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/print/PrintPDFRenderTask$Callbacks;"
        }
    .end annotation

    .line 136
    new-instance v0, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;

    invoke-direct {v0, p0, p1, p2}, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;-><init>(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    return-object v0
.end method

.method private final createPrintToFileCallbacks(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/print/PrintOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/print/FilePrintResult;",
            ">;)",
            "Lexpo/modules/print/PrintPDFRenderTask$Callbacks;"
        }
    .end annotation

    .line 113
    new-instance v0, Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;

    invoke-direct {v0, p1, p2}, Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;-><init>(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    return-object v0
.end method

.method private final getAttributesFromOptions(Lexpo/modules/print/PrintOptions;)Landroid/print/PrintAttributes$Builder;
    .locals 2

    .line 156
    invoke-virtual {p1}, Lexpo/modules/print/PrintOptions;->getOrientation()Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 162
    const-string v1, "landscape"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    sget-object p1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0

    .line 165
    :cond_0
    sget-object p1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 170
    :goto_0
    sget-object p1, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    return-object v0
.end method

.method private final print(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/print/PrintOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/print/PrintModule$print$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lexpo/modules/print/PrintModule$print$2;-><init>(Lexpo/modules/print/PrintOptions;Lexpo/modules/print/PrintModule;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final printDocumentToPrinter(Landroid/print/PrintDocumentAdapter;Lexpo/modules/print/PrintOptions;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lexpo/modules/print/PrintModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/print/PrintManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/print/PrintManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0, p2}, Lexpo/modules/print/PrintModule;->getAttributesFromOptions(Lexpo/modules/print/PrintOptions;)Landroid/print/PrintAttributes$Builder;

    move-result-object p2

    .line 151
    iget-object v1, p0, Lexpo/modules/print/PrintModule;->jobName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    .line 152
    :cond_1
    new-instance p1, Lexpo/modules/print/PrintManagerNotAvailableException;

    invoke-direct {p1}, Lexpo/modules/print/PrintManagerNotAvailableException;-><init>()V

    throw p1
.end method

.method private final printToFile(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/print/PrintOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/print/FilePrintResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lexpo/modules/print/PrintModule$printToFile$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/print/PrintModule$printToFile$1;

    iget v1, v0, Lexpo/modules/print/PrintModule$printToFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/print/PrintModule$printToFile$1;

    invoke-direct {v0, p0, p2}, Lexpo/modules/print/PrintModule$printToFile$1;-><init>(Lexpo/modules/print/PrintModule;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget v2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lexpo/modules/print/PrintOptions;

    iget-object v5, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lexpo/modules/print/PrintModule;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p1

    move-object v9, v2

    move-object v7, v4

    move-object v6, v5

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 81
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 82
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 85
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lexpo/modules/print/PrintModule$printToFile$2;

    const/4 v11, 0x0

    move-object v6, v12

    move-object v8, p0

    move-object v9, p2

    move-object v10, v2

    invoke-direct/range {v6 .. v11}, Lexpo/modules/print/PrintModule$printToFile$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/print/PrintModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/print/PrintModule$printToFile$1;->label:I

    invoke-static {v5, v12, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, v2

    .line 100
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance p2, Lexpo/modules/print/PrintModule$printToFile$3;

    const/4 v10, 0x0

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lexpo/modules/print/PrintModule$printToFile$3;-><init>(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    iput-object v2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lexpo/modules/print/PrintModule$printToFile$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/print/PrintModule$printToFile$1;->label:I

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 14

    .line 28
    const-string v0, "landscape"

    const-string v1, "portrait"

    move-object v2, p0

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .line 175
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ModuleDefinition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ExpoModulesCore] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {v3}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 175
    :try_start_0
    new-instance v3, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v3, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 29
    const-string v2, "ExpoPrint"

    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 31
    const-string v2, "print"

    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v2

    .line 182
    new-instance v4, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v5

    .line 184
    const-class v6, Lexpo/modules/print/PrintOptions;

    const/4 v6, 0x1

    .line 187
    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 188
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 189
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/print/PrintOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_0

    .line 188
    sget-object v8, Lexpo/modules/print/PrintModule$definition$lambda$2$$inlined$Coroutine$1;->INSTANCE:Lexpo/modules/print/PrintModule$definition$lambda$2$$inlined$Coroutine$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 191
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 192
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/print/PrintOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v10, v12, v11, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 191
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 188
    :cond_0
    aput-object v8, v7, v11

    .line 208
    new-instance v8, Lexpo/modules/print/PrintModule$definition$lambda$2$$inlined$Coroutine$2;

    const/4 v9, 0x0

    invoke-direct {v8, v9, p0}, Lexpo/modules/print/PrintModule$definition$lambda$2$$inlined$Coroutine$2;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/print/PrintModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .line 182
    invoke-direct {v4, v5, v7, v8}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 209
    check-cast v4, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v2, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 35
    const-string v2, "printToFileAsync"

    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v2

    .line 212
    new-instance v4, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v5

    .line 214
    const-class v7, Lexpo/modules/print/PrintOptions;

    .line 217
    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 218
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 219
    new-instance v10, Lkotlin/Pair;

    const-class v12, Lexpo/modules/print/PrintOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_1

    .line 218
    sget-object v8, Lexpo/modules/print/PrintModule$definition$lambda$2$$inlined$Coroutine$3;->INSTANCE:Lexpo/modules/print/PrintModule$definition$lambda$2$$inlined$Coroutine$3;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 221
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 222
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/print/PrintOptions;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v11, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 221
    invoke-direct {v10, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v10

    .line 218
    :cond_1
    aput-object v8, v7, v11

    .line 238
    new-instance v8, Lexpo/modules/print/PrintModule$definition$lambda$2$$inlined$Coroutine$4;

    invoke-direct {v8, v9, p0}, Lexpo/modules/print/PrintModule$definition$lambda$2$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/print/PrintModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .line 212
    invoke-direct {v4, v5, v7, v8}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 239
    check-cast v4, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v2, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 40
    new-array v2, v6, [Lkotlin/Pair;

    const-string v4, "Orientation"

    const/4 v5, 0x2

    .line 41
    new-array v5, v5, [Lkotlin/Pair;

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v11

    .line 42
    invoke-static {v0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v5, v6

    .line 40
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v11

    .line 39
    invoke-virtual {v3, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants([Lkotlin/Pair;)V

    .line 175
    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lexpo/modules/print/PrintModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method
