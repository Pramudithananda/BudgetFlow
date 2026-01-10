.class public final Lexpo/modules/print/FilePrintResult;
.super Ljava/lang/Object;
.source "PrintResponse.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0008R&\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/print/FilePrintResult;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "uri",
        "",
        "numberOfPages",
        "",
        "base64",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getBase64$annotations",
        "()V",
        "getBase64",
        "()Ljava/lang/String;",
        "setBase64",
        "(Ljava/lang/String;)V",
        "getNumberOfPages$annotations",
        "getNumberOfPages",
        "()I",
        "setNumberOfPages",
        "(I)V",
        "getUri$annotations",
        "getUri",
        "setUri",
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
.field private base64:Ljava/lang/String;

.field private numberOfPages:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/print/FilePrintResult;-><init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lexpo/modules/print/FilePrintResult;->uri:Ljava/lang/String;

    .line 9
    iput p2, p0, Lexpo/modules/print/FilePrintResult;->numberOfPages:I

    .line 10
    iput-object p3, p0, Lexpo/modules/print/FilePrintResult;->base64:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 8
    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/print/FilePrintResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic getBase64$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getNumberOfPages$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUri$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBase64()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/print/FilePrintResult;->base64:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumberOfPages()I
    .locals 1

    .line 9
    iget v0, p0, Lexpo/modules/print/FilePrintResult;->numberOfPages:I

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/print/FilePrintResult;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final setBase64(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lexpo/modules/print/FilePrintResult;->base64:Ljava/lang/String;

    return-void
.end method

.method public final setNumberOfPages(I)V
    .locals 0

    .line 9
    iput p1, p0, Lexpo/modules/print/FilePrintResult;->numberOfPages:I

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lexpo/modules/print/FilePrintResult;->uri:Ljava/lang/String;

    return-void
.end method
