.class public final Lexpo/modules/print/PrintModule$createPrintCallbacks$1;
.super Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
.source "PrintModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/print/PrintModule;->createPrintCallbacks(Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\"\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "expo/modules/print/PrintModule$createPrintCallbacks$1",
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
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $options:Lexpo/modules/print/PrintOptions;

.field final synthetic this$0:Lexpo/modules/print/PrintModule;


# direct methods
.method constructor <init>(Lexpo/modules/print/PrintModule;Lexpo/modules/print/PrintOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/print/PrintModule;",
            "Lexpo/modules/print/PrintOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;->this$0:Lexpo/modules/print/PrintModule;

    iput-object p2, p0, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;->$options:Lexpo/modules/print/PrintOptions;

    iput-object p3, p0, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;->$continuation:Lkotlin/coroutines/Continuation;

    .line 136
    invoke-direct {p0}, Lexpo/modules/print/PrintPDFRenderTask$Callbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderError(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;->$continuation:Lkotlin/coroutines/Continuation;

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
    .locals 0

    const-string p2, "document"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;->this$0:Lexpo/modules/print/PrintModule;

    iget-object p3, p0, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;->$options:Lexpo/modules/print/PrintOptions;

    invoke-static {p2, p1, p3}, Lexpo/modules/print/PrintModule;->access$printDocumentToPrinter(Lexpo/modules/print/PrintModule;Landroid/print/PrintDocumentAdapter;Lexpo/modules/print/PrintOptions;)V

    .line 139
    iget-object p1, p0, Lexpo/modules/print/PrintModule$createPrintCallbacks$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
