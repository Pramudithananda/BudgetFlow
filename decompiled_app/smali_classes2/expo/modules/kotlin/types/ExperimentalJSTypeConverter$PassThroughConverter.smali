.class public final Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;
.super Ljava/lang/Object;
.source "ReturnType.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PassThroughConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;",
        "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;",
        "",
        "()V",
        "convertToJS",
        "value",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
