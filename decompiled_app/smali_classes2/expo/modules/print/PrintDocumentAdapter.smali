.class public final Lexpo/modules/print/PrintDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintDocumentAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u0018\u00002\u00020\u0001B+\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ0\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J3\u0010\u0016\u001a\u00020\u00072\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u001cH\u0016\u00a2\u0006\u0002\u0010\u001dJ&\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/print/PrintDocumentAdapter;",
        "Landroid/print/PrintDocumentAdapter;",
        "context",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/Context;",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "",
        "uri",
        "",
        "(Ljava/lang/ref/WeakReference;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V",
        "jobName",
        "onLayout",
        "oldAttributes",
        "Landroid/print/PrintAttributes;",
        "newAttributes",
        "cancellationSignal",
        "Landroid/os/CancellationSignal;",
        "callback",
        "Landroid/print/PrintDocumentAdapter$LayoutResultCallback;",
        "extras",
        "Landroid/os/Bundle;",
        "onWrite",
        "pages",
        "",
        "Landroid/print/PageRange;",
        "destination",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/print/PrintDocumentAdapter$WriteResultCallback;",
        "([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V",
        "printFailed",
        "exception",
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
.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final jobName:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8zkybygBTwmq3ry11n-8WxE9K-A(Lexpo/modules/print/PrintDocumentAdapter;Landroid/print/PrintDocumentAdapter$WriteResultCallback;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/print/PrintDocumentAdapter;->onWrite$lambda$1(Lexpo/modules/print/PrintDocumentAdapter;Landroid/print/PrintDocumentAdapter$WriteResultCallback;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    iput-object p1, p0, Lexpo/modules/print/PrintDocumentAdapter;->context:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lexpo/modules/print/PrintDocumentAdapter;->continuation:Lkotlin/coroutines/Continuation;

    iput-object p3, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    .line 20
    const-string p1, "Printing"

    iput-object p1, p0, Lexpo/modules/print/PrintDocumentAdapter;->jobName:Ljava/lang/String;

    return-void
.end method

.method private static final onWrite$lambda$1(Lexpo/modules/print/PrintDocumentAdapter;Landroid/print/PrintDocumentAdapter$WriteResultCallback;Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :try_start_0
    iget-object v0, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lexpo/modules/print/PrintDocumentAdapter;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 38
    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    .line 39
    sget-object v3, Lexpo/modules/print/FileUtils;->INSTANCE:Lexpo/modules/print/FileUtils;

    invoke-virtual {v3, p2, p1, v2}, Lexpo/modules/print/FileUtils;->copyToOutputStream(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;Ljava/io/InputStream;)V

    .line 40
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v0, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    new-instance v0, Lexpo/modules/print/CannotLoadUriException;

    iget-object v1, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p2}, Lexpo/modules/print/CannotLoadUriException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    iget-object p2, p0, Lexpo/modules/print/PrintDocumentAdapter;->continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0, p1, v0, p2}, Lexpo/modules/print/PrintDocumentAdapter;->printFailed(Landroid/print/PrintDocumentAdapter$WriteResultCallback;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final printFailed(Landroid/print/PrintDocumentAdapter$WriteResultCallback;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/PrintDocumentAdapter$WriteResultCallback;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 69
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "oldAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newAttributes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cancellationSignal"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    return-void

    .line 64
    :cond_0
    new-instance p1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object p2, p0, Lexpo/modules/print/PrintDocumentAdapter;->jobName:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 65
    invoke-virtual {p4, p1, p2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 3

    const-string v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "destination"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cancellationSignal"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lexpo/modules/print/NullUriException;

    invoke-direct {p1}, Lexpo/modules/print/NullUriException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, p0, Lexpo/modules/print/PrintDocumentAdapter;->continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0, p4, p1, p2}, Lexpo/modules/print/PrintDocumentAdapter;->printFailed(Landroid/print/PrintDocumentAdapter$WriteResultCallback;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    return-void

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    new-instance p1, Ljava/lang/Thread;

    .line 45
    new-instance p3, Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p4, p2}, Lexpo/modules/print/PrintDocumentAdapter$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/print/PrintDocumentAdapter;Landroid/print/PrintDocumentAdapter$WriteResultCallback;Landroid/os/ParcelFileDescriptor;)V

    .line 29
    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    const-string p3, "data:"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p3, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    const-string p3, ";base64,"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p1, p3, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    :try_start_0
    sget-object p1, Lexpo/modules/print/FileUtils;->INSTANCE:Lexpo/modules/print/FileUtils;

    iget-object p3, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lexpo/modules/print/FileUtils;->decodeDataURI(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object p3, p1

    check-cast p3, Ljava/io/InputStream;

    .line 49
    sget-object v0, Lexpo/modules/print/FileUtils;->INSTANCE:Lexpo/modules/print/FileUtils;

    invoke-virtual {v0, p2, p4, p3}, Lexpo/modules/print/FileUtils;->copyToOutputStream(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;Ljava/io/InputStream;)V

    .line 50
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 52
    new-instance p2, Lexpo/modules/print/CannotLoadUriException;

    iget-object p3, p0, Lexpo/modules/print/PrintDocumentAdapter;->uri:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p3, p1}, Lexpo/modules/print/CannotLoadUriException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    iget-object p1, p0, Lexpo/modules/print/PrintDocumentAdapter;->continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0, p4, p2, p1}, Lexpo/modules/print/PrintDocumentAdapter;->printFailed(Landroid/print/PrintDocumentAdapter$WriteResultCallback;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lexpo/modules/print/InvalidUriException;

    const/4 p2, 0x1

    invoke-direct {p1, v2, p2, v2}, Lexpo/modules/print/InvalidUriException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, p0, Lexpo/modules/print/PrintDocumentAdapter;->continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0, p4, p1, p2}, Lexpo/modules/print/PrintDocumentAdapter;->printFailed(Landroid/print/PrintDocumentAdapter$WriteResultCallback;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    :goto_0
    return-void
.end method
