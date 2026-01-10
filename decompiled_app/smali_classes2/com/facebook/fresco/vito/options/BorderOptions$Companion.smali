.class public final Lcom/facebook/fresco/vito/options/BorderOptions$Companion;
.super Ljava/lang/Object;
.source "BorderOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/BorderOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/BorderOptions$Companion;",
        "",
        "()V",
        "create",
        "Lcom/facebook/fresco/vito/options/BorderOptions;",
        "color",
        "",
        "width",
        "",
        "padding",
        "scaleDownInsideBorders",
        "",
        "options_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/facebook/fresco/vito/options/BorderOptions$Companion;IFFZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create(IFFZ)Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(IF)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create$default(Lcom/facebook/fresco/vito/options/BorderOptions$Companion;IFFZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object p1

    return-object p1
.end method

.method public final create(IFF)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create$default(Lcom/facebook/fresco/vito/options/BorderOptions$Companion;IFFZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object p1

    return-object p1
.end method

.method public final create(IFFZ)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 63
    new-instance v0, Lcom/facebook/fresco/vito/options/BorderOptions;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/options/BorderOptions;-><init>(IFFZ)V

    return-object v0
.end method
