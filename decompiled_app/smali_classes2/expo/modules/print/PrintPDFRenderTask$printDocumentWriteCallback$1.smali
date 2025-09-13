.class public final Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;
.super Landroid/print/PrintDocumentAdapterWriteCallback;
.source "PrintPDFRenderTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/print/PrintPDFRenderTask;-><init>(Landroid/content/Context;Lexpo/modules/print/PrintOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001b\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "expo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1",
        "Landroid/print/PrintDocumentAdapterWriteCallback;",
        "onWriteFailed",
        "",
        "error",
        "",
        "onWriteFinished",
        "pages",
        "",
        "Landroid/print/PageRange;",
        "([Landroid/print/PageRange;)V",
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
.field final synthetic this$0:Lexpo/modules/print/PrintPDFRenderTask;


# direct methods
.method constructor <init>(Lexpo/modules/print/PrintPDFRenderTask;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    .line 102
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapterWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 3

    .line 109
    iget-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p1}, Lexpo/modules/print/PrintPDFRenderTask;->access$getCallbacks$p(Lexpo/modules/print/PrintPDFRenderTask;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "callbacks"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    new-instance v1, Lexpo/modules/print/PdfWriteException;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v0}, Lexpo/modules/print/PdfWriteException;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {p1, v1}, Lexpo/modules/print/PrintPDFRenderTask$Callbacks;->onRenderError(Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 3

    const-string v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p1}, Lexpo/modules/print/PrintPDFRenderTask;->access$getCallbacks$p(Lexpo/modules/print/PrintPDFRenderTask;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "callbacks"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {v1}, Lexpo/modules/print/PrintPDFRenderTask;->access$getDocument$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintDocumentAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "document"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    iget-object v2, p0, Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {v2}, Lexpo/modules/print/PrintPDFRenderTask;->access$getOutputFile$p(Lexpo/modules/print/PrintPDFRenderTask;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "outputFile"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iget-object v2, p0, Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {v2}, Lexpo/modules/print/PrintPDFRenderTask;->access$getNumberOfPages$p(Lexpo/modules/print/PrintPDFRenderTask;)I

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lexpo/modules/print/PrintPDFRenderTask$Callbacks;->onRenderFinished(Landroid/print/PrintDocumentAdapter;Ljava/io/File;I)V

    return-void
.end method
