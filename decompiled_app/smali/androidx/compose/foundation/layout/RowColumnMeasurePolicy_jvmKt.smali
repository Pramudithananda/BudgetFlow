.class public final Landroidx/compose/foundation/layout/RowColumnMeasurePolicy_jvmKt;
.super Ljava/lang/Object;
.source "RowColumnMeasurePolicy.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a!\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\u0080\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "initCause",
        "",
        "exception",
        "Ljava/lang/IllegalArgumentException;",
        "Lkotlin/IllegalArgumentException;",
        "cause",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "foundation-layout_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final initCause(Ljava/lang/IllegalArgumentException;Ljava/lang/Exception;)Ljava/lang/Throwable;
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method
