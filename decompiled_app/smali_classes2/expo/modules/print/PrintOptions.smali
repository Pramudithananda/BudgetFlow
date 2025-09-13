.class public final Lexpo/modules/print/PrintOptions;
.super Ljava/lang/Object;
.source "PrintOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001c\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002BK\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R(\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0018\u0012\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0019\u0010\u000e\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR&\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001e\u0010\u000e\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR&\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008!\u0010\u000e\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001dR(\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0018\u0012\u0004\u0008$\u0010\u000e\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017\u00a8\u0006\'"
    }
    d2 = {
        "Lexpo/modules/print/PrintOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "html",
        "",
        "uri",
        "width",
        "",
        "height",
        "orientation",
        "base64",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V",
        "getBase64$annotations",
        "()V",
        "getBase64",
        "()Z",
        "setBase64",
        "(Z)V",
        "getHeight$annotations",
        "getHeight",
        "()Ljava/lang/Integer;",
        "setHeight",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getHtml$annotations",
        "getHtml",
        "()Ljava/lang/String;",
        "setHtml",
        "(Ljava/lang/String;)V",
        "getOrientation$annotations",
        "getOrientation",
        "setOrientation",
        "getUri$annotations",
        "getUri",
        "setUri",
        "getWidth$annotations",
        "getWidth",
        "setWidth",
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
.field private base64:Z

.field private height:Ljava/lang/Integer;

.field private html:Ljava/lang/String;

.field private orientation:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lexpo/modules/print/PrintOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lexpo/modules/print/PrintOptions;->html:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lexpo/modules/print/PrintOptions;->uri:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lexpo/modules/print/PrintOptions;->width:Ljava/lang/Integer;

    .line 11
    iput-object p4, p0, Lexpo/modules/print/PrintOptions;->height:Ljava/lang/Integer;

    .line 12
    iput-object p5, p0, Lexpo/modules/print/PrintOptions;->orientation:Ljava/lang/String;

    .line 13
    iput-boolean p6, p0, Lexpo/modules/print/PrintOptions;->base64:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    const/4 p6, 0x0

    :cond_5
    move p7, p6

    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v0

    .line 7
    invoke-direct/range {p1 .. p7}, Lexpo/modules/print/PrintOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic getBase64$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getHeight$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getHtml$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getOrientation$annotations()V
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

.method public static synthetic getWidth$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBase64()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lexpo/modules/print/PrintOptions;->base64:Z

    return v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/print/PrintOptions;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHtml()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/print/PrintOptions;->html:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/print/PrintOptions;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/print/PrintOptions;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/print/PrintOptions;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setBase64(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lexpo/modules/print/PrintOptions;->base64:Z

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lexpo/modules/print/PrintOptions;->height:Ljava/lang/Integer;

    return-void
.end method

.method public final setHtml(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lexpo/modules/print/PrintOptions;->html:Ljava/lang/String;

    return-void
.end method

.method public final setOrientation(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lexpo/modules/print/PrintOptions;->orientation:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lexpo/modules/print/PrintOptions;->uri:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lexpo/modules/print/PrintOptions;->width:Ljava/lang/Integer;

    return-void
.end method
