.class public final Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;
.super Landroid/webkit/WebViewClient;
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/print/PrintPDFRenderTask$webViewClient$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "shouldOverrideUrlLoading",
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
.field final synthetic this$0:Lexpo/modules/print/PrintPDFRenderTask;


# direct methods
.method constructor <init>(Lexpo/modules/print/PrintPDFRenderTask;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    .line 81
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    const-string v0, "Document"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    const-string v1, "createPrintDocumentAdapter(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lexpo/modules/print/PrintPDFRenderTask;->access$setDocument$p(Lexpo/modules/print/PrintPDFRenderTask;Landroid/print/PrintDocumentAdapter;)V

    .line 89
    iget-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p2}, Lexpo/modules/print/PrintPDFRenderTask;->access$getDocument$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintDocumentAdapter;

    move-result-object p2

    const-string v0, "document"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    iget-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p2}, Lexpo/modules/print/PrintPDFRenderTask;->access$getPrintAttributes(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintAttributes;

    move-result-object v4

    new-instance p2, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1$onPageFinished$1;

    invoke-direct {p2}, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1$onPageFinished$1;-><init>()V

    move-object v6, p2

    check-cast v6, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    .line 91
    iget-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p2}, Lexpo/modules/print/PrintPDFRenderTask;->access$getPIXELS_PER_MIL$p(Lexpo/modules/print/PrintPDFRenderTask;)D

    move-result-wide v2

    iget-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p2}, Lexpo/modules/print/PrintPDFRenderTask;->access$getPrintAttributes(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintAttributes;

    move-result-object p2

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result p2

    int-to-double v4, p2

    mul-double/2addr v2, v4

    .line 92
    iget-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v4, v2

    double-to-int p1, v4

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p2, p1}, Lexpo/modules/print/PrintPDFRenderTask;->access$setNumberOfPages$p(Lexpo/modules/print/PrintPDFRenderTask;I)V

    .line 95
    iget-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p1}, Lexpo/modules/print/PrintPDFRenderTask;->access$getFileDescriptor$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p1}, Lexpo/modules/print/PrintPDFRenderTask;->access$getDocument$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintDocumentAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    new-array p2, v2, [Landroid/print/PageRange;

    const/4 v0, 0x0

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v2, p2, v0

    iget-object v0, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {v0}, Lexpo/modules/print/PrintPDFRenderTask;->access$getFileDescriptor$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iget-object v2, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {v2}, Lexpo/modules/print/PrintPDFRenderTask;->access$getPrintDocumentWriteCallback$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintDocumentAdapterWriteCallback;

    move-result-object v2

    check-cast v2, Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    goto :goto_1

    .line 98
    :cond_2
    iget-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p1}, Lexpo/modules/print/PrintPDFRenderTask;->access$getCallbacks$p(Lexpo/modules/print/PrintPDFRenderTask;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "callbacks"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    iget-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {p2}, Lexpo/modules/print/PrintPDFRenderTask;->access$getDocument$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintDocumentAdapter;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_4
    iget-object v0, p0, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;->this$0:Lexpo/modules/print/PrintPDFRenderTask;

    invoke-static {v0}, Lexpo/modules/print/PrintPDFRenderTask;->access$getNumberOfPages$p(Lexpo/modules/print/PrintPDFRenderTask;)I

    move-result v0

    invoke-virtual {p1, p2, v1, v0}, Lexpo/modules/print/PrintPDFRenderTask$Callbacks;->onRenderFinished(Landroid/print/PrintDocumentAdapter;Ljava/io/File;I)V

    :goto_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
