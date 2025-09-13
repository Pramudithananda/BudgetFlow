.class public final Lexpo/modules/print/PrintPDFRenderTask;
.super Ljava/lang/Object;
.source "PrintPDFRenderTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001#B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J$\u0010!\u001a\u00020\"2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/print/PrintPDFRenderTask;",
        "",
        "context",
        "Landroid/content/Context;",
        "options",
        "Lexpo/modules/print/PrintOptions;",
        "(Landroid/content/Context;Lexpo/modules/print/PrintOptions;)V",
        "DEFAULT_MEDIA_HEIGHT",
        "",
        "DEFAULT_MEDIA_WIDTH",
        "MILS_PER_INCH",
        "",
        "PIXELS_PER_INCH",
        "PIXELS_PER_MIL",
        "callbacks",
        "Lexpo/modules/print/PrintPDFRenderTask$Callbacks;",
        "document",
        "Landroid/print/PrintDocumentAdapter;",
        "fileDescriptor",
        "Landroid/os/ParcelFileDescriptor;",
        "numberOfPages",
        "outputFile",
        "Ljava/io/File;",
        "printAttributes",
        "Landroid/print/PrintAttributes;",
        "getPrintAttributes",
        "()Landroid/print/PrintAttributes;",
        "printDocumentWriteCallback",
        "Landroid/print/PrintDocumentAdapterWriteCallback;",
        "webView",
        "Landroid/webkit/WebView;",
        "webViewClient",
        "Landroid/webkit/WebViewClient;",
        "render",
        "",
        "Callbacks",
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
.field private final DEFAULT_MEDIA_HEIGHT:I

.field private final DEFAULT_MEDIA_WIDTH:I

.field private final MILS_PER_INCH:D

.field private final PIXELS_PER_INCH:I

.field private final PIXELS_PER_MIL:D

.field private callbacks:Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

.field private final context:Landroid/content/Context;

.field private document:Landroid/print/PrintDocumentAdapter;

.field private fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private numberOfPages:I

.field private final options:Lexpo/modules/print/PrintOptions;

.field private outputFile:Ljava/io/File;

.field private final printDocumentWriteCallback:Landroid/print/PrintDocumentAdapterWriteCallback;

.field private webView:Landroid/webkit/WebView;

.field private final webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/print/PrintOptions;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask;->options:Lexpo/modules/print/PrintOptions;

    const/16 p1, 0x48

    .line 20
    iput p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->PIXELS_PER_INCH:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 21
    iput-wide v0, p0, Lexpo/modules/print/PrintPDFRenderTask;->MILS_PER_INCH:D

    int-to-double p1, p1

    div-double/2addr p1, v0

    .line 22
    iput-wide p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->PIXELS_PER_MIL:D

    const/16 p1, 0x264

    .line 23
    iput p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->DEFAULT_MEDIA_WIDTH:I

    const/16 p1, 0x318

    .line 24
    iput p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->DEFAULT_MEDIA_HEIGHT:I

    .line 81
    new-instance p1, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;

    invoke-direct {p1, p0}, Lexpo/modules/print/PrintPDFRenderTask$webViewClient$1;-><init>(Lexpo/modules/print/PrintPDFRenderTask;)V

    check-cast p1, Landroid/webkit/WebViewClient;

    iput-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->webViewClient:Landroid/webkit/WebViewClient;

    .line 102
    new-instance p1, Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;

    invoke-direct {p1, p0}, Lexpo/modules/print/PrintPDFRenderTask$printDocumentWriteCallback$1;-><init>(Lexpo/modules/print/PrintPDFRenderTask;)V

    check-cast p1, Landroid/print/PrintDocumentAdapterWriteCallback;

    iput-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->printDocumentWriteCallback:Landroid/print/PrintDocumentAdapterWriteCallback;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lexpo/modules/print/PrintPDFRenderTask;)Lexpo/modules/print/PrintPDFRenderTask$Callbacks;
    .locals 0

    .line 19
    iget-object p0, p0, Lexpo/modules/print/PrintPDFRenderTask;->callbacks:Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    return-object p0
.end method

.method public static final synthetic access$getDocument$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintDocumentAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lexpo/modules/print/PrintPDFRenderTask;->document:Landroid/print/PrintDocumentAdapter;

    return-object p0
.end method

.method public static final synthetic access$getFileDescriptor$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 19
    iget-object p0, p0, Lexpo/modules/print/PrintPDFRenderTask;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public static final synthetic access$getNumberOfPages$p(Lexpo/modules/print/PrintPDFRenderTask;)I
    .locals 0

    .line 19
    iget p0, p0, Lexpo/modules/print/PrintPDFRenderTask;->numberOfPages:I

    return p0
.end method

.method public static final synthetic access$getOutputFile$p(Lexpo/modules/print/PrintPDFRenderTask;)Ljava/io/File;
    .locals 0

    .line 19
    iget-object p0, p0, Lexpo/modules/print/PrintPDFRenderTask;->outputFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getPIXELS_PER_MIL$p(Lexpo/modules/print/PrintPDFRenderTask;)D
    .locals 2

    .line 19
    iget-wide v0, p0, Lexpo/modules/print/PrintPDFRenderTask;->PIXELS_PER_MIL:D

    return-wide v0
.end method

.method public static final synthetic access$getPrintAttributes(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintAttributes;
    .locals 0

    .line 19
    invoke-direct {p0}, Lexpo/modules/print/PrintPDFRenderTask;->getPrintAttributes()Landroid/print/PrintAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPrintDocumentWriteCallback$p(Lexpo/modules/print/PrintPDFRenderTask;)Landroid/print/PrintDocumentAdapterWriteCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lexpo/modules/print/PrintPDFRenderTask;->printDocumentWriteCallback:Landroid/print/PrintDocumentAdapterWriteCallback;

    return-object p0
.end method

.method public static final synthetic access$setDocument$p(Lexpo/modules/print/PrintPDFRenderTask;Landroid/print/PrintDocumentAdapter;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->document:Landroid/print/PrintDocumentAdapter;

    return-void
.end method

.method public static final synthetic access$setNumberOfPages$p(Lexpo/modules/print/PrintPDFRenderTask;I)V
    .locals 0

    .line 19
    iput p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->numberOfPages:I

    return-void
.end method

.method private final getPrintAttributes()Landroid/print/PrintAttributes;
    .locals 8

    .line 50
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 51
    iget-object v1, p0, Lexpo/modules/print/PrintPDFRenderTask;->options:Lexpo/modules/print/PrintOptions;

    invoke-virtual {v1}, Lexpo/modules/print/PrintOptions;->getHtml()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 52
    iget v1, p0, Lexpo/modules/print/PrintPDFRenderTask;->DEFAULT_MEDIA_WIDTH:I

    .line 53
    iget v2, p0, Lexpo/modules/print/PrintPDFRenderTask;->DEFAULT_MEDIA_HEIGHT:I

    .line 54
    iget-object v3, p0, Lexpo/modules/print/PrintPDFRenderTask;->options:Lexpo/modules/print/PrintOptions;

    invoke-virtual {v3}, Lexpo/modules/print/PrintOptions;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 58
    :cond_0
    iget-object v3, p0, Lexpo/modules/print/PrintPDFRenderTask;->options:Lexpo/modules/print/PrintOptions;

    invoke-virtual {v3}, Lexpo/modules/print/PrintOptions;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 62
    :cond_1
    new-instance v3, Landroid/print/PrintAttributes$MediaSize;

    int-to-double v4, v1

    .line 65
    iget-wide v6, p0, Lexpo/modules/print/PrintPDFRenderTask;->PIXELS_PER_MIL:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v1

    int-to-double v4, v2

    .line 66
    iget-wide v6, p0, Lexpo/modules/print/PrintPDFRenderTask;->PIXELS_PER_MIL:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v2

    .line 62
    const-string v4, "id"

    const-string v5, "label"

    invoke-direct {v3, v4, v5, v1, v2}, Landroid/print/PrintAttributes$MediaSize;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 68
    iget-object v1, p0, Lexpo/modules/print/PrintPDFRenderTask;->options:Lexpo/modules/print/PrintOptions;

    invoke-virtual {v1}, Lexpo/modules/print/PrintOptions;->getOrientation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 69
    const-string v2, "landscape"

    if-ne v1, v2, :cond_2

    .line 70
    invoke-virtual {v3}, Landroid/print/PrintAttributes$MediaSize;->asLandscape()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    const-string v2, "asLandscape(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    .line 74
    :cond_2
    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 75
    sget-object v2, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 76
    new-instance v2, Landroid/print/PrintAttributes$Resolution;

    iget v3, p0, Lexpo/modules/print/PrintPDFRenderTask;->PIXELS_PER_INCH:I

    invoke-direct {v2, v4, v5, v3, v3}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    .line 78
    :cond_3
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final render(Ljava/io/File;Landroid/os/ParcelFileDescriptor;Lexpo/modules/print/PrintPDFRenderTask$Callbacks;)V
    .locals 6

    const-string v0, "callbacks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p3, p0, Lexpo/modules/print/PrintPDFRenderTask;->callbacks:Lexpo/modules/print/PrintPDFRenderTask$Callbacks;

    .line 35
    iput-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->outputFile:Ljava/io/File;

    .line 40
    :cond_0
    iget-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->options:Lexpo/modules/print/PrintOptions;

    invoke-virtual {p1}, Lexpo/modules/print/PrintOptions;->getHtml()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    move-object v2, p1

    .line 41
    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lexpo/modules/print/PrintPDFRenderTask;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->webView:Landroid/webkit/WebView;

    .line 42
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string p2, "getSettings(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->webView:Landroid/webkit/WebView;

    const/4 p2, 0x0

    const-string/jumbo p3, "webView"

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object v0, p0, Lexpo/modules/print/PrintPDFRenderTask;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45
    iget-object p1, p0, Lexpo/modules/print/PrintPDFRenderTask;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p2

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v3, "text/html; charset=utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
