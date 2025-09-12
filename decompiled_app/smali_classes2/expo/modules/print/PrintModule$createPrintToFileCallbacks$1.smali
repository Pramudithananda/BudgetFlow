.class public final Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;
.super Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
.source "PrintModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/print/PrintModule;->createPrintToFileCallbacks(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrintModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrintModule.kt\nexpo/modules/print/PrintModule$createPrintToFileCallbacks$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,174:1\n1#2:175\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\"\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "expo/modules/print/PrintModule$createPrintToFileCallbacks$1",
        "Lexpo/modules/print/PrintPDFRenderTask$Callbacks;",
        "onRenderError",
        "",
        "exception",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "onRenderFinished",
        "document",
        "Landroid/print/PrintDocumentAdapter;",
        "outputFile",
        "Ljava/io/File;",
        "numberOfPages",
        "",
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
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lexpo/modules/print/FilePrintResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $options:Lexpo/modules/print/PrintOptions;


# direct methods
.method constructor <init>(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/print/PrintOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/print/FilePrintResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;->$options:Lexpo/modules/print/PrintOptions;

    iput-object p2, p0, Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;->$continuation:Lkotlin/coroutines/Continuation;

    .line 113
    invoke-direct {p0}, Lexpo/modules/print/PrintPDFRenderTask$Callbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderError(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onRenderFinished(Landroid/print/PrintDocumentAdapter;Ljava/io/File;I)V
    .locals 2

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object p1, Lexpo/modules/print/FileUtils;->INSTANCE:Lexpo/modules/print/FileUtils;

    invoke-virtual {p1, p2}, Lexpo/modules/print/FileUtils;->uriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;->$options:Lexpo/modules/print/PrintOptions;

    invoke-virtual {v0}, Lexpo/modules/print/PrintOptions;->getBase64()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 119
    :try_start_0
    sget-object v0, Lexpo/modules/print/FileUtils;->INSTANCE:Lexpo/modules/print/FileUtils;

    invoke-virtual {v0, p2}, Lexpo/modules/print/FileUtils;->encodeFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    iget-object p2, p0, Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p3, Lexpo/modules/print/Base64EncodingFailedException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p3, p1}, Lexpo/modules/print/Base64EncodingFailedException;-><init>(Ljava/lang/Throwable;)V

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 125
    :cond_0
    :goto_0
    new-instance p2, Lexpo/modules/print/FilePrintResult;

    invoke-direct {p2, p1, p3, v1}, Lexpo/modules/print/FilePrintResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    iget-object p1, p0, Lexpo/modules/print/PrintModule$createPrintToFileCallbacks$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
